--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   16-04-2023 18:27:19
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 17:00:09
--]]

-- Déclaration de la variable pour stocker la dernière position
local lastPosX, lastPosY, lastPosZ, lastHeading = nil, nil, nil, nil
local timeOut = 5000

-- ----------------------------------------------------------------------------------- Fx qui sauvegarde la position du joueur si elle a changé
	function savePlayerPosition()
		Citizen.CreateThread(function()
			Citizen.Wait(timeOut) -- TimeOut avant premier lancement
				while true do
					Citizen.Wait(timeOut)

					-- ----------------------------------------------------------- Récupération des coordonnées et de l'orientation du joueur
						local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
						local h = GetEntityHeading(GetPlayerPed(-1))

					-- ----------------------------------------------------------- Selon si la position du joueur a changée
						if x ~= lastPosX or y ~= lastPosY or z ~= lastPosZ or h ~= lastHeading then
							lastPosX, lastPosY, lastPosZ, lastHeading = x, y, z, h

							-- Envoi de la nouvelle position au serveur
							TriggerServerEvent("copCore:events:yourPlayer:position-savePosition", x, y, z, h)

				end
			end
		end)
	end

	-- Initialisation de la fonction pour sauvegarder la position
	savePlayerPosition()