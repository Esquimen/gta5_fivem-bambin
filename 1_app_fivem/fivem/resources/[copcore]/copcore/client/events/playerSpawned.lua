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