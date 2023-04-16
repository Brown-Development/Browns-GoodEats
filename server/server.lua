local QBCore = exports['qb-core']:GetCoreObject()

for k,_ in pairs(Config.GoodEats) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent("brown:client:chow", source, item.name)
    end)
end

for k,_ in pairs(Config.GoodBevs) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
        TriggerClientEvent("brown:client:guzzle", source, item.name)
    end)
end

RegisterNetEvent('brown:server:addEats', function(amount)
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.SetMetaData('hunger', amount)
    TriggerClientEvent('hud:client:UpdateNeeds', source, amount, Player.PlayerData.metadata.thirst)
end)

RegisterNetEvent('brown:server:addBevs', function(amount)
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.SetMetaData('thirst', amount)
    TriggerClientEvent('hud:client:UpdateNeeds', source, Player.PlayerData.metadata.hunger, amount)
end)

local function AddDrink(drinkname, replenish)
    if Config.GoodBevs[drinkname] ~= nil then
        return false, "already added"
    else
        Config.GoodBevs[drinkname] = replenish
        CreateItem(drinkname, 'Drink')
        return true, "success"
    end
end

exports('AddDrink', AddDrink)

local function AddFood(foodname, replenish)
    if Config.GoodEats[foodname] ~= nil then
        return false, "already added"
    else
        Config.GoodEats[foodname] = replenish
        CreateItem(foodname, 'Eat')
        return true, "success"
    end
end

exports('AddFood', AddFood)