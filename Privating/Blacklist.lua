local bannedPlayers = {
    [8016396684] = "Mocking the Creator",
}

local baseMessage = "Argon Hub X has determined that his behavior on the platform has been inappropriate and has been banned for: "

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local reason = bannedPlayers[LocalPlayer.UserId]
if reason then
    LocalPlayer:Kick(baseMessage .. reason)
end
wait(10)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if LocalPlayer and Players:FindFirstChild(LocalPlayer.Name) then
    LocalPlayer:Destroy()
end
