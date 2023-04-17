--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 02:09:47
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 16:40:00
--]]

-- ----------------------------------------------------------------------------------- Event au moment de la connexion du joueur
	AddEventHandler("playerSpawned", function()
		--print("playerSpawned")
		TriggerServerEvent("copCore:events:yourPlayer:spawned-controlExistPlayer")

	end)
	--TriggerServerEvent("copCore:controlExistPlayer") -- Pour tester