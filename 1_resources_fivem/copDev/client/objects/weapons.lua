--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 22:46:25
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 23:02:37
--]]

-- Voir les armes du jeu: https://wiki.rage.mp/index.php?title=Weapons

copDev.objects.weapons = {}

-- ---------------------------------------------------------------------------------------------- Fx qui permet de charger une arme sur le joueur
	function copDev.objects.weapons.giveWeapon()
		-- ------------------------------------------------------------ Convertir le nom de l'arme en hash
			local weaponId = "weapon_rpg"
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

-- ---------------------------------------------------------------------------------------------- Fx qui permet d'enlever toutes les armes d'un joueur
	function copDev.objects.weapons.removeAllWeapons()
		-- arg[2] => true["Permet de supprimer toutes les armes du joueur"]; false["Supprime uniquement l'arme qui est en main"]
		RemoveAllPedWeapons(PlayerPedId(), true)
			
	end