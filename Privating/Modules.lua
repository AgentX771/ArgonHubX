local argon_module = {}

local Players = game:GetService("Players")

local Services = {
    game:GetService('AdService'),
    game:GetService('SocialService')
}

function argon_module.isAlive(Entity)
    return Entity.Character and workspace.Alive:FindFirstChild(Entity.Name) and workspace.Alive:FindFirstChild(Entity.Name).Humanoid.Health > 0
end

function argon_module.getBall()
    for index, ball in workspace:WaitForChild("Balls"):GetChildren() do
        if ball:IsA("BasePart") and ball:GetAttribute("realBall") then
            return ball
        end
    end
end

return argon_module;
