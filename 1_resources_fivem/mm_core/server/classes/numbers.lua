--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 14:09:54
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 17:01:10
--]]

copCore.classes.numbers = {}

-- ----------------------------------------------------------------------------------- Permet d'arrondir un nombre
	function copCore.classes.numbers.round(nbre, nbreDecimals)
		local mult = 10^(nbreDecimals or 0)
		return math.floor(nbre * mult + 0.5) / mult
	end