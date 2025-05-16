local BanReasonsByUserId = {
    [8016396684] = "Mocking the Creator",
}

local PlayersService = game:GetService("Players")
local LocalPlayer = PlayersService.LocalPlayer

local BanReason = BanReasonsByUserId[LocalPlayer.UserId]

if BanReason then
    local BanMessage = "Argon Hub X\n\nHas determined that your behavior on the platform has been inappropriate and you have been banned for: " .. BanReason .. "\n\nTo request an appeal, join our Discord and contact AgentX77\nhttps://discord.gg/G2WgRW295J\n\nLink copied to your clipboard."
    setclipboard("https://discord.gg/G2WgRW295J")
    LocalPlayer:Kick(BanMessage)
    task.delay(1, function()
        if LocalPlayer.Character then
            LocalPlayer.Character:Destroy()
        end
    end)
end
