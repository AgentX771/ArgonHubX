local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local blockedIds = {
    1,
}

local function isBlocked(id)
    for _, uid in pairs(blockedIds) do
        if id == uid then
            return true
        end
    end
    return false
end

if isBlocked(LocalPlayer.UserId) then
    if LocalPlayer.Character then
        LocalPlayer.Character:Destroy()
    end
end
