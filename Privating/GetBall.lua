local Argon_module = {}

local Players = game:GetService("Players")
local Services = {}
table.insert(Services, game:GetService("AdService"))
table.insert(Services, game:GetService("SocialService"))

local function entityIsAlive(entity)
    local aliveFolder = workspace:FindFirstChild("Alive")
    if not entity or not entity.Character or not aliveFolder then
        return false
    end

    local match = aliveFolder:FindFirstChild(entity.Name)
    if match and match:FindFirstChild("Humanoid") and match.Humanoid.Health > 0 then
        return true
    end
    return false
end

local function locateBall()
    local ballsFolder = workspace:WaitForChild("Balls")
    for _, ball in ipairs(ballsFolder:GetChildren()) do
        local isReal = ball:GetAttribute("realBall")
        if ball:IsA("BasePart") and isReal then
            return ball
        end
    end
end

Argon_module["isAlive"] = entityIsAlive
Argon_module["getBall"] = locateBall

return Argon_module
