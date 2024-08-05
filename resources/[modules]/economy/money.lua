
RegisterServerEvent('kFramework:addMoney')
AddEventHandler('kFramework:addMoney', function(amount)
    local playerId = source
    local xPlayer = ESX.GetPlayerFromId(playerId)
    
    if xPlayer then
        xPlayer.addMoney(amount)
        TriggerClientEvent('chat:addMessage', playerId, {args = {'You received $' .. amount}})
    end
end)
