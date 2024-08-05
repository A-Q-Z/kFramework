
local policeJobs = {}

RegisterServerEvent('kFramework:playerJoinedJob')
AddEventHandler('kFramework:playerJoinedJob', function(job)
    local playerId = source
    if job == 'police' then
        policeJobs[playerId] = true
        print('Player ' .. GetPlayerName(playerId) .. ' joined the police.')
    end
end)

AddEventHandler('playerDropped', function()
    local playerId = source
    policeJobs[playerId] = nil
end)
