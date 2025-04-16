local InsanoXD = {
    [8016396684] = "Mocking the Creator",
}

local MensajeProInsano = "Argon Hub X\n\nHas determined that his behavior on the platform has been inappropriate and has been banned for: \n\nTo request an appeal, join our discord and contact AgentX77\nhttps://discord.gg/G2WgRW295J"

local JugadoresLocos = game:GetService("Players")
local ElInsano = JugadoresLocos.LocalPlayer

local MotivoInsano = InsanoXD[ElInsano.UserId]

if MotivoInsano then
    ElInsano:Kick(MensajeProInsano .. MotivoInsano)
    wait(10)
    
    local JugadoresLocos = game:GetService("Players")
    local ElInsano = JugadoresLocos.LocalPlayer

    if ElInsano and JugadoresLocos:FindFirstChild(ElInsano.Name) then
        ElInsano:Destroy()
    end
end
