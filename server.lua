local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Load map data from database
ESX.RegisterServerCallback('mapSystem:getMapData', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        MySQL.Async.fetchAll('SELECT * FROM @map_system WHERE player_id = @player_id', {
            ['@player_id'] = xPlayer.identifier
        }, function(result)
            if result[1] then
                cb({
                    mapName = result[1].map_name,
                    blipId = result[1].blip_id,
                    blipColor = result[1].blip_color,
                    blipScale = result[1].blip_scale,
                    coords = { x = 0.0, y = 0.0, z = 0.0 } -- Replace with actual coordinates
                })
            else
                cb(nil)
            end
        end)
    else
        cb(nil)
    end
end)

-- Register command to open UI if enabled
if Config.UIEnabled then
    ESX.RegisterCommand('map', 'user', function(xPlayer, args, showError)
        TriggerClientEvent('mapSystem:openUI', xPlayer.source)
    end, false, {help = 'Open the map system UI'})
end