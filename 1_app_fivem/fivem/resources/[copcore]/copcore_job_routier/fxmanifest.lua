fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'streaming@mathieumari.com'
description 'Job de routier'
version '1.0.0'

-- ------------------------------------------------------------------------------------------- Côté serveur
	server_script {
		"server/core.lua",
		--"server/*.lua"
	}

-- ------------------------------------------------------------------------------------------- Côté client
	client_scripts{
		"client/*.lua"
	}