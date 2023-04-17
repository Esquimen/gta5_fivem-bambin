--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 16:04:09
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 16:40:22
--]]

-- ----------------------------------------------------------------------------------------------------------------- Écoute de la touche du clavier [F6]
    RegisterNetEvent("copCore:events:yourPlayer:keyboard-f6")
    AddEventHandler("copCore:events:yourPlayer:keyboard-f6", function()
        DropPlayer(source, "Déconnexion")
    end)