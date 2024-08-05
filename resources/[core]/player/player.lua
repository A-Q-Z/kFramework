
Player = {}
Player.__index = Player

function Player:new(identifier)
    local self = setmetatable({}, Player)
    self.identifier = identifier
    self.data = {}
    return self
end

function Player:load()
    local result = fetchPlayerData(self.identifier)
    if result[1] then
        self.data = json.decode(result[1].data)
    end
end

function Player:save()
    savePlayerData(self.identifier, self.data)
end
