copCore.objects.notifications = {}

-- ----------------------------------------------------------------------------------- Fx qui permet de faire une notification dans le jeu
	function copCore.objects.notifications.addNew(text)
		SetNotificationTextEntry("STRING")
		AddTextComponentSubstringPlayerName(text)
		DrawNotification(false, false)
	end