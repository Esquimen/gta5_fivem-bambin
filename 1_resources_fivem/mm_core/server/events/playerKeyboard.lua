--[[
--@author: Mathieu MARI <contact@mathieumari.com>
--@date:   17-04-2023 16:04:09
--@lastModifiedBy:   Mathieu MARI <contact@mathieumari.com>
--@lastModifiedTime: 2023-04-17 16:14:36
--]]

-- ----------------------------------------------------------------------------------------------------------------- Écoute de la touche du clavier [F6]
    RegisterNetEvent("copCore:keydownF6")
    AddEventHandler("copCore:keydownF6", function()
        DropPlayer(source, "Déconnexion")
    end)