local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('brown:client:chow', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"eat"})
    QBCore.Functions.Progressbar("chow_goodeats", Config.EatProgressMessage, 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("consumables:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + Config.GoodEats[itemName])
        TriggerServerEvent('hud:server:RelieveStress', Config.EatStress)
    end)
end)

RegisterNetEvent('brown:client:guzzle', function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar("guzzle_gooddrank", Config.DrinkProgressMessage, 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove")
        TriggerServerEvent('brown:clientGoodEmoteStart', {"c"})
        TriggerServerEvent("brown:server:addBevs", QBCore.Functions.GetPlayerData().metadata["thirst"] + Config.GoodBevs[itemName])
        TriggerServerEvent('hud:server:RelieveStress', Config.DrinkStress)
    end)
end)

