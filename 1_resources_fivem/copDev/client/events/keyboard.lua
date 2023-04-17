--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 22:18:04
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-18 00:14:13
--]]

-- Voir la liste des touches: https://docs.fivem.net/docs/game-references/controls/#controls

-- ----------------------------------------------------------------------------------------------------------------- Écoute de l'event keydown
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		-- ------------------------------------------------------------------------- Selon la touche
		if IsControlJustReleased(0, 245) then -- [T]
			--print("Touche T")
			copDev.objects.cars.loadCar()
			copDev.objects.cars.deleteNearbyVehicles(2)

		elseif IsControlJustReleased(0, 246) then -- [Y]
			copDev.objects.weapons.removeAllWeapons()
			--copDev.objects.weapons.giveWeapon()
			copDev.objects.weapons.giveAllWeapons()

		elseif IsControlJustReleased(0, 303) then -- [u]
			copDev.objects.weather.changeWeather()
		end

	end
end)