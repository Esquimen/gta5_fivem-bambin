local copCore = exports["copcore"]:getServerObject()

-- ----------------------------------------------------------------------------------- Event au moment de la connexion du joueur
	RegisterNetEvent("insertLogConnection")
	AddEventHandler("insertLogConnection", function()
		local player = source
		local license = copCore.objects.players.getPlayerIdentity("license", player)

		-- --------------------------------------------- Enregistrement en DB
			exports.oxmysql:query("INSERT INTO cc_users_infos (lastname, firstname) VALUES (?, ?)", {license, license})

	end)