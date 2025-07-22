local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if LocalPlayer and Players:FindFirstChild(LocalPlayer.Name) then
    pcall(function()
        LocalPlayer:Destroy()
    end)
end

task.wait()

pcall(function()
    if LocalPlayer and LocalPlayer.Character then
        LocalPlayer.Character:Destroy()
    end
end)
