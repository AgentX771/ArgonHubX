local evade = false
local downscript = false

local games = {
    [87854376962069] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Glass%20Bridge.lua", true))()
        end)
    end,
    [9872472334] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Evade.lua", true))()
        end)
    end,
    [13772394625] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [15144787112] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [15234596844] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [16281300371] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [16044264830] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [14732610803] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [15131065025] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [15264892126] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [14915220621] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [15517169103] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [15509350986] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [16581648071] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [16581637217] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end,
    [17757592456] = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
        end)
    end
}

if downscript then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Argon Hub X:";
        Text = "At the moment the script is down, try again later.";
        Icon = "rbxassetid://119371425382054";
        Duration = 5;
    })
    evade = true
end

if games[game.PlaceId] then
    pcall(function()
        games[game.PlaceId]()
    end)
else
    pcall(function()
        local remotefire = game:GetService("ReplicatedStorage"):FindFirstChild("Remotes")
        local changedAfkMode
        if remotefire then
            changedAfkMode = remotefire:FindFirstChild("ChangedAfkMode")
        end
        if not evade and changedAfkMode then
            pcall(function()
                evade = true
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
            end)
        end
        local gameName
        pcall(function()
            gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
        end)
        if not evade and gameName and (string.find(gameName, "blade ball") or string.find(gameName, "blade") or string.find(gameName, "ball")) then
            pcall(function()
                evade = true
                loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/main/Games/Blade%20Ball.lua", true))()
            end)
        end
        if not evade then
            pcall(function()
                game.Players.LocalPlayer:Kick("Argon Hub X It is not in the list of supported games\n".. (gameName or "Unknown Game"))
            end)
        end
    end)
end
