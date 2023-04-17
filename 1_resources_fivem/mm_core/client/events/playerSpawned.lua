--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 02:09:47
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 15:56:45
--]]

-- ----------------------------------------------------------------------------------- Event au moment de la connexion du joueur
	AddEventHandler("playerSpawned", function()
		--print("playerSpawned")
		TriggerServerEvent("copCore:controlExistPlayer")

	end)
	--TriggerServerEvent("copCore:controlExistPlayer") -- Pour tester

-- ----------------------------------------------------------------------------------- On applique la dernière position connue au joueur
	RegisterNetEvent("copCore:applyPositionPlayer")
	AddEventHandler("copCore:applyPositionPlayer", function(x, y, z)
		SetEntityCoords(GetPlayerPed(-1), x, y, z, 1, 0, 0, 1)
	end)

	copCore.objects.notifications.addNew("~r~Could not load the vehicle model in time, a crash was prevented.")