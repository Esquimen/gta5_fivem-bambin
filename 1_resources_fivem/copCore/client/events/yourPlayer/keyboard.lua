--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 15:56:32
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 21:48:22
--]]

-- Voir la liste des touches: https://docs.fivem.net/docs/game-references/controls/#controls

-- ----------------------------------------------------------------------------------------------------------------- Écoute de l'event keydown
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		-- ------------------------------------------------------------------------- Selon la touche
		if IsControlJustReleased(0, 167) then -- [F6]
			TriggerServerEvent('copCore:events:yourPlayer:keyboard-f6') -- Envoie un événement au serveur pour signaler la déconnexion

		elseif IsControlJustReleased(0, 245) then -- [T]
			--print("Touche T")
			copCore.objects.devmod.loadCar()
			copCore.objects.devmod.deleteNearbyVehicles(2)
			
		end

	end
end)