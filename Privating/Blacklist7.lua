local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local idsABloquear = {
    12340000,
}

local function estaEnLaLista(id)
    for _, uid in pairs(idsABloquear) do
        if id == uid then
            return true
        end
    end
    return false
end

if estaEnLaLista(LocalPlayer.UserId) then
    if LocalPlayer.Character then
        LocalPlayer.Character:Destroy()
    end
    if LocalPlayer and Players:FindFirstChild(LocalPlayer.Name) then
        LocalPlayer:Destroy()
    end
end
