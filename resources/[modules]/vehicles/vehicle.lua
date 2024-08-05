
-- Vehicle related server scripts

RegisterCommand('spawnvehicle', function(source, args, rawCommand)
    local playerId = source
    local vehicleName = args[1]

    if vehicleName then
        TriggerClientEvent('kFramework:spawnVehicle', playerId, vehicleName)
    else
        TriggerClientEvent('chat:addMessage', playerId, {args = {'Usage: /spawnvehicle [vehicleName]'}})
    end
end, false)
