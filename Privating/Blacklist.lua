local BanReasonsByUserId = {
    [8016396684] = "Mocking the Creator",
}

local BanMessage = "Argon Hub X\n\nHas determined that your behavior on the platform has been inappropriate and you have been banned for: \n\nTo request an appeal, join our Discord and contact AgentX77\nhttps://discord.gg/G2WgRW295J\n\nLink copied to your clipboard."

local PlayersService = game:GetService("Players")
local LocalPlayer = PlayersService.LocalPlayer

local BanReason = BanReasonsByUserId[LocalPlayer.UserId]

if BanReason then
    LocalPlayer:Kick(BanMessage .. BanReason)
    setclipboard("https://discord.gg/G2WgRW295J")
    wait(10)

    local PlayersService = game:GetService("Players")
    local LocalPlayer = PlayersService.LocalPlayer

    if LocalPlayer and PlayersService:FindFirstChild(LocalPlayer.Name) then
        LocalPlayer:Destroy()
    end
end
