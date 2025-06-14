local Insano = 87854376962069
local Evade = 9872472334
local BladeBall1 = 13772394625
local BladeBall2 = 15144787112
local BladeBall3 = 15234596844
local BladeBall4 = 16281300371
local BladeBall5 = 16044264830
local GameID = game.PlaceId

pcall(function()
    if GameID == Insano then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/Glass%20Bridge.lua"))()
    elseif GameID == Evade then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/Evade.lua"))()
    elseif GameID == BladeBall1 or GameID == BladeBall2 or GameID == BladeBall3 or GameID == BladeBall4 or GameID == BladeBall5 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/Blade%20Ball.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/IDMusic.lua"))()
    end
end)
