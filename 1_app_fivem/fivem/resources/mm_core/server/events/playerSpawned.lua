-- ----------------------------------------------------------------------------------- Contrôle du joueur au moment de sa connexion
RegisterNetEvent("copCore:controlExistPlayer")
AddEventHandler("copCore:controlExistPlayer", function()
    local player = source
    local license = copCore.objects.players.getPlayerIdentity("license", player)
    local playerIdDB = copCore.objects.players.getPlayerIdDB(license)
    print(playerIdDB.id)

end)