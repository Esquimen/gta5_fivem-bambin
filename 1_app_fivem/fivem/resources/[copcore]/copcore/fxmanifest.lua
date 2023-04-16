fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'streaming@mathieumari.com'
description 'Mode de base'
version '1.0.0'

-- ------------------------------------------------------------------------------------------- Côté serveur
	server_script {
		"server/core.lua",
		"server/classes/*.lua",
		"server/events/*.lua",
		"server/objects/*.lua"
		
		--"server/*.lua"
	}

	server_exports {
		"getServerObject"
	}

-- ------------------------------------------------------------------------------------------- Côté client
	client_scripts{
		"server/core.lua",
		"server/objects/*.lua"
		--"client/events/*.lua"
	}

	client_exports {
		"getClientObject"
	}