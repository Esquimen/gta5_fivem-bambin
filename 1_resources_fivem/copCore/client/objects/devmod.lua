--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 20:54:14
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 21:47:01
--]]

copCore.objects.devmod = {}

-- ---------------------------------------------------------------------------------------------- Fx qui permet de charger un véhicule
function copCore.objects.devmod.loadCar()
	-- ------------------------------------------------------------------------------- Récupération de la position du joueur
		local ped = GetPlayerPed(-1)
		local x,y,z = table.unpack(GetEntityCoords(ped))

	-- ------------------------------------------------------------------------------- Choix du véhicule et conversion en hash GTA V du véhicule
		local veh = "scorcher"
		if veh == nil then veh = "adder" end
		local vehiclehash = GetHashKey(veh)

	-- ------------------------------------------------------------------------------- Demande de chargement du véhicule
		RequestModel(vehiclehash)

	-- ------------------------------------------------------------------------------- Création du thread
		Citizen.CreateThread(function()
			-- --------------------------------------------------- Attente
				local waiting = 0
				while not HasModelLoaded(vehiclehash) do
					copCore.objects.notifications.addNew("~r~Chargement du véhicule.")
					waiting = waiting + 100
					Citizen.Wait(100)

					if waiting > 5000 then
						copCore.objects.notifications.addNew("~r~Could not load the vehicle model in time, a crash was prevented.")
						break
					end
				end

			-- --------------------------------------------------- Création du nouveau véhicule
				local vehicle = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(ped)+90, 1, 0)

			-- --------------------------------------------------- Supprime le véhicule précédent
				if DoesEntityExist(copCore.objects.devmod.lastVehicle) then
					DeleteEntity(copCore.objects.devmod.lastVehicle)
				end
				copCore.objects.devmod.lastVehicle = vehicle

			-- --------------------------------------------------- On met son joueur dans le véhicule
				TaskWarpPedIntoVehicle(ped, vehicle, -1)

			-- --------------------------------------------------- Libération de la mémoire vive de ce véhicule
				SetModelAsNoLongerNeeded(vehiclehash)
			
		end)
	
end

-- ---------------------------------------------------------------------------------------------- Fx qui permet de supprimer les véhicules autour de moi
	-- radius est exprimé en mètres
	function copCore.objects.devmod.deleteNearbyVehicles(radius)
		-- --------------------------------------------------- Récupère la position du joueur
			local playerPed = PlayerPedId()
			local playerCoords = GetEntityCoords(playerPed)
	
		-- --------------------------------------------------- Parcourt tous les véhicules du jeu
			local vehiclePool = GetGamePool('CVehicle')
			for i = 1, #vehiclePool do
				local vehicle = vehiclePool[i]
				
				-- Vérifie si le véhicule est proche du joueur
				local vehicleCoords = GetEntityCoords(vehicle)
				local distance = #(playerCoords - vehicleCoords)
				if distance <= radius then
					-- Supprime les occupants du véhicule
					for seat = -1, GetVehicleMaxNumberOfPassengers(vehicle) do
						local passenger = GetPedInVehicleSeat(vehicle, seat)
						if DoesEntityExist(passenger) then
							DeleteEntity(passenger)
						end
					end
	
					-- Supprime le véhicule
					DeleteEntity(vehicle)
				end
			end
			
	end