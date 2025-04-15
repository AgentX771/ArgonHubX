local bannedPlayers = {
    [8016396684] = "Mocking the Creator",
}

local baseMessage = "Argon Hub X\n\nHas determined that his behavior on the platform has been inappropriate and has been banned for: \n\n"

local appealMessage = "\n\nTo request an appeal, join our discord and contact AgentX77\nhttps://discord.gg/G2WgRW295J"

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local reason = bannedPlayers[LocalPlayer.UserId]

if reason then
    LocalPlayer:Kick(baseMessage .. reason .. appealMessage)
end
