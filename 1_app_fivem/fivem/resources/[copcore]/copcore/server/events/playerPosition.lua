-- ----------------------------------------------------------------------------------- Fx qui lance la sauvegarde de la position auprès du serveur
	RegisterNetEvent("copCore:savePlayerPosition")
	AddEventHandler("copCore:savePlayerPosition", function(x , y , z, h)
		-- ------------------------------------------- On arrondi les datas
			x = copCore.classes.numbers.round(x, 3)
			y = copCore.classes.numbers.round(y, 3)
			z = copCore.classes.numbers.round(z, 3)
			h = copCore.classes.numbers.round(h, 3)

		-- ------------------------------------------- Récupération des infos du joueur
			local player = source
			local license = copCore.objects.players.getPlayerIdentity("license", player)
			local playerIdDB = copCore.objects.players.getPlayerIdDB(license)

		-- ------------------------------------------- Update en DB
			exports.oxmysql:update_async(
				'UPDATE cc_users_last_position SET x = ?, y = ?, z = ?, h = ?, datetime_upd = NOW() WHERE user_id = ?', 
				{x, y, z, h, playerIdDB.id}
			)

	end)