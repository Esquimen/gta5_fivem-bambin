--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 02:09:47
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 17:28:45
--]]

-- ----------------------------------------------------------------------------------- Event au moment de la connexion du joueur
	AddEventHandler("playerSpawned", function()
		--print("playerSpawned")
		TriggerServerEvent("copCore:events:yourPlayer:spawned-controlExistPlayer")

	end)
	--TriggerServerEvent("copCore:controlExistPlayer") -- Pour tester

-- ----------------------------------------------------------------------------------- Retour du serveur qui applique la dernière connexion connue du joueur
	RegisterNetEvent("copCore:events:yourPlayer:spawned-applyLastPosition")
	AddEventHandler("copCore:events:yourPlayer:spawned-applyLastPosition", function(x, y, z)
		SetEntityCoords(GetPlayerPed(-1), x, y, z, 1, 0, 0, 1)
	end)