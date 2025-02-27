local a = game:GetService("CoreGui"):FindFirstChild("ClosePanel")
if a then
    a:Destroy()
end
local b = game:GetService("CoreGui"):FindFirstChild("AdversitePanel")
if b then
    b:Destroy()
end
local c = game:GetService("UserInputService")
local d = game:GetService("TweenService")
local function e(f, g)
    local h = nil
    local i = nil
    local j = nil
    local k = nil
    local function l(m)
        local n = m.Position - j
        local o = UDim2.new(k.X.Scale, k.X.Offset + n.X, k.Y.Scale, k.Y.Offset + n.Y)
        local p = d:Create(g, TweenInfo.new(0.2), {Position = o})
        p:Play()
    end
    f.InputBegan:Connect(
        function(m)
            if m.UserInputType == Enum.UserInputType.MouseButton1 or m.UserInputType == Enum.UserInputType.Touch then
                h = true
                j = m.Position
                k = g.Position
                m.Changed:Connect(
                    function()
                        if m.UserInputState == Enum.UserInputState.End then
                            h = false
                        end
                    end
                )
            end
        end
    )
    f.InputChanged:Connect(
        function(m)
            if m.UserInputType == Enum.UserInputType.MouseMovement or m.UserInputType == Enum.UserInputType.Touch then
                i = m
            end
        end
    )
    c.InputChanged:Connect(
        function(m)
            if m == i and h then
                l(m)
            end
        end
    )
end
local q = Instance.new("ScreenGui")
local r = Instance.new("Frame")
local s = Instance.new("UICorner")
local t = Instance.new("ImageButton")
local u = Instance.new("UICorner")
local v = Instance.new("Frame")
q.Name = "ClosePanel"
q.Parent = game:GetService("CoreGui")
r.Parent = q
r.BackgroundColor3 = Color3.fromRGB(9, 8, 8)
r.BorderColor3 = Color3.fromRGB(0, 0, 0)
r.BorderSizePixel = 0
r.Position = UDim2.new(0.304423213, 0, 0.0389447249, 0)
r.Size = UDim2.new(0, 60, 0, 60)
s.Parent = r
t.Name = "Button"
t.Parent = r
t.Active = true
t.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
t.BorderColor3 = Color3.fromRGB(0, 0, 0)
t.BorderSizePixel = 0
t.Position = UDim2.new(-2.17982702e-07, 0, 0, 0)
t.Size = UDim2.new(0, 60, 0, 60)
t.Image = "http://www.roblox.com/asset/?id=79505262490378"
u.Parent = t
v.Name = "Top"
v.Parent = r
v.BackgroundColor3 = Color3.fromRGB(9, 8, 8)
v.BackgroundTransparency = 1
v.BorderColor3 = Color3.fromRGB(0, 0, 0)
v.BorderSizePixel = 0
v.Size = UDim2.new(0, 60, 0, 60)
local w = false
t.MouseButton1Click:Connect(
    function()
        w = not w
        if w then
            _G.Closing = true
            CloseUIFR()
        else
            _G.Closing = false
            CloseUIFR()
        end
    end
)
t.MouseEnter:Connect(
    function()
        d:Create(
            t,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(50, 50, 50)}
        ):Play()
    end
)
t.MouseLeave:Connect(
    function()
        d:Create(
            t,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(255, 255, 255)}
        ):Play()
    end
)
e(v, r)
local x = Instance.new("ScreenGui")
local y = Instance.new("Frame")
local s = Instance.new("UICorner")
local z = Instance.new("TextButton")
local u = Instance.new("UICorner")
local A = Instance.new("TextLabel")
local B = Instance.new("ImageLabel")
local C = Instance.new("UICorner")
local D = Instance.new("TextButton")
local E = Instance.new("TextLabel")
local F = Instance.new("Frame")
x.Name = "AdversitePanel"
x.Parent = game:GetService("CoreGui")
y.Name = "Adversite"
y.Parent = x
y.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
y.BorderColor3 = Color3.fromRGB(0, 0, 0)
y.BorderSizePixel = 0
y.Position = UDim2.new(0.530789256, 0, 0.454773873, 0)
y.Size = UDim2.new(0, 354, 0, 196)
s.Parent = y
z.Name = "Discord"
z.Parent = y
z.Active = true
z.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
z.BorderColor3 = Color3.fromRGB(0, 0, 0)
z.BorderSizePixel = 0
z.Position = UDim2.new(0.217514127, 0, 0.408163279, 0)
z.Size = UDim2.new(0, 200, 0, 50)
z.Font = Enum.Font.Unknown
z.Text = "Join Discord"
z.TextColor3 = Color3.fromRGB(165, 165, 165)
z.TextSize = 18
z.MouseButton1Click:Connect(
    function()
        setclipboard("https://discord.gg/G2WgRW295J")
        local req = (syn and syn.request) or (http and http.request) or http_request
        if req then
            req({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    Origin = 'https://discord.com'
                },
                Body = game:GetService("HttpService"):JSONEncode({
                    cmd = 'INVITE_BROWSER',
                    nonce = game:GetService("HttpService"):GenerateGUID(false),
                    args = {code = 'G2WgRW295J'}
                })
            })
        end
        z.Text = "Copied!"
        wait(2)
        z.Text = "Join Discord"
    end
)
u.Parent = z
A.Parent = y
A.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
A.BackgroundTransparency = 1
A.BorderColor3 = Color3.fromRGB(0, 0, 0)
A.BorderSizePixel = 0
A.Position = UDim2.new(0.217514127, 0, 0.153061226, 0)
A.Size = UDim2.new(0, 200, 0, 50)
A.Font = Enum.Font.GothamSemibold
A.Text = "Advertise Panel"
A.TextColor3 = Color3.fromRGB(150, 150, 150)
A.TextSize = 18
B.Parent = y
B.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
B.BackgroundTransparency = 1
B.BorderColor3 = Color3.fromRGB(0, 0, 0)
B.BorderSizePixel = 0
B.Size = UDim2.new(0, 50, 0, 51)
B.Image = "rbxassetid://95152361449872"
C.Parent = B
D.Name = "Close"
D.Parent = y
D.Active = true
D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
D.BackgroundTransparency = 1
D.BorderColor3 = Color3.fromRGB(0, 0, 0)
D.BorderSizePixel = 0
D.Position = UDim2.new(0.429378539, 0, 0.673469365, 0)
D.Size = UDim2.new(0, 49, 0, 52)
D.Font = Enum.Font.Gotham
D.Text = "CLOSE"
D.TextColor3 = Color3.fromRGB(166, 166, 166)
D.TextSize = 14
D.MouseButton1Click:Connect(
    function()
        local b = game:GetService("CoreGui"):FindFirstChild("AdversitePanel")
        if b then
            b:Destroy()
        end
    end
)
E.Parent = y
E.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
E.BackgroundTransparency = 1
E.BorderColor3 = Color3.fromRGB(0, 0, 0)
E.BorderSizePixel = 0
E.Position = UDim2.new(0.217514127, 0, 0.00510204071, 0)
E.Size = UDim2.new(0, 200, 0, 50)
E.Font = Enum.Font.Gotham
E.Text = "Argon Hub X"
E.TextColor3 = Color3.fromRGB(255, 0, 0)
E.TextSize = 18
F.Name = "topp"
F.Parent = y
F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
F.BackgroundTransparency = 1
F.BorderColor3 = Color3.fromRGB(0, 0, 0)
F.BorderSizePixel = 0
F.Size = UDim2.new(0, 354, 0, 196)
e(F, y)
