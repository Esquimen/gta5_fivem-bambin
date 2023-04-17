fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Mathieu Mari <streaming@mathieumari.com>'
description 'Mode de base'
version '1.0.0'

-- ------------------------------------------------------------------------------------------- Côté serveur
	server_script {
        "server/events/*.lua",
	}

	server_exports {
		"getServerObject"
	}

-- ------------------------------------------------------------------------------------------- Côté client
	client_scripts{
        "client/events/*.lua"
	}

	client_exports {
		"getClientObject"
	}