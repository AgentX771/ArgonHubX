local bannedPlayers = {
    [8016396684] = "Mocking the Creator",
}

local baseMessage = "Argon Hub X\n\nHas determined that his behavior on the platform has been inappropriate and has been banned for: \n\nTo request an appeal, join our discord and contact AgentX77\nhttps://discord.gg/G2WgRW295J"

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local reason = bannedPlayers[LocalPlayer.UserId]

if reason then
    LocalPlayer:Kick(baseMessage .. reason)
    wait(10)
    
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    
    if LocalPlayer and Players:FindFirstChild(LocalPlayer.Name) then
        LocalPlayer:Destroy()
    end
end
