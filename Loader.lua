local Insano = 87854376962069 
local Evade = 9872472334

local BladeBall1 = 13772394625
local BladeBall2 = 15144787112
local BladeBall3 = 15234596844
local BladeBall4 = 16281300371
local BladeBall5 = 16044264830
local BladeBall6 = 14732610803
local BladeBall7 = 15131065025
local BladeBall8 = 15264892126
local BladeBall9 = 14915220621
local BladeBall10 = 15517169103
local BladeBall11 = 15509350986
local BladeBall12 = 16581648071

local GameID = game.PlaceId

pcall(function()
    if GameID == Insano then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/Glass%20Bridge.lua"))()
    elseif GameID == Evade then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/Evade.lua"))()
    elseif 
        GameID == BladeBall1 or GameID == BladeBall2 or GameID == BladeBall3 or 
        GameID == BladeBall4 or GameID == BladeBall5 or GameID == BladeBall6 or 
        GameID == BladeBall7 or GameID == BladeBall8 or GameID == BladeBall9 or 
        GameID == BladeBall10 or GameID == BladeBall11 or GameID == BladeBall12 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/Blade%20Ball.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/Games/IDMusic.lua"))()
    end
end)
