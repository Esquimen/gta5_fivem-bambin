--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   16-04-2023 22:48:46
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 16:03:20
--]]

-- ----------------------------------------------------------------------------------- Contrôle du joueur au moment de sa connexion
	RegisterNetEvent("copCore:controlExistPlayer")
	AddEventHandler("copCore:controlExistPlayer", function()
		local player = source
		local license = copCore.objects.players.getPlayerIdentity("license", player)
		local playerIdDB = copCore.objects.players.getPlayerIdDB(license)
		--print(playerIdDB.id)

		 -- ------------------------------------- Si le joueur existe
			if playerIdDB then
				--print("Le joueur existe")

				-- ------------------------ Si le joueur est activé ou non
					local activate = playerIdDB.activate
					--print(activate)
					if activate == 0 then -- Joueur banni
						DropPlayer(player, "You are banned from this server !")

					else -- Joueur autorisé
						-- ------------------------ Récupération des dernières coordonnées connues du joueur
							local coords = exports.oxmysql:prepare_async("SELECT * FROM cc_users_last_position WHERE user_id = ?", {playerIdDB.id})
							if coords then
								--print(coords.x, coords.y, coords.z)
								if coords.x then
									TriggerClientEvent("copCore:applyPositionPlayer", player, coords.x, coords.y, coords.z)
								end

							end

					end

			else
				--print("Le joueur n'existe pas")

				-- ------------------------ Enregistrement du joueur en DB
					-- Voir: https://overextended.github.io/docs/oxmysql/Usage/insert
					local newPlayerIdDB = exports.oxmysql:insert_async(
						'INSERT INTO cc_users (license, datetime_create, activate) VALUES (?, NOW(), ?)', 
						{license, 1}
					)
					--print(newPlayerIdDB)

					exports.oxmysql:insert_async(
						'INSERT INTO cc_users_last_position (user_id) VALUES (?)', 
						{newPlayerIdDB}
					)

			end

	end)