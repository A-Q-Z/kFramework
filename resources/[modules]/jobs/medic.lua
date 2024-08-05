
-- Add any medic job specific code here

RegisterServerEvent('kFramework:playerJoinedMedic')
AddEventHandler('kFramework:playerJoinedMedic', function()
    local playerId = source
    print('Player ' .. GetPlayerName(playerId) .. ' joined as a medic.')
end)
