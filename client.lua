local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    -- Load map data from server
    ESX.TriggerServerCallback('mapSystem:getMapData', function(mapData)
        if mapData then
            createMapBlip(mapData)
        end
    end)
end)

function createMapBlip(mapData)
    local blip = AddBlipForCoord(mapData.coords.x, mapData.coords.y, mapData.coords.z)
    SetBlipSprite(blip, mapData.blipId)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, mapData.blipScale)
    SetBlipColour(blip, mapData.blipColor)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(mapData.mapName)
    EndTextCommandSetBlipName(blip)
end

-- Register UI events if enabled
if Config.UIEnabled then
    RegisterNetEvent('mapSystem:openUI')
    AddEventHandler('mapSystem:openUI', function()
        -- Open UI here
    end)
end