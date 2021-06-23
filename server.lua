ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterServerEvent('esx_clip:remove')
AddEventHandler('esx_clip:remove', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('clip', 1)
end)

ESX.RegisterUsableItem('clip', function(source)
    TriggerClientEvent('esx_clip:clipcli', source)
end)


RegisterNetEvent('bnj:clip')
AddEventHandler('bnj:clip', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('clip', 5)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('bnj:sns')
AddEventHandler('bnj:sns', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 250
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_SNSPISTOL', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)





RegisterNetEvent('bnj:pistolet')
AddEventHandler('bnj:pistolet', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 400
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_pistol', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)







RegisterNetEvent('bnj:vintage')
AddEventHandler('bnj:vintage', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 450
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_vintagepistol', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)









RegisterNetEvent('bnj:calibre50')
AddEventHandler('bnj:calibre50', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 500
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_pistol50', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")


    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


