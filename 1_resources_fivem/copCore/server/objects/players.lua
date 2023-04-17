--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   16-04-2023 18:27:19
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 17:15:18
--]]

copCore.objects.players = {}

-- Table pour stocker les correspondances playerLicense et id de la base de données
copCore.objects.players.playerIds = {}

-- ------------------------------------------------------------------------------------------------------------------------ Permet de récupérer les infos d'un joueur sur FiveM
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

-- ------------------------------------------------------------------------------------------------------------------------ On récupère l'ID et l'activation en DB d'un joueur
	function copCore.objects.players.getPlayerIdDB(playerLicense)
		-- Voir cette doc: https://github.com/overextended/oxmysql/issues/2
		-- Voir: https://overextended.github.io/docs/oxmysql/Usage/single

		-- ----------------------------------------------------------------- On regarde si on a déjà l'id en mémoire pour cette playerLicense
			local playerId = copCore.objects.players.playerIds[playerLicense]
			--print(playerId)
			if playerId then
				return {id = playerId, activate = true} -- On renvoie l'id en mémoire
			end

		-- ----------------------------------------------------------------- Sinon on va chercher l'id en base de données
			local row = exports.oxmysql:single_async("SELECT id, activate FROM cc_users WHERE license = ?", {playerLicense})
			-- On stocke la correspondance playerLicense et id en mémoire
			if row.id then
				copCore.objects.players.playerIds[playerLicense] = row.id
			end
		
		return row

	end