--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 15:56:32
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 16:40:12
--]]

-- Voir la liste des touches: https://docs.fivem.net/docs/game-references/controls/#controls

-- ----------------------------------------------------------------------------------------------------------------- Écoute de l'event keydown
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		
		if IsControlJustReleased(0, 167) then -- Vérifie si la touche F6 a été relâchée
			TriggerServerEvent('copCore:events:yourPlayer:keyboard-f6') -- Envoie un événement au serveur pour signaler la déconnexion
		end
		
	end
end)