--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 22:46:25
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-18 00:20:00
--]]

-- Voir les armes du jeu: https://wiki.rage.mp/index.php?title=Weapons

-- Liste des armes du jeu
local weapons = {
	"WEAPON_UNARMED", "WEAPON_KNIFE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB",
	"WEAPON_CROWBAR", "WEAPON_PISTOL", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50", "WEAPON_MICROSMG",
	"WEAPON_SMG", "WEAPON_ASSAULTSMG", "WEAPON_ASSAULTRIFLE", "WEAPON_CARBINERIFLE", "WEAPON_ADVANCEDRIFLE", 
	"WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_PUMPSHOTGUN", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_ASSAULTSHOTGUN",
	"WEAPON_BULLPUPSHOTGUN", "WEAPON_STUNGUN", "WEAPON_SNIPERRIFLE", "WEAPON_HEAVYSNIPER", "WEAPON_REMOTESNIPER",
	"WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_STINGER", "WEAPON_MINIGUN",
	"WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_SMOKEGRENADE", "WEAPON_BZGAS", "WEAPON_MOLOTOV", "WEAPON_FIREEXTINGUISHER",
	"WEAPON_PETROLCAN", "WEAPON_FLARE", "WEAPON_BALL", "WEAPON_SNOWBALL", "WEAPON_PROXMINE", "WEAPON_PIPEBOMB"
}

copDev.objects.weapons = {}

-- ---------------------------------------------------------------------------------------------- Fx qui permet de charger une arme sur le joueur
	function copDev.objects.weapons.giveWeapon()
		-- ------------------------------------------------------------ Convertir le nom de l'arme en hash
			local weaponId = "weapon_firework"
			local weaponHash = GetHashKey(weaponId)

		-- ------------------------------------------------------------ Charger l'arme
			RequestWeaponAsset(weaponHash)
			while not HasWeaponAssetLoaded(weaponHash) do
				Wait(1)
			end

		-- ------------------------------------------------------------ Ajouter l'arme au joueur
			GiveWeaponToPed(PlayerPedId(), weaponHash, 250, false, true)

		-- ------------------------------------------------------------ Retirer l'arme de la mémoire
			RemoveWeaponAsset(weaponHash)
			
	end

-- ---------------------------------------------------------------------------------------------- Permet de donner toutes les armes disponibles du jeu au joueur
	function copDev.objects.weapons.giveAllWeapons()
		-- ------------------------------------------------------------ On boucle toutes les armes pour les ajoutées au joueur
			for i = 1, #weapons do
				-- -------------------------------- Convertir le nom de l'arme en hash
					local weaponHash = GetHashKey(weapons[i])

				-- -------------------------------- Charger l'arme
					RequestWeaponAsset(weaponHash)
					while not HasWeaponAssetLoaded(weaponHash) do
						Citizen.Wait(1)
					end

				-- -------------------------------- Si c'est la dernière arme de la liste
					if i == #weapons then
						GiveWeaponToPed(PlayerPedId(), weaponHash, 250, false, true)
					else
						GiveWeaponToPed(PlayerPedId(), weaponHash, 250, false, false)
					end
				
				-- -------------------------------- Retirer l'arme de la mémoire
					RemoveWeaponAsset(weaponHash)
				
			end

	end

-- ---------------------------------------------------------------------------------------------- Fx qui permet d'enlever toutes les armes d'un joueur
	function copDev.objects.weapons.removeAllWeapons()
		-- arg[2] => true["Permet de supprimer toutes les armes du joueur"]; false["Supprime uniquement l'arme qui est en main"]
		RemoveAllPedWeapons(PlayerPedId(), true)
			
	end