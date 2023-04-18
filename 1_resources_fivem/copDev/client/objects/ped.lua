--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   18-04-2023 00:50:10
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-18 01:59:58
--]]

copDev.objects.thisPed = {}

-- ---------------------------------------------------------------------------------------------- Fx qui charge un zombie
	function copDev.objects.thisPed.spawnZombiePed()
		-- ------------------------------------------------------------ Création du ped
			local models = {"u_m_y_prisoner_01", "u_m_y_zombie_01"}
			local models = {"u_m_y_corpse_01"}
			local model = models[math.random(#models)]
			RequestModel(model)
			while not HasModelLoaded(model) do
				Wait(1)
			end
			local playerPed = PlayerPedId()
			local playerCoords = GetEntityCoords(playerPed)
			local safeCoords = GetSafeCoordForPed(playerCoords.x + math.random(-50, 50), playerCoords.y + math.random(-50, 50), playerCoords.z, true, 16)
			local zombiePed = CreatePed(4, model, playerCoords + vector3(0, 5, 0), GetEntityHeading(playerPed) - 180, true, false)

		-- Ajout d'un effet d'apparence de sang pour le zombie
		-- Voir cette liste: https://docs.fivem.net/docs/game-references/ped-models/
		local damagePack = "BigHitByVehicle"
		local damage = "Blood"
		ApplyPedDamagePack(zombiePed, damagePack, 0.0, 0.0, damage)
		
		-- Changement de la démarche du zombie
		--TaskGoStraightToCoord(zombiePed, playerCoords, 1.0, -1, 0.0, 0.0)

		-- Charge l'animation de marche alternative pour le ped
		RequestAnimSet("move_m@drunk@verydrunk")
		while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
		Wait(1)
		end
		SetPedAlternateMovementAnim(zombiePed, "move_m@drunk@verydrunk", "verydrunk")

		-- Définit la durée de l'animation
		SetPedMovementClipset(zombiePed, "move_m@drunk@verydrunk", 0.25)

		-- Fait marcher le zombie de manière aléatoire
		TaskWanderStandard(zombiePed, 1.0, 10)

		-- ------------------------------------------------------------ Ajout de l'agressivité du zombie
		-- SetPedCombatAttributes(zombiePed, 46, true)
		-- SetPedCombatAttributes(zombiePed, 1, true)
		-- SetPedCombatAbility(zombiePed, 100)
		-- SetPedFleeAttributes(zombiePed, 0, 0)
		-- SetPedAlertness(zombiePed, 3)
		-- SetPedCombatRange(zombiePed, 0)

		-- ------------------------------------------------------------ Définition du joueur comme cible du zombie
			--TaskCombatPed(zombiePed, playerPed, 0, 16)

	end