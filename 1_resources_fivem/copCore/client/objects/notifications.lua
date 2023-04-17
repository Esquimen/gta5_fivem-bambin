--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   16-04-2023 18:27:19
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 20:51:34
--]]

copCore.objects.notifications = {}

-- ----------------------------------------------------------------------------------- Fx qui permet de faire une notification dans le jeu
	function copCore.objects.notifications.addNew(text)
		--print(text)

		Citizen.CreateThread(function()
			-- On attend que l'écran de chargement soit complètement chargé pour afficher la notification
			while not IsScreenFadedIn() do
				Citizen.Wait(0)
			end
			
			-- Affichage de la notification
			SetNotificationTextEntry("STRING")
			AddTextComponentString(text)
			DrawNotification(false, false)
			
		end)

	end
	--copCore.objects.notifications.addNew("~r~Chargement de copCore.")