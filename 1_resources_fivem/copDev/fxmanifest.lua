--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   16-04-2023 22:36:18
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 22:33:10
--]]

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Mathieu Mari <streaming@mathieumari.com>'
description 'Mode pour le DEV'
version '1.0.0'

-- ------------------------------------------------------------------------------------------- Côté serveur
	server_script {

	}

	server_exports {

	}

-- ------------------------------------------------------------------------------------------- Côté client
	client_scripts{
		"client/core.lua",
		"client/events/*.lua",
		"client/objects/*.lua"
	}

	client_exports {
		"getClientObject"
	}