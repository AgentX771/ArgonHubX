do
    if game:GetService("CoreGui"):FindFirstChild("ArgonHubX.lua") then
        game:GetService("CoreGui"):FindFirstChild("ArgonHubX.lua"):Destroy()
    end
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/AgentX771/ArgonHubX/refs/heads/main/UIArgon/ToggleUI.lua"))()
local a = game:GetService("UserInputService")
local b = game:GetService("TweenService")
local function c(c, d)
    local e = nil
    local f = nil
    local g = nil
    local h = nil
    local function i(a)
        local a = a.Position - g
        local a = UDim2.new(h.X.Scale, h.X.Offset + a.X, h.Y.Scale, h.Y.Offset + a.Y)
        local a = b:Create(d, TweenInfo.new(0.2), {Position = a})
        a:Play()
    end
    c.InputBegan:Connect(
        function(a)
            if a.UserInputType == Enum.UserInputType.MouseButton1 or a.UserInputType == Enum.UserInputType.Touch then
                e = true
                g = a.Position
                h = d.Position
                a.Changed:Connect(
                    function()
                        if a.UserInputState == Enum.UserInputState.End then
                            e = false
                        end
                    end
                )
            end
        end
    )
    c.InputChanged:Connect(
        function(a)
            if a.UserInputType == Enum.UserInputType.MouseMovement or a.UserInputType == Enum.UserInputType.Touch then
                f = a
            end
        end
    )
    a.InputChanged:Connect(
        function(a)
            if a == f and e then
                i(a)
            end
        end
    )
end
local d = {}
function d:AddWindow(d, e)
    local e = e or Enum.KeyCode.RightControl
    local f = false
    local g = ""
    local h = Instance.new("ScreenGui")
    h.Name = "ArgonHubX.lua"
    h.Parent = game:GetService("CoreGui")
    h.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local i = Instance.new("Frame")
    i.Name = "Main"
    i.Parent = h
    i.AnchorPoint = Vector2.new(0.5, 0.5)
    i.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    i.BackgroundTransparency = 0
    i.BorderSizePixel = 0
    i.ClipsDescendants = true
    i.Position = UDim2.new(0.499526083, 0, 0.499241292, 0)
    i.Size = UDim2.new(0, 600, 0, 350)
    local h = Instance.new("UICorner")
    h.Name = "MainCorner"
    h.CornerRadius = UDim.new(0, 9)
    h.Parent = i
    local h = Instance.new("ImageButton")
    h.Parent = i
    h.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
    h.BackgroundTransparency = 1
    h.BorderColor3 = Color3.new(0, 0, 0)
    h.BorderSizePixel = 0
    h.Position = UDim2.new(0.953, 0, 0.029, 0)
    h.Size = UDim2.new(0, 17, 0, 18)
    h.Image = "rbxassetid://9886659671"
    h.ImageColor3 = Color3.fromRGB(255, 255, 255)
    h.MouseEnter:Connect(
        function()
            b:Create(
                h,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {ImageColor3 = Color3.fromRGB(255, 160, 122)}
            ):Play()
        end
    )
    h.MouseLeave:Connect(
        function()
            b:Create(
                h,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {ImageColor3 = Color3.fromRGB(255, 255, 255)}
            ):Play()
        end
    )
    h.MouseButton1Click:Connect(function()
        local coreGui = game:GetService("CoreGui")
    
        local a = coreGui:FindFirstChild("ArgonHubX.lua")
        if a then
            a:Destroy()
        end
    
        local b = coreGui:FindFirstChild("Visible")
        if b then
            b:Destroy()
        end
    end)    
    local h = Instance.new("Frame")
    h.Name = "Top"
    h.Parent = i
    h.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    h.BackgroundTransparency = 1.000
    h.BorderSizePixel = 0
    h.Size = UDim2.new(0, 600, 0, 38)
    local j = Instance.new("UICorner")
    j.Name = "MainCorner"
    j.CornerRadius = UDim.new(0, 9)
    j.Parent = h
    local j = Instance.new("Frame")
    j.Name = "Page"
    j.Parent = i
    j.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    j.BackgroundTransparency = 0
    j.BorderSizePixel = 0
    j.Position = UDim2.new(0, 0, 0, 38)
    j.Size = UDim2.new(0, 125, 0, 312)
    local k = Instance.new("UICorner")
    k.Name = "MainCorner"
    k.CornerRadius = UDim.new(0, 9)
    k.Parent = j
    local k = Instance.new("Frame")
    k.Parent = j
    k.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    k.BorderColor3 = Color3.new(0, 0, 0)
    k.BorderSizePixel = 0
    k.Position = UDim2.new(1, 0, 0.001, 0)
    k.Size = UDim2.new(0, 1, 0, 273)
    local k = Instance.new("Frame")
    k.Parent = j
    k.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    k.BorderColor3 = Color3.new(0, 0, 0)
    k.BorderSizePixel = 0
    k.Position = UDim2.new(0, 0, 0.322, -101)
    k.Size = UDim2.new(0, 600, 0, 1)
    local k = Instance.new("Frame")
    k.Parent = j
    k.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    k.BorderColor3 = Color3.new(0, 0, 0)
    k.BorderSizePixel = 0
    k.Position = UDim2.new(0, 0, 1.2, -101)
    k.Size = UDim2.new(0, 600, 0, 1)
    function hidetext(a)
        local b = 3
        local c = string.sub(a, 1, b)
        local a = string.rep("*", #a - b)
        local a = c .. a
        return a
    end
    local k = hidetext(game.Players.LocalPlayer.Name)
    local l = math.floor(workspace.DistributedGameTime + 0.5)
    local m = math.floor(l / 60 ^ 2) % 24
    local m = math.floor(l / 60 ^ 1) % 60
    local l = math.floor(l / 60 ^ 0) % 60
    local l = Instance.new("TextLabel")
    l.Name = "PlayerName"
    l.Parent = j
    l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l.BackgroundTransparency = 1.000
    l.Position = UDim2.new(0.136, 0, 1.02, -33)
    l.Size = UDim2.new(0, 15, 0, 15)
    l.Font = Enum.Font.GothamSemibold
    l.Text = "        Welcome, " .. k
    l.TextColor3 = Color3.fromRGB(240, 240, 240)
    l.TextSize = 12.000
    l.TextXAlignment = Enum.TextXAlignment.Left
    local k = Instance.new("TextLabel")
    k.Name = "Statsetc"
    k.Parent = j
    k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    k.BackgroundTransparency = 1.000
    k.Position = UDim2.new(3.2, 0, 1.02, -33)
    k.Size = UDim2.new(0, 15, 0, 15)
    k.Font = Enum.Font.GothamSemibold
    k.Text = ""
    k.TextColor3 = Color3.fromRGB(240, 240, 240)
    k.TextSize = 12.000
    k.TextXAlignment = Enum.TextXAlignment.Left
    function UpdateStats()
        local a = math.floor(workspace.DistributedGameTime + 0.5)
        local b = math.floor(a / 60 ^ 2) % 24
        local c = math.floor(a / 60 ^ 1) % 60
        local a = math.floor(a / 60 ^ 0) % 60
        k.Position = UDim2.new(3.2, 0, 1.02, -33)
        k.Text = "Hours : " .. b .. " Minutes : " .. c .. " Seconds : " .. a
    end
    spawn(
        function()
            while task.wait(1) do
                pcall(
                    function()
                        UpdateStats()
                    end
                )
            end
        end
    )
    local k = Instance.new("Frame")
    local l = Instance.new("UICorner")
    local m = Instance.new("Frame")
    local n = Instance.new("UICorner")
    local o = Instance.new("ImageLabel")
    local p = Instance.new("UICorner")
    local q = Instance.new("Frame")
    local r = Instance.new("UICorner")
    k.Name = "ArgonHubX.lua"
    k.Parent = j
    k.AnchorPoint = Vector2.new(0, 0.5)
    k.BackgroundColor3 = Color3.fromRGB(175, 175, 175)
    k.BackgroundTransparency = 1.000
    k.BorderColor3 = Color3.fromRGB(0, 0, 0)
    k.BorderSizePixel = 0
    k.Position = UDim2.new(-0.85, 0, 0.939, 0)
    k.Size = UDim2.new(0, 38, 0, 38)
    l.CornerRadius = UDim.new(1, 0)
    l.Parent = k
    m.Name = "hhhh"
    m.Parent = k
    m.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    m.BorderColor3 = Color3.fromRGB(0, 0, 0)
    m.Position = UDim2.new(2.97368431, 0, 0.105263159, 0)
    m.Size = UDim2.new(0, 30, 0, 30)
    n.CornerRadius = UDim.new(1, 0)
    n.Parent = m
    o.Parent = m
    o.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    o.BackgroundTransparency = 1.000
    o.BorderColor3 = Color3.fromRGB(0, 0, 0)
    o.BorderSizePixel = 0
    o.Position = UDim2.new(0, 3, 0, 3)
    o.Size = UDim2.new(0, 24, 0, 24)
    o.Image = "rbxthumb://type=AvatarHeadShot&id=" .. game.Players.LocalPlayer.UserId .. "&w=420&h=420"
    p.CornerRadius = UDim.new(1, 0)
    p.Parent = o
    q.Name = "sdsds"
    q.Parent = k
    q.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    q.BackgroundTransparency = 1.000
    q.BorderColor3 = Color3.fromRGB(0, 0, 0)
    q.BorderSizePixel = 0
    q.Position = UDim2.new(3.05263162, 0, 0.0526315793, 5)
    q.Size = UDim2.new(0, 24, 0, 24)
    local k = Instance.new("UIStroke")
    k.Name = "UIStroke"
    k.Parent = q
    k.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    k.Color = Color3.fromRGB(30, 30, 30)
    k.LineJoinMode = Enum.LineJoinMode.Round
    k.Thickness = 1
    k.Transparency = 0
    k.Enabled = true
    k.Archivable = true
    r.CornerRadius = UDim.new(1, 0)
    r.Parent = q
    local k = Instance.new("TextLabel")
    k.Name = "NameHub"
    k.Parent = j
    k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    k.BackgroundTransparency = 1.000
    k.Position = UDim2.new(0.136, 0, 0.018, -33)
    k.Size = UDim2.new(0, 15, 0, 15)
    k.Font = Enum.Font.GothamSemibold
    k.Text = d
    k.TextColor3 = Color3.fromRGB(255, 0, 0)
    k.TextSize = 12.000
    k.TextXAlignment = Enum.TextXAlignment.Left
    
    local d = Instance.new("ScrollingFrame")
    d.Name = "ScrollPage"
    d.Parent = j
    d.Active = true
    d.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    d.BackgroundTransparency = 1.000
    d.BorderSizePixel = 0
    d.Position = UDim2.new(-0.1, 0, 0.011, 0)
    d.Size = UDim2.new(0, 135, 0, 273)
    local j = Instance.new("UIListLayout")
    j.Name = "PageList"
    j.Parent = d
    j.SortOrder = Enum.SortOrder.LayoutOrder
    j.Padding = UDim.new(0, 7)
    local l = Instance.new("UIPadding")
    l.Name = "PagePadding"
    l.Parent = d
    l.PaddingTop = UDim.new(0, 5)
    l.PaddingLeft = UDim.new(0, 28)
    local l = Instance.new("UICorner")
    l.Name = "ScrollPageCorner"
    l.CornerRadius = UDim.new(0, 9)
    l.Parent = d
    local l = Instance.new("Folder")
    l.Name = "TabFolder"
    l.Parent = i
    c(h, i, k)
    local c = false
    a.InputBegan:Connect(
        function(a)
            if a.KeyCode == e then
                if c == false then
                    c = true
                    i:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.2, true)
                else
                    c = false
                    i:TweenSize(UDim2.new(0, 600, 0, 350), "Out", "Quad", 0.2, true)
                end
            end
        end
    )
    function CloseUIFR()
        if _G.Closing then
            i:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.2, true)
        else
            i:TweenSize(UDim2.new(0, 600, 0, 350), "Out", "Quad", 0.2, true)
        end
    end
    local s = game:GetService("TweenService")
    local a = {}
    function a:AddTab(a)
        local c = Instance.new("TextButton")
        c.Name = "PageButton"
        c.Parent = d
        c.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        c.BackgroundTransparency = 1
        c.BorderSizePixel = 0
        c.Position = UDim2.new(0, 0, 1, 0)
        c.Size = UDim2.new(0, 100, 0, 23)
        c.AutoButtonColor = false
        c.Font = Enum.Font.GothamSemibold
        c.Text = "   " .. a
        c.TextColor3 = Color3.fromRGB(175, 175, 175)
        c.TextSize = 12.000
        c.TextXAlignment = Enum.TextXAlignment.Left
        local t = Instance.new("Frame")
        t.Name = "LeftStripe"
        t.Parent = c
        t.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        t.BorderSizePixel = 0
        t.Position = UDim2.new(0, 0, 0.5, -7.5)
        t.Size = UDim2.new(0, 4, 0, 14)
        t.Visible = false
        local u = Instance.new("UICorner")
        u.Name = "ButtonCorner"
        u.CornerRadius = UDim.new(0, 4)
        u.Parent = t
        local a = Instance.new("UICorner")
        a.Name = "ButtonCorner"
        a.CornerRadius = UDim.new(0, 4)
        a.Parent = c
        local a = Instance.new("Frame")
        a.Name = "MainTab"
        a.Parent = l
        a.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        a.BorderSizePixel = 0
        a.Position = UDim2.new(0.21, 0, -0.024, 47)
        a.Size = UDim2.new(0, 474, 0, 273)
        a.Visible = false
        local e = Instance.new("UICorner")
        e.Name = "MainTabCorner"
        e.CornerRadius = UDim.new(0, 9)
        e.Parent = a
        local e = Instance.new("ScrollingFrame")
        e.Name = "ScrollTab"
        e.Parent = a
        e.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        e.BackgroundTransparency = 1.000
        e.BorderSizePixel = 0
        e.Position = UDim2.new(0, -1, 0, 0)
        e.Size = UDim2.new(0, 475, 0, 273)
        e.CanvasSize = UDim2.new(0, 0, 0, 0)
        e.ScrollBarThickness = 0
        local h = Instance.new("UIListLayout")
        h.Name = "TabList"
        h.Parent = e
        h.SortOrder = Enum.SortOrder.LayoutOrder
        h.Padding = UDim.new(0, 5)
        local i = Instance.new("UIPadding")
        i.Name = "TabPadding"
        i.Parent = e
        i.PaddingLeft = UDim.new(0, 10)
        i.PaddingTop = UDim.new(0, 10)
        c.MouseButton1Click:Connect(
            function()
                g = a.Name
                for v, w in next, l:GetChildren() do
                    if w.Name == "MainTab" then
                        w.Visible = false
                    end
                end
                for v, x in next, d:GetChildren() do
                    if x:IsA("TextButton") then
                        local y = x:FindFirstChild("LeftStripe")
                        if y then
                            y.Visible = false
                            y.Size = UDim2.new(0, 4, 0, 0)
                        end
                    end
                end
                a.Visible = true
                t.Visible = true
                local z =
                    s:Create(
                    t,
                    TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 4, 0, 14)}
                )
                z:Play()
                for v, x in next, d:GetChildren() do
                    if x:IsA("TextButton") then
                        b:Create(
                            x,
                            TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1}
                        ):Play()
                    end
                end
                b:Create(
                    c,
                    TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0}
                ):Play()
            end
        )
        if f == false then
            b:Create(
                c,
                TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 0}
            ):Play()
            for b, b in next, l:GetChildren() do
                if b.Name == "MainTab" then
                    b.Visible = false
                    t.Visible = false
                end
                a.Visible = true
                t.Visible = true
            end
            f = true
        end
        game:GetService("RunService").Stepped:Connect(
            function()
                pcall(
                    function()
                        d.CanvasSize = UDim2.new(0, 0, 0, j.AbsoluteContentSize.Y + 10)
                        e.CanvasSize = UDim2.new(0, 0, 0, h.AbsoluteContentSize.Y + 30)
                    end
                )
            end
        )
        local a = {}
        function a:AddButton(a, c)
            local d = {}
            local f = Instance.new("TextButton")
            f.Name = "Button"
            f.Parent = e
            f.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            f.BackgroundTransparency = 0
            f.BorderSizePixel = 0
            f.Size = UDim2.new(0, 455, 0, 30)
            f.AutoButtonColor = false
            f.Font = Enum.Font.Gotham
            f.Text = a
            f.TextColor3 = Color3.fromRGB(225, 225, 225)
            f.TextSize = 11.000
            f.TextWrapped = true
            f.TextXAlignment = Enum.TextXAlignment.Left
            
            local icon = Instance.new("ImageLabel")
            icon.Name = "ButtonIcon"
            icon.Parent = f
            icon.BackgroundTransparency = 1
            icon.Size = UDim2.new(0, 25, 0, 25)
            icon.Position = UDim2.new(1, -30, 0.5, -12)
            icon.Image = "rbxassetid://15458295336"
            
            function d:SetButton(a)
                f.Text = a
            end
            
            local a = Instance.new("UICorner")
            a.Name = "ButtonCorner"
            a.CornerRadius = UDim.new(0, 4)
            a.Parent = f
            
            f.MouseEnter:Connect(function()
                b:Create(f, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 0, 0)}):Play()
            end)
            
            f.MouseLeave:Connect(function()
                b:Create(f, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(225, 225, 225)}):Play()
            end)
            
            f.MouseButton1Click:Connect(function()
                c()
                f.TextSize = 7
                b:Create(f, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {TextSize = 11}):Play()
            end)
            
            return d
        end        
        function a:AddLabelButton(a, c)
            local d = {}
            local f = Instance.new("TextButton")
            f.Name = "Button"
            f.Parent = e
            f.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            f.BackgroundTransparency = 0
            f.BorderSizePixel = 0
            f.Size = UDim2.new(0, 455, 0, 30)
            f.AutoButtonColor = false
            f.Font = Enum.Font.Gotham
            f.Text = a
            f.TextColor3 = Color3.fromRGB(225, 225, 225)
            f.TextSize = 11.000
            f.TextWrapped = true
            function d:SetButton(a)
                f.Text = a
            end
            local a = Instance.new("UICorner")
            a.Name = "ButtonCorner"
            a.CornerRadius = UDim.new(0, 4)
            a.Parent = f
            f.MouseEnter:Connect(
                function()
                    b:Create(
                        f,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255, 0, 0)}
                    ):Play()
                end
            )
            f.MouseLeave:Connect(
                function()
                    b:Create(
                        f,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(225, 225, 225)}
                    ):Play()
                end
            )
            f.MouseButton1Click:Connect(
                function()
                    c()
                    f.TextSize = 7
                    b:Create(f, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {TextSize = 11}):Play(

                    )
                end
            )
            return d
        end
        function a:AddToggled(a, c, d) 
            local f = {}
            local g = Instance.new("Frame")
            local h = Instance.new("TextButton")
            h.Name = "Toggle"
            h.Parent = e
            h.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            h.BackgroundTransparency = 0
            h.BorderSizePixel = 0
            h.AutoButtonColor = false
            h.Size = UDim2.new(0, 455, 0, 30)
            h.Font = Enum.Font.SourceSans
            h.Text = ""
            h.TextColor3 = Color3.fromRGB(0, 0, 0)
            h.TextSize = 14.000
            local e = Instance.new("UICorner")
            e.Name = "ToggleCorner"
            e.CornerRadius = UDim.new(0, 4)
            e.Parent = h
            local e = Instance.new("TextLabel")
            e.Name = "ToggleLabel"
            e.Parent = h
            e.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            e.BackgroundTransparency = 1.000
            e.Position = UDim2.new(0, 13, 0, 0)
            e.Size = UDim2.new(0, 410, 0, 30)
            e.Font = Enum.Font.Gotham
            e.Text = a
            e.TextColor3 = Color3.fromRGB(225, 225, 225)
            e.TextSize = 11.000
            e.TextXAlignment = Enum.TextXAlignment.Left
            function f:SetToggle(a)
                e.Text = a
            end
            g.Name = "ToggleImage"
            g.Parent = h
            g.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            g.Position = UDim2.new(0, 425, 0, 5)
            g.BorderSizePixel = 0
            g.Size = UDim2.new(0, 20, 0, 20)
            local a = Instance.new("UICorner")
            a.Name = "ToggleImageCorner"
            a.CornerRadius = UDim.new(0, 5)
            a.Parent = g
            local a = Instance.new("UIStroke")
            a.Name = "UIStroke"
            a.Parent = g
            a.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            a.Color = Color3.fromRGB(40, 40, 40)
            a.LineJoinMode = Enum.LineJoinMode.Round
            a.Thickness = 1
            a.Transparency = 0
            a.Enabled = true
            a.Archivable = true
            local a = Instance.new("ImageLabel")
            a.Name = "ToggleImage2"
            a.Parent = g
            a.Image = "rbxassetid://8498709213"
            a.AnchorPoint = Vector2.new(0.5, 0.5)
            a.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
            a.Position = UDim2.new(0, 10, 0, 10)
            a.ImageColor3 = Color3.fromRGB(255, 0, 0)
            a.Visible = false
            a.BackgroundTransparency = 1.000
            local g = Instance.new("UICorner")
            g.Name = "ToggleImageCorner"
            g.CornerRadius = UDim.new(0, 5)
            g.Parent = a
            h.MouseEnter:Connect(
                function()
                    b:Create(
                        e,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255, 0, 0)}
                    ):Play()
                end
            )
            h.MouseLeave:Connect(
                function()
                    b:Create(
                        e,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(225, 225, 225)}
                    ):Play()
                end
            )
            if c == nil then
                c = false
            end
            local b = c or false
            h.MouseButton1Click:Connect(
                function()
                    if b == false then
                        b = true
                        a.Visible = true
                        a:TweenSize(UDim2.new(0, 26, 0, 26), "In", "Quad", 0.1, true)
                    else
                        b = false
                        a:TweenSize(UDim2.new(0, 0, 0, 0), "In", "Quad", 0.1, true)
                        wait(0.1)
                        a.Visible = false
                    end
                    d(b)
                end
            )
            if c == true then
                a.Visible = true
                a:TweenSize(UDim2.new(0, 26, 0, 26), "In", "Quad", 0.1, true)
                b = true
                d(b)
            end
            return f
        end
        function a:AddTextbox(title, defaultText, callback)
            local d = {}
            local f = Instance.new("Frame")
            local g = Instance.new("UICorner")
            local h = Instance.new("TextLabel")
            local i = Instance.new("TextBox")
            local j = Instance.new("UICorner")
            
            f.Name = "Textboxx"
            f.Parent = e
            f.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            f.Size = UDim2.new(0, 455, 0, 30)
            
            g.CornerRadius = UDim.new(0, 4)
            g.Name = "TextboxxCorner"
            g.Parent = f
            
            h.Name = "TextboxTitle"
            h.Parent = f
            h.BackgroundTransparency = 1.000
            h.Position = UDim2.new(0, 15, 0, 0)
            h.Size = UDim2.new(0, 300, 0, 30)
            h.Font = Enum.Font.Gotham
            h.Text = title
            h.TextColor3 = Color3.fromRGB(225, 225, 225)
            h.TextSize = 11.000
            h.TextXAlignment = Enum.TextXAlignment.Left
            
            function d:SetTextbox(newText)
                h.Text = newText
            end
            
            i.Name = "Textbox"
            i.Parent = f
            i.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            i.Position = UDim2.new(0, 310, 0, 5)
            i.Size = UDim2.new(0, 140, 0, 20)
            i.Font = Enum.Font.GothamSemibold
            i.Text = defaultText
            i.TextColor3 = Color3.fromRGB(150, 150, 150)
            i.TextSize = 11.000
            i.TextTruncate = Enum.TextTruncate.AtEnd
            i.ClearTextOnFocus = false
            
            local originalText = defaultText
            
            local stroke = Instance.new("UIStroke")
            stroke.Name = "UIStroke"
            stroke.Parent = i
            stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            stroke.Color = Color3.fromRGB(50, 50, 50)
            stroke.Thickness = 1
            stroke.Enabled = true
            
            i.FocusLost:Connect(function()
                if #i.Text > 0 then
                    callback(i.Text)
                else
                    i.Text = originalText
                    i.TextColor3 = Color3.fromRGB(150, 150, 150)
                end
            end)
            
            i.Focused:Connect(function()
                if i.Text == originalText then
                    i.Text = ""
                    i.TextColor3 = Color3.fromRGB(225, 225, 225)
                end
            end)
            
            j.Name = "TextboxCorner"
            j.CornerRadius = UDim.new(0, 5)
            j.Parent = i
            
            callback(defaultText)
            
            return d
        end        
        function a:AddDropdown(a, c, d, f)
            local g = Instance.new("Frame")
            local h = Instance.new("UICorner")
            local i = Instance.new("TextButton")
            local j = Instance.new("TextLabel")
            local k = Instance.new("ScrollingFrame")
            local l = Instance.new("UIListLayout")
            local m = Instance.new("UIPadding")
            local n = Instance.new("ImageLabel")
            local B = Instance.new("TextBox")
            local C = Instance.new("UIStroke")
            local D = Instance.new("UICorner")
            local E = {}
            g.Name = "Dropdown"
            g.Parent = e
            g.Active = true
            g.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            g.ClipsDescendants = true
            g.Size = UDim2.new(0, 455, 0, 30)
            h.CornerRadius = UDim.new(0, 4)
            h.Parent = g
            i.Name = "DropButton"
            i.Parent = g
            i.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            i.BackgroundTransparency = 1.000
            i.Size = UDim2.new(0, 455, 0, 30)
            i.Font = Enum.Font.SourceSans
            i.Text = ""
            i.TextColor3 = Color3.fromRGB(0, 0, 0)
            i.TextSize = 14.000
            j.Name = "Droptitle"
            j.Parent = g
            j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            j.BackgroundTransparency = 1.000
            j.Position = UDim2.new(0.028, 0, 0, 0)
            j.Size = UDim2.new(0, 410, 0, 30)
            j.Font = Enum.Font.Gotham
            j.Text = a .. " : " .. c
            j.TextColor3 = Color3.fromRGB(225, 225, 225)
            j.TextSize = 11.000
            j.TextXAlignment = Enum.TextXAlignment.Left
            n.Name = "DropImage"
            n.Parent = g
            n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            n.BackgroundTransparency = 1.000
            n.Position = UDim2.new(0, 425, 0, 5)
            n.Rotation = 0
            n.Size = UDim2.new(0, 20, 0, 20)
            n.Image = "rbxassetid://5012539403"
            B.Name = "SearchBox"
            B.Parent = g
            B.Size = UDim2.new(0.2, 0, 0, 20)
            B.Position = UDim2.new(0, 330, 0.1, 2)
            B.PlaceholderText = "Search..."
            B.Font = Enum.Font.Gotham
            B.TextSize = 11
            B.TextColor3 = Color3.fromRGB(225, 225, 225)
            B.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            B.Text = ""
            B.AnchorPoint = Vector2.new(0, 0)
            B.AutomaticSize = Enum.AutomaticSize.None
            B.Visible = false
            C.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            C.Color = Color3.fromRGB(50, 50, 50)
            C.Thickness = 1.2
            C.Parent = B
            D.CornerRadius = UDim.new(0, 4)
            D.Parent = B
            k.Name = "DropScroll"
            k.Parent = g
            k.Active = true
            k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            k.BackgroundTransparency = 1.000
            k.BorderSizePixel = 0
            k.Position = UDim2.new(0, 0, 0, 30)
            k.Size = UDim2.new(0, 455, 0, 135)
            k.CanvasSize = UDim2.new(0, 0, 0, 2)
            k.ScrollBarThickness = 4
            k.ScrollingDirection = Enum.ScrollingDirection.Y
            k.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
            k.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
            l.Name = "DropdownList"
            l.Parent = k
            l.SortOrder = Enum.SortOrder.LayoutOrder
            l.Padding = UDim.new(0, 5)
            m.Name = "DropdownPadding"
            m.Parent = k
            m.PaddingTop = UDim.new(0, 5)
            function E:Clear()
                for v, w in ipairs(k:GetChildren()) do
                    if w:IsA("TextButton") then
                        w:Destroy()
                    end
                end
            end
            function E:SetDropdown(F)
                j.Text = a .. " : " .. tostring(F)
            end
            local e = false
            function E:Add(G)
                local H = Instance.new("TextButton")
                H.Name = "DropButton2"
                H.Parent = k
                H.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                H.BackgroundTransparency = 1.000
                H.Size = UDim2.new(0, 455, 0, 30)
                H.Font = Enum.Font.Gotham
                H.TextColor3 = Color3.fromRGB(225, 225, 225)
                H.TextSize = 11.000
                H.Text = tostring(G)
                H.MouseEnter:Connect(
                    function()
                        b:Create(
                            H,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(255, 0, 0)}
                        ):Play()
                    end
                )
                H.MouseLeave:Connect(
                    function()
                        b:Create(
                            H,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {TextColor3 = Color3.fromRGB(225, 225, 225)}
                        ):Play()
                    end
                )
                H.MouseButton1Click:Connect(
                    function()
                        self:SetDropdown(G)
                        f(G)
                        e = not e
                        B.Text = ""
                        B.Visible = false
                        B.Position = UDim2.new(0, 330, 0.1, 2)
                        b:Create(
                            g,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 30)}
                        ):Play()
                        b:Create(n, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play(

                        )
                    end
                )
            end
            i.MouseButton1Click:Connect(
                function()
                    e = not e
                    if e then
                        B.Visible = true
                        B.Position = UDim2.new(0, 330, 0.1, -12)
                        b:Create(
                            g,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 180)}
                        ):Play()
                        b:Create(
                            n,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Rotation = -180}
                        ):Play()
                        k.CanvasSize = UDim2.new(0, 0, 0, l.AbsoluteContentSize.Y + 10)
                    else
                        B.Text = ""
                        B.Visible = false
                        B.Position = UDim2.new(0, 330, 0.1, 2)
                        b:Create(
                            g,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Size = UDim2.new(0, 455, 0, 30)}
                        ):Play()
                        b:Create(n, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 0}):Play(

                        )
                    end
                end
            )
            B:GetPropertyChangedSignal("Text"):Connect(
                function()
                    local I = string.lower(B.Text)
                    for v, w in ipairs(k:GetChildren()) do
                        if w:IsA("TextButton") then
                            w.Visible = string.find(string.lower(w.Text), I) ~= nil
                        end
                    end
                    k.CanvasSize = UDim2.new(0, 0, 0, l.AbsoluteContentSize.Y + 10)
                end
            )
            for v, F in ipairs(d) do
                E:Add(F)
            end
            return E
        end
        function a:AddSlider(a, b, c, d, f)
            local g = {}
            d = math.clamp(d, b, c)
            local h = Instance.new("Frame")
            local i = Instance.new("UICorner")
            local j = Instance.new("TextLabel")
            local k = Instance.new("TextBox")
            local l = Instance.new("TextButton")
            local m = Instance.new("Frame")
            local n = Instance.new("Frame")
            local o = Instance.new("UICorner")
            local p = Instance.new("UICorner")
            local J = Instance.new("UIStroke")
            h.Name = "Slider"
            h.Parent = e
            h.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            h.Size = UDim2.new(0, 455, 0, 45)
            i.CornerRadius = UDim.new(0, 4)
            i.Parent = h
            j.Name = "SliderTitle"
            j.Parent = h
            j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            j.BackgroundTransparency = 1.000
            j.Position = UDim2.new(0.028, 0, 0, 0)
            j.Size = UDim2.new(0, 290, 0, 18)
            j.Font = Enum.Font.Gotham
            j.Text = a
            j.TextColor3 = Color3.fromRGB(225, 225, 225)
            j.TextSize = 11.000
            j.TextXAlignment = Enum.TextXAlignment.Left
            k.Name = "SliderValue"
            k.Parent = h
            k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            k.BackgroundTransparency = 1.000
            k.Position = UDim2.new(0.88, 0, 0, 0)
            k.Size = UDim2.new(0, 45, 0, 18)
            k.Font = Enum.Font.Gotham
            k.Text = tostring(d)
            k.TextColor3 = Color3.fromRGB(225, 225, 225)
            k.TextSize = 11.000
            k.ClearTextOnFocus = false
            l.Name = "SliderButton"
            l.Parent = h
            l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            l.BackgroundTransparency = 1.000
            l.Position = UDim2.new(0, 10, 0, 28)
            l.Size = UDim2.new(0, 435, 0, 6)
            l.AutoButtonColor = false
            l.Font = Enum.Font.SourceSans
            l.Text = ""
            l.TextSize = 16.000
            m.Name = "Bar1"
            m.Parent = l
            m.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            m.Size = UDim2.new(1, 0, 0, 6)
            J.Parent = m
            J.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            J.Color = Color3.fromRGB(50, 50, 50)
            J.LineJoinMode = Enum.LineJoinMode.Round
            J.Thickness = 1
            o.CornerRadius = UDim.new(0, 100)
            o.Parent = m
            n.Name = "Bar"
            n.Parent = m
            n.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            n.Size = UDim2.new((d - b) / (c - b), 0, 1, 0)
            o.CornerRadius = UDim.new(0, 100)
            o.Parent = n
            p.CornerRadius = UDim.new(0, 100)
            p.Parent = m
            local L = game:GetService("UserInputService")
            local M = false
            local function updateSlider(position)
                local O = math.clamp(position.X - m.AbsolutePosition.X, 0, m.AbsoluteSize.X)
                local P = math.floor(O / m.AbsoluteSize.X * (c - b) + b)
                n:TweenSize(UDim2.new(O / m.AbsoluteSize.X, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
                k.Text = tostring(P)
                pcall(function() f(P) end)
            end
            local function setSliderValue(value)
                value = math.clamp(tonumber(value) or d, b, c)
                local size = (value - b) / (c - b)
                n:TweenSize(UDim2.new(size, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.5, true)
                k.Text = tostring(value)
                pcall(function() f(value) end)
            end
            l.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    M = true
                    updateSlider(input.Position)
                end
            end)
            l.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    M = false
                end
            end)
            L.InputChanged:Connect(function(input)
                if M and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    updateSlider(input.Position)
                end
            end)
            k.FocusLost:Connect(function(enterPressed)
                if enterPressed then
                    setSliderValue(k.Text)
                end
            end)
            setSliderValue(d)
            pcall(function() f(d) end)
            return g
        end
        function a:AddSeperator(a)
            local b = {}
            local c = Instance.new("Frame")
            local d = Instance.new("TextLabel")
            local leftLine = Instance.new("Frame")
            local rightLine = Instance.new("Frame")
            
            c.Name = "Seperator"
            c.Parent = e
            c.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            c.BackgroundTransparency = 1.000
            c.ClipsDescendants = true
            c.Size = UDim2.new(0, 455, 0, 20)
            
            local e = Instance.new("UICorner")
            e.Name = "MainCorner"
            e.CornerRadius = UDim.new(0, 9)
            e.Parent = c
            
            d.Name = "SepLabel"
            d.Parent = c
            d.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            d.BackgroundTransparency = 1.000
            d.Position = UDim2.new(0.5, -50, 0, 0)
            d.Size = UDim2.new(0, 100, 0, 20)
            d.Font = Enum.Font.GothamSemibold
            d.Text = a
            d.TextColor3 = Color3.fromRGB(91, 91, 91)
            d.TextXAlignment = Enum.TextXAlignment.Center
            d.TextSize = 12.000
            
            leftLine.Name = "LeftLine"
            leftLine.Parent = c
            leftLine.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            leftLine.Position = UDim2.new(0, 0, 0.5, -1)
            leftLine.Size = UDim2.new(0.35, -5, 0, 2)
            
            rightLine.Name = "RightLine"
            rightLine.Parent = c
            rightLine.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            rightLine.Position = UDim2.new(0.65, 5, 0.5, -1)
            rightLine.Size = UDim2.new(0.35, -5, 0, 2)
            
            function b:SetSep(a)
                d.Text = a
            end
            
            return b
        end        
        function a:AddLabelSeparator(a)
            local b = {}
            local c = Instance.new("Frame")
            local d = Instance.new("TextLabel")
            c.Name = "Seperator"
            c.Parent = e
            c.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            c.BackgroundTransparency = 1.000
            c.ClipsDescendants = true
            c.Size = UDim2.new(0, 455, 0, 20)
            local e = Instance.new("UICorner")
            e.Name = "MainCorner"
            e.CornerRadius = UDim.new(0, 9)
            e.Parent = c
            local e = Instance.new("UICorner")
            e.Name = "MainCorner"
            e.CornerRadius = UDim.new(0, 9)
            e.Parent = Sep1
            d.Name = "SepLabel"
            d.Parent = c
            d.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            d.BackgroundTransparency = 1.000
            d.Position = UDim2.new(0, 5, 0, 0)
            d.Size = UDim2.new(0, 255, 0, 20)
            d.Font = Enum.Font.GothamSemibold
            d.Text = a
            d.TextColor3 = Color3.fromRGB(255, 255, 255)
            d.TextXAlignment = Enum.TextXAlignment.Left
            d.TextSize = 12.000
            function b:SetSep(a)
                d.Text = a
            end
            return b
        end        
        function a:AddLine()
            local a = Instance.new("Frame")
            local b = Instance.new("Frame")
            a.Name = "Line"
            a.Parent = e
            a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            a.BackgroundTransparency = 1.000
            a.ClipsDescendants = true
            a.Size = UDim2.new(0, 455, 0, 15)
            b.Name = "Linee"
            b.Parent = a
            b.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            b.BorderSizePixel = 0
            b.Position = UDim2.new(0, 0, 0, 7)
            b.Size = UDim2.new(0, 455, 0, 2)
        end
        function a:AddEspace()
            local a = Instance.new("Frame")
            a.Name = "Line"
            a.Parent = e
            a.BackgroundTransparency = 1.000
            a.ClipsDescendants = true
            a.Size = UDim2.new(0, 455, 0, 5)
        end        
        function a:AddNLabel(a)
            local b = Instance.new("TextLabel")
            local c = Instance.new("UIPadding")
            local d = {}
            b.Name = "Label"
            b.Parent = e
            b.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            b.BackgroundTransparency = 0
            b.Size = UDim2.new(0, 455, 0, 57)
            b.Font = Enum.Font.GothamSemibold
            b.TextColor3 = Color3.fromRGB(225, 225, 225)
            b.TextSize = 11.000
            b.Text = a
            b.TextXAlignment = Enum.TextXAlignment.Left
            c.PaddingLeft = UDim.new(0, 10)
            c.Parent = Label
            c.Name = "PaddingLabel"
            local a = Instance.new("UICorner")
            a.Name = "MainCorner"
            a.CornerRadius = UDim.new(0, 5)
            a.Parent = b
            local a = Instance.new("ImageLabel")
            a.Parent = b
            a.BackgroundColor3 = Color3.new(1, 1, 1)
            a.BorderColor3 = Color3.new(0, 0, 0)
            a.BackgroundTransparency = 1.000
            a.BorderSizePixel = 0
            a.Position = UDim2.new(0.851666677, 0, -0.1, 0)
            a.Size = UDim2.new(0, 60, 0, 60)
            a.Image =
                "https://www.roblox.com/headshot-thumbnail/image?userId=" ..
                game.Players.LocalPlayer.UserId .. "&width=420&height=420&format=png"
            function d:Set2(a)
                b.Text = a
            end
            return d
        end
        function a:AddLabel(a, b)
            local c = Instance.new("Frame")
            c.Name = "Mainl"
            c.Parent = e
            c.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            c.BackgroundTransparency = 0
            c.BorderSizePixel = 0
            c.Size = UDim2.new(0, 455, 0, 35)
            local d = Instance.new("TextLabel")
            local e = Instance.new("UIPadding")
            local f = {}
            d.Name = "Title"
            d.Parent = c
            d.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            d.BackgroundTransparency = 1
            d.Size = UDim2.new(0, 455, 0, 35)
            d.Font = Enum.Font.GothamBold
            d.TextColor3 = Color3.fromRGB(225, 225, 225)
            d.TextSize = 11.000
            d.Position = UDim2.new(-0.009, 0, -0.2, 0)
            d.Text = a
            d.TextXAlignment = Enum.TextXAlignment.Left
            local a = Instance.new("TextLabel")
            a.Name = "Text"
            a.Parent = c
            a.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            a.BackgroundTransparency = 1
            a.Size = UDim2.new(0, 455, 0, 35)
            a.Font = Enum.Font.Gotham
            a.TextColor3 = Color3.fromRGB(175, 175, 175)
            a.TextSize = 11.000
            a.Position = UDim2.new(0.014, 0, 0.18, 0)
            a.Text = b
            a.TextXAlignment = Enum.TextXAlignment.Left
            e.PaddingLeft = UDim.new(0, 10)
            e.Parent = d
            e.Name = "PaddingLabel"
            local b = Instance.new("UICorner")
            b.Name = "MainCorner"
            b.CornerRadius = UDim.new(0, 4)
            b.Parent = c
            function f:Set(b)
                a.Text = b
            end
            return f
        end
        return a
    end
    return a
end
return d
