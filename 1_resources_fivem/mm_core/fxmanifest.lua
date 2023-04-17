fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Mathieu Mari <streaming@mathieumari.com>'
description 'Mode de base'
version '1.0.0'

-- ------------------------------------------------------------------------------------------- Côté serveur
	server_script {
		"server/core.lua",
        "server/events/*.lua",
		"server/classes/*.lua",
		"server/objects/*.lua"
	}

	server_exports {
		"getServerObject"
	}

-- ------------------------------------------------------------------------------------------- Côté client
	client_scripts{
		"client/core.lua",
        "client/events/*.lua"
	}

	client_exports {
		"getClientObject"
	}