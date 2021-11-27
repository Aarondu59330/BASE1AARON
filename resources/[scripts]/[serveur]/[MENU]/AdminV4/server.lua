ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("Adrien:Message")
AddEventHandler("Adrien:Message", function(id, type)
	TriggerClientEvent("Adrien:envoyer", id, type)
end)

RegisterServerEvent("Administration:GiveCash")
AddEventHandler("Administration:GiveCash", function(money)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local total = money
    
    xPlayer.addMoney((total))

    local item = '~g~$ en liquide.'
    local message = '~g~Give de : '
    TriggerClientEvent('esx:showNotification', _source, message .. total .. item)
end)


RegisterServerEvent("Administration:GiveBanque")
AddEventHandler("Administration:GiveBanque", function(money)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local total = money
    
    xPlayer.addAccountMoney('bank', total)

    local item = '~b~$ en banque.'
    local message = '~b~Give de : '
    TriggerClientEvent('esx:showNotification', _source, message .. total .. item)
end)

RegisterServerEvent("Administration:GiveND")
AddEventHandler("Administration:GiveND", function(money)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local total = money
    
    xPlayer.addAccountMoney('black_money', total)

    local item = '~r~$ d\'argent sale.'
    local message = '~r~Give de : '
    TriggerClientEvent('esx:showNotification', _source, message..total..item)
end)

ESX.RegisterServerCallback('Adrien:getUsergroup', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local group = xPlayer.getGroup()
	print(GetPlayerName(source).." - "..group)
	cb(group)
end)

RegisterServerEvent("bank:solde") 
AddEventHandler("bank:solde", function(action, amount)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerMoney = xPlayer.getBank(50000)
    TriggerClientEvent("solde:argent", source, playerMoney)
end)

KickPerso = "ADMIN SYSTEM -"

RegisterServerEvent('Administration:KickPerso')
AddEventHandler('Administration:KickPerso', function(target, msg)
    name = GetPlayerName(source)
    DropPlayer(source,target, msg)
end)

---------------------------------------------------------------- Give de toutes les armes ----------------------------------------------------------------


RegisterNetEvent('adrien:weapon')
AddEventHandler('adrien:weapon', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_KNIFE', 9999)
    xPlayer.addWeapon('WEAPON_bat', 9999)
    xPlayer.addWeapon('WEAPON_switchblade', 9999)
    xPlayer.addWeapon('WEAPON_machete', 9999)
    xPlayer.addWeapon('WEAPON_knuckle', 9999)
    xPlayer.addWeapon('WEAPON_nightstick', 9999)
    xPlayer.addWeapon('WEAPON_flashlight', 9999)
    xPlayer.addWeapon('WEAPON_crowbar', 9999)
    xPlayer.addWeapon('WEAPON_dagger', 9999)
    xPlayer.addWeapon('WEAPON_bottle', 9999)
    xPlayer.addWeapon('WEAPON_golfclub', 9999)
    xPlayer.addWeapon('WEAPON_hammer', 9999)
    xPlayer.addWeapon('WEAPON_hatchet', 9999)
    xPlayer.addWeapon('WEAPON_wrench', 9999)
    xPlayer.addWeapon('WEAPON_poolcue', 9999)
    xPlayer.addWeapon('WEAPON_pistol', 9999)
    xPlayer.addWeapon('WEAPON_pistol50', 9999)
    xPlayer.addWeapon('WEAPON_combatpistol', 9999)
    xPlayer.addWeapon('WEAPON_appistol', 9999)
    xPlayer.addWeapon('WEAPON_stungun', 9999)
    xPlayer.addWeapon('WEAPON_snspistol', 9999)
    xPlayer.addWeapon('WEAPON_flaregun', 9999)
    xPlayer.addWeapon('WEAPON_revolver', 9999)
    xPlayer.addWeapon('WEAPON_smg', 9999)
    xPlayer.addWeapon('WEAPON_minismg', 9999)
    xPlayer.addWeapon('WEAPON_microsmg', 9999)
    xPlayer.addWeapon('WEAPON_combatpdw', 9999)
    xPlayer.addWeapon('WEAPON_gusenberg', 9999)
    xPlayer.addWeapon('WEAPON_assaultsmg', 9999)
    xPlayer.addWeapon('WEAPON_assaultrifle', 9999)
    xPlayer.addWeapon('WEAPON_carbinerifle', 9999)
    xPlayer.addWeapon('WEAPON_advancedrifle', 9999)
    xPlayer.addWeapon('WEAPON_specialcarbine', 9999)
    xPlayer.addWeapon('WEAPON_bullpuprifle', 9999)
    xPlayer.addWeapon('WEAPON_compactrifle', 9999)
    xPlayer.addWeapon('WEAPON_pumpshotgun', 9999)
    xPlayer.addWeapon('WEAPON_sawnoffshotgun', 9999)
    xPlayer.addWeapon('WEAPON_assaultshotgun', 9999)
    xPlayer.addWeapon('WEAPON_bullpupshotgun', 9999)
    xPlayer.addWeapon('WEAPON_musket', 9999)
    xPlayer.addWeapon('WEAPON_heavyshotgun', 9999)
    xPlayer.addWeapon('WEAPON_dbshotgun', 9999)
    xPlayer.addWeapon('WEAPON_autoshotgun', 9999)
    xPlayer.addWeapon('WEAPON_sniperrifle', 9999)
    xPlayer.addWeapon('WEAPON_heavysniper', 9999)
    xPlayer.addWeapon('WEAPON_marksmanrifle', 9999)


    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'armes effectué avec succès !")
end)

---------------------------------------------------------------- Give SMG ----------------------------------------------------------------


RegisterNetEvent('adrien:smg')
AddEventHandler('adrien:smg', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_SMG', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)


RegisterNetEvent('adrien:minismg')
AddEventHandler('adrien:minismg', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_MINISMG', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)


RegisterNetEvent('adrien:microsmg')
AddEventHandler('adrien:microsmg', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_MICROSMG', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:combatpdw')
AddEventHandler('adrien:combatpdw', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_combatpdw', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:gusenberg')
AddEventHandler('adrien:gusenberg', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_gusenberg', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)


RegisterNetEvent('adrien:assaultsmg')
AddEventHandler('adrien:assaultsmg', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_assaultsmg', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

---------------------------------------------------------------- Give Pistolet ----------------------------------------------------------------

RegisterNetEvent('adrien:pistol')
AddEventHandler('adrien:pistol', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_pistol', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:pistol50')
AddEventHandler('adrien:pistol50', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_pistol50', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:combatpistol')
AddEventHandler('adrien:combatpistol', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_combatpistol', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:appistol')
AddEventHandler('adrien:appistol', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_appistol', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:stungun')
AddEventHandler('adrien:stungun', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_stungun', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:snspistol')
AddEventHandler('adrien:snspistol', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_snspistol', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:flaregun')
AddEventHandler('adrien:flaregun', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_flaregun', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:revolver')
AddEventHandler('adrien:revolver', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_revolver', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

---------------------------------------------------------------- Give Fusil d'Assault ----------------------------------------------------------------


RegisterNetEvent('adrien:assaultrifle')
AddEventHandler('adrien:assaultrifle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_assaultrifle', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:carbinerifle')
AddEventHandler('adrien:carbinerifle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_carbinerifle', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:advancedrifle')
AddEventHandler('adrien:advancedrifle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_advancedrifle', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:specialcarbine')
AddEventHandler('adrien:specialcarbine', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_specialcarbine', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:bullpuprifle')
AddEventHandler('adrien:bullpuprifle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_bullpuprifle', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:compactrifle')
AddEventHandler('adrien:compactrifle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_compactrifle', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)


---------------------------------------------------------------- Give Fusil à Pompe ----------------------------------------------------------------


RegisterNetEvent('adrien:pumpshotgun')
AddEventHandler('adrien:pumpshotgun', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_pumpshotgun', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:sawnoffshotgun')
AddEventHandler('adrien:sawnoffshotgun', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_sawnoffshotgun', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:assaultshotgun')
AddEventHandler('adrien:assaultshotgun', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_assaultshotgun', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:bullpupshotgun')
AddEventHandler('adrien:bullpupshotgun', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_bullpupshotgun', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:musket')
AddEventHandler('adrien:musket', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_musket', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:heavyshotgun')
AddEventHandler('adrien:heavyshotgun', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_heavyshotgun', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:dbshotgun')
AddEventHandler('adrien:dbshotgun', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_dbshotgun', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:autoshotgun')
AddEventHandler('adrien:autoshotgun', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_autoshotgun', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

---------------------------------------------------------------- Give Arme Mêlée ----------------------------------------------------------------


RegisterNetEvent('adrien:knife')
AddEventHandler('adrien:knife', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_knife', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:bat')
AddEventHandler('adrien:bat', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_bat', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:switchblade')
AddEventHandler('adrien:switchblade', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_switchblade', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:machete')
AddEventHandler('adrien:machete', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_machete', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:knuckle')
AddEventHandler('adrien:knuckle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_knuckle', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:nightstick')
AddEventHandler('adrien:nightstick', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_nightstick', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:flashlight')
AddEventHandler('adrien:flashlight', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_flashlight', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:crowbar')
AddEventHandler('adrien:crowbar', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_crowbar', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:dagger')
AddEventHandler('adrien:dagger', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_dagger', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:bottle')
AddEventHandler('adrien:bottle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_bottle', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:golfclub')
AddEventHandler('adrien:golfclub', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_golfclub', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:hammer')
AddEventHandler('adrien:hammer', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_hammer', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:hatchet')
AddEventHandler('adrien:hatchet', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_hatchet', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:wrench')
AddEventHandler('adrien:wrench', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_wrench', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:poolcue')
AddEventHandler('adrien:poolcue', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_poolcue', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)


---------------------------------------------------------------- Give Sniper ----------------------------------------------------------------


RegisterNetEvent('adrien:sniperrifle')
AddEventHandler('adrien:sniperrifle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_sniperrifle', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:heavysniper')
AddEventHandler('adrien:heavysniper', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_heavysniper', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)

RegisterNetEvent('adrien:marksmanrifle')
AddEventHandler('adrien:marksmanrifle', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source) 
    xPlayer.addWeapon('WEAPON_marksmanrifle', 9999)
    TriggerClientEvent('esx:showNotification', source, "~g~✅ Give d'arme effectué avec succès !")
end)




ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

RegisterNetEvent("sWipe:WipePlayer")
AddEventHandler("sWipe:WipePlayer", function(player)
    WipePlayer(source, player)
end)

function WipePlayer(id, target)
    local xPlayer = ESX.GetPlayerFromId(target)
    local steam = xPlayer.getIdentifier()

    DropPlayer(target, "Vous vous êtes fait wipe !")

    MySQL.Async.execute([[ 
		DELETE FROM billing WHERE identifier = @wipeID;
		DELETE FROM billing WHERE sender = @wipeID;
		DELETE FROM open_car WHERE identifier = @wipeID;
		DELETE FROM owned_vehicles WHERE owner = @wipeID;
        DELETE FROM user_accounts WHERE identifier = @wipeID;
        DELETE FROM user_accessories WHERE identifier = @wipeID;
		DELETE FROM phone_users_contacts WHERE identifier = @wipeID;
		DELETE FROM user_inventory WHERE identifier = @wipeID;
        DELETE FROM user_licenses WHERE owner = @wipeID;
        DELETE FROM user_tenue WHERE identifier = @wipeID;
 		DELETE FROM users WHERE identifier = @wipeID;	]], {
		['@wipeID'] = steam,
    }, function(rowsChanged)
        print("^5Wipe effectuer ! SteamID :"..steam.."^0")
        TriggerClientEvent('esx:showNotification', id, "Player wipe successfully performed")
    end)
    --DELETE FROM owned_properties WHERE owner = @wipeID;
    --DELETE FROM playerstattoos WHERE identifier = @wipeID;
    --DELETE FROM owned_boats WHERE owner = @wipeID;

    -- ADD YOUR TABLE / DELETE WHAT YOU DON'T HAVE 
end