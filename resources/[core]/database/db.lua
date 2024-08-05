
MySQL = require('oxmysql')

MySQL.ready(function()
    print('Database connected!')
end)

function fetchPlayerData(identifier)
    return MySQL.query.await('SELECT * FROM users WHERE identifier = ?', {identifier})
end

function savePlayerData(playerId, data)
    MySQL.update.await('UPDATE users SET data = ? WHERE identifier = ?', {json.encode(data), GetPlayerIdentifiers(playerId)[1]})
end
