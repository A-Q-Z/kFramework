
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000) -- Perform periodic cleanup every minute

        -- Optimize memory usage
        collectgarbage('collect')
    end
end)
