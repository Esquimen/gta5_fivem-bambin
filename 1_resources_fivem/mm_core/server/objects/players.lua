--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   16-04-2023 18:27:19
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 17:00:35
--]]

copCore.objects.players = {}

-- ----------------------------------------------------------------------------------- Permet de récupérer les infos d'un joueur sur FiveM
	-- Get player any identifier, available types: steam, license, xbl, ip, discord, live.
	function copCore.objects.players.getPlayerIdentity(type, source)
		local identifierCount = GetNumPlayerIdentifiers(source)
		for count = 0, identifierCount do
			local identifier = GetPlayerIdentifier(source, count)
			if identifier and string.find(identifier, type) then
				return identifier
			end
		end
		return nil

	end

-- ----------------------------------------------------------------------------------- On récupère l'ID et l'activation en DB d'un joueur
	function copCore.objects.players.getPlayerIdDB(playerLicense)
		-- Voir cette doc: https://github.com/overextended/oxmysql/issues/2
		-- Voir: https://overextended.github.io/docs/oxmysql/Usage/single
		
		local row  = exports.oxmysql:single_async("SELECT id, activate FROM cc_users WHERE license = ?", {playerLicense})
		--print(row.id)
		return row

	end