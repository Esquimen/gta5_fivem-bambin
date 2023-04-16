-- ----------------------------------------------------------------------------------- Fx qui sauvegarde toute les x secondes la position du joueur
	function autoSavePlayerPosition()
		Citizen.CreateThread(function()
			Citizen.Wait(5000) -- TimeOut avant premier lancement
			while true do
				Citizen.Wait(5000)
				sendPlayerPosition()

			end
		end)

	end
	autoSavePlayerPosition() -- On init la fx

-- ----------------------------------------------------------------------------------- Fx qui lance la sauvegarde de la position auprès du serveur
	function sendPlayerPosition()
		-- ------------------------------------------- Récupération des datas
			local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
			local h = GetEntityHeading(GetPlayerPed(-1))

		-- ------------------------------------------- Envoi au serveur
			TriggerServerEvent("copCore:savePlayerPosition", x , y , z, h)

	end