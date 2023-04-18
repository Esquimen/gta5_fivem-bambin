--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   18-04-2023 00:32:59
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-18 00:50:05
--]]

copDev.objects.player = {}

-- ---------------------------------------------------------------------------------------------- Fx qui permet de me déplacer sur de nouvelles coordonnées
	function copDev.objects.player.updPosition()
		local coords = {name="La Mesa Police Station", id=60, x=826.165, y=-1290.051, z=28.240}
		SetEntityCoords(GetPlayerPed(-1), coords.x, coords.y, coords.z, 1, 0, 0, 1)
		
	end