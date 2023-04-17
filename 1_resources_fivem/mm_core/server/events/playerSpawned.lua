-- ----------------------------------------------------------------------------------- Contrôle du joueur au moment de sa connexion
RegisterNetEvent("copCore:controlExistPlayer")
AddEventHandler("copCore:controlExistPlayer", function()
    local player = source
    local license = copCore.objects.players.getPlayerIdentity("license", player)
    local playerIdDB = copCore.objects.players.getPlayerIdDB(license)
    print(playerIdDB.id)

end)

-- On déclare la fonction print_hello qui affiche un message dans la console du serveur
function print_hello()
    print("Hello dfhd h!")
end

-- On appelle la fonction print_hello
print_hello()