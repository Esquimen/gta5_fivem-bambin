--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 18:42:20
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 23:57:24
--]]

-- Voir ici la liste des ID des blips disponibles: https://docs.fivem.net/docs/game-references/blips/

local displayBlips_bank = true
local displayBlips_atm = true
local displayBlips_hospitals = true
local displayBlips_policeStation = true
local displayBlips_foodStores = true

-- ----------------------------------------------------------------------------------------------------------------- Coordonnées
	-- ---------------------------------------------------------------------------------------- Banks
		local atms = {
			{x=-386.733, y=6045.953, z=31.501},
			{x=-284.037, y=6224.385, z=31.187},
			{x=-284.037, y=6224.385, z=31.187},
			{x=-135.165, y=6365.738, z=31.101},
			{x=-110.753, y=6467.703, z=31.784},
			{x=-94.9690, y=6455.301, z=31.784},
			{x=155.4300, y=6641.991, z=31.784},
			{x=174.6720, y=6637.218, z=31.784},
			{x=1703.138, y=6426.783, z=32.730},
			{x=1735.114, y=6411.035, z=35.164},
			{x=1702.842, y=4933.593, z=42.051},
			{x=1967.333, y=3744.293, z=32.272},
			{x=1821.917, y=3683.483, z=34.244},
			{x=1174.532, y=2705.278, z=38.027},
			{x=540.0420, y=2671.007, z=42.177},
			{x=2564.399, y=2585.100, z=38.016},
			{x=2558.683, y=349.6010, z=108.050},
			{x=2558.051, y=389.4817, z=108.660},
			{x=1077.692, y=-775.796, z=58.218},
			{x=1139.018, y=-469.886, z=66.789},
			{x=1168.975, y=-457.241, z=66.641},
			{x=1153.884, y=-326.540, z=69.245},
			{x=381.2827, y=323.2518, z=103.270},
			{x=236.4638, y=217.4718, z=106.840},
			{x=265.0043, y=212.1717, z=106.780},
			{x=285.2029, y=143.5690, z=104.970},
			{x=157.7698, y=233.5450, z=106.450},
			{x=-164.568, y=233.5066, z=94.919},
			{x=-1827.04, y=785.5159, z=138.020},
			{x=-1409.39, y=-99.2603, z=52.473},
			{x=-1205.35, y=-325.579, z=37.870},
			{x=-1215.64, y=-332.231, z=37.881},
			{x=-2072.41, y=-316.959, z=13.345},
			{x=-2975.72, y=379.7737, z=14.992},
			{x=-2962.60, y=482.1914, z=15.762},
			{x=-2955.70, y=488.7218, z=15.486},
			{x=-3044.22, y=595.2429, z=7.595},
			{x=-3144.13, y=1127.415, z=20.868},
			{x=-3241.10, y=996.6881, z=12.500},
			{x=-3241.11, y=1009.152, z=12.877},
			{x=-1305.40, y=-706.240, z=25.352},
			{x=-538.225, y=-854.423, z=29.234},
			{x=-711.156, y=-818.958, z=23.768},
			{x=-717.614, y=-915.880, z=19.268},
			{x=-526.566, y=-1222.90, z=18.434},
			{x=-256.831, y=-719.646, z=33.444},
			{x=-203.548, y=-861.588, z=30.205},
			{x=112.4102, y=-776.162, z=31.427},
			{x=112.9290, y=-818.710, z=31.386},
			{x=119.9000, y=-883.826, z=31.191},
			{x=149.4551, y=-1038.95, z=29.366},
			{x=-846.304, y=-340.402, z=38.687},
			{x=-1204.35, y=-324.391, z=37.877},
			{x=-1216.27, y=-331.461, z=37.773},
			{x=-56.1935, y=-1752.53, z=29.452},
			{x=-261.692, y=-2012.64, z=30.121},
			{x=-273.001, y=-2025.60, z=30.197},
			{x=314.187, y=-278.621, z=54.170},
			{x=-351.534, y=-49.529, z=49.042},
			{x=24.589, y=-946.056, z=29.357},
			{x=-254.112, y=-692.483, z=33.616},
			{x=-1570.197, y=-546.651, z=34.955},
			{x=-1415.909, y=-211.825, z=46.500},
			{x=-1430.112, y=-211.014, z=46.500},
			{x=33.232, y=-1347.849, z=29.497},
			{x=129.216, y=-1292.347, z=29.269},
			{x=287.645, y=-1282.646, z=29.659},
			{x=289.012, y=-1256.545, z=29.440},
			{x=295.839, y=-895.640, z=29.217},
			{x=1686.753, y=4815.809, z=42.008},
			{x=-302.408, y=-829.945, z=32.417},
			{x=5.134, y=-919.949, z=29.557},
		}

		local banks = {
			{x=150.266, y=-1040.203, z=29.374},
			{x=-1212.980, y=-330.841, z=37.787},
			{x=-2962.582, y=482.627, z=15.703},
			{x=-112.202, y=6469.295, z=31.626},
			{x=314.187, y=-278.621, z=54.170},
			{x=-351.534, y=-49.529, z=49.042},
			{x=241.727, y=220.706, z=106.286},
		}

	-- ---------------------------------------------------------------------------------------- Hospitals
		local hospitals = {
			{x=300.6, y=-1438.5, z=29.8},
			{x=1837.3, y=3672.5, z=34.3},
			{x=-248.2, y=6332.5, z=32.4}
		}

	-- ---------------------------------------------------------------------------------------- Postes de police
		local policeStations = {
			{name="Mission Row Police Station", id=60, x=426.276, y=-982.633, z=30.710},
			{name="Rockford Hills Police Station", id=60, x=-561.287, y=-132.919, z=38.040},
			{name="Vespucci Police Station", id=60, x=-1090.729, y=-809.022, z=19.268},
			{name="Davis Police Station", id=60, x=359.434, y=-1584.491, z=29.291},
			{name="La Mesa Police Station", id=60, x=826.165, y=-1290.051, z=28.240},
			{name="Vinewood Police Station", id=60, x=637.635, y=1.026, z=82.786},
			{name="Paleto Bay Police Station", id=60, x=-442.766, y=6014.461, z=31.716},
		}

	-- ---------------------------------------------------------------------------------------- FoodStores
		local foodStores_superMarket  = {
			{x=25.745, y=-1345.262, z=29.497},
		}

		local foodStores_burgerShot  = {
			{x=-1196.651, y=-899.878, z=14.001},

		}

-- ----------------------------------------------------------------------------------------------------------------- Affichage de tous les blips sur la map
	Citizen.CreateThread(function()
		-- --------------------------------------------- Banks
			if(displayBlips_bank == true) then
				for _, item in pairs(banks) do
					item.name = "Banque | Banque"
					item.idBlip = 605
					item.idBlipColor = 82
					createBlipForMap(item)
				end

			end

		-- --------------------------------------------- ATM
			if(displayBlips_atm == true) then
				for _, item in pairs(atms) do
					item.name = "Banque | Distributeur de billets"
					item.idBlip = 272
					item.idBlipColor = 82
					createBlipForMap(item)
				end
			end

		-- --------------------------------------------- Hospitals
			if(displayBlips_hospitals == true) then
				for _, item in pairs(hospitals) do
					item.name = "Hôpital"
					item.idBlip = 428
					item.idBlipColor = 2
					createBlipForMap(item)
				end
			end

		-- --------------------------------------------- Police
			if(displayBlips_policeStation == true) then
				for _, item in pairs(policeStations) do
					item.name = "Police"
					item.idBlip = 60
					item.idBlipColor = 29
					createBlipForMap(item)
				end
			end
			
		-- --------------------------------------------- foodStores
			if(displayBlips_foodStores == true) then
				-- ------------------------ 24 / 7
					for _, item in pairs(foodStores_superMarket) do
						item.name = "Shop | 24/7 SuperMarket"
						item.idBlip = 628
						item.idBlipColor = 3
						createBlipForMap(item)
					end

				-- ------------------------ Burger shot
					for _, item in pairs(foodStores_burgerShot) do
						item.name = "Shop | Burger Shot"
						item.idBlip = 628
						item.idBlipColor = 3
						createBlipForMap(item)
					end
					
			end

	end)

-- ----------------------------------------------------------------------------------------------------------------- Création d'un marqueur pour la map
	function createBlipForMap(item)
		Citizen.CreateThread(function()
			item.blip = AddBlipForCoord(item.x, item.y, item.z)
			SetBlipSprite(item.blip, item.idBlip)
			SetBlipAsShortRange(item.blip, true)
			SetBlipColour(item.blip, item.idBlipColor)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(item.name)
			EndTextCommandSetBlipName(item.blip)
		end)
		
	end