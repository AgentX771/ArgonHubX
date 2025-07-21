local Insano = 87854376962069 
local Evade = 9872472334

local BladeBallIDs = {
    [13772394625] = true,
    [15144787112] = true,
    [15234596844] = true,
    [16281300371] = true,
    [16044264830] = true,
    [14732610803] = true,
    [15131065025] = true,
    [15264892126] = true,
    [14915220621] = true,
    [15517169103] = true,
    [15509350986] = true,
    [16581648071] = true,
    [16581637217] = true,
    [17757592456] = true
}

local GameID = game.PlaceId

pcall(function()
    if GameID == Insano then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/Glass%20Bridge.lua"))()
    elseif GameID == Evade then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/Evade.lua"))()
    elseif BladeBallIDs[GameID] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/Blade%20Ball.lua"))()
    else
        local GameName = game:GetService("MarketplaceService"):GetProductInfo(GameID).Name
        local lowerName = string.lower(GameName)
        if string.find(lowerName, "blade ball") or string.find(lowerName, "blade") or string.find(lowerName, "ball") then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/Blade%20Ball.lua"))()
        else
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/IDMusic.lua"))()
        end
    end
end)
