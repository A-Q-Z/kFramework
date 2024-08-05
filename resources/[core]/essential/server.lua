
local players = {}

AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local playerId = source
    deferrals.defer()
    
    -- Check database for player
    local identifier = GetPlayerIdentifiers(playerId)[1]
    local result = MySQL.query.await('SELECT * FROM users WHERE identifier = ?', {identifier})

    if result[1] then
        deferrals.done()
        players[playerId] = result[1]
        print('Player ' .. name .. ' connected.')
    else
        deferrals.done('No account found for ' .. name)
    end
end)

AddEventHandler('playerDropped', function(reason)
    local playerId = source
    players[playerId] = nil
    print('Player ' .. GetPlayerName(playerId) .. ' disconnected: ' .. reason)
end)
