--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   16-04-2023 18:27:19
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 17:00:13
--]]

-- ----------------------------------------------------------------------------------- Fx qui lance la sauvegarde de la position auprès du serveur
	RegisterNetEvent("copCore:events:yourPlayer:position-savePosition")
	AddEventHandler("copCore:events:yourPlayer:position-savePosition", function(x , y , z, h)
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