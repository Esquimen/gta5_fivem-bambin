--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   16-04-2023 18:27:19
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 17:01:23
--]]

copCore.objects.notifications = {}

-- ----------------------------------------------------------------------------------- Fx qui permet de faire une notification dans le jeu
	function copCore.objects.notifications.addNew(text)
		SetNotificationTextEntry("STRING")
		AddTextComponentSubstringPlayerName(text)
		DrawNotification(false, false)
	end