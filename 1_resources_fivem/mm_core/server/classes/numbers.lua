copCore.classes.numbers = {}

-- ----------------------------------------------------------------------------------- Permet d'arrondir un nombre
	function copCore.classes.numbers.round(nbre, nbreDecimals)
		local mult = 10^(nbreDecimals or 0)
		return math.floor(nbre * mult + 0.5) / mult
	end