local S9_ = {}
S9_.Unloaded = false

function S9_:MakeNotify(S65_arg0)
	local S66_ = S65_arg0 or {}
	S66_.Title = S66_.Title or "ArgonHubX"
	S66_.Description = S66_.Description or "Notification"
	S66_.Content = S66_.Content or "Content"
	S66_.Color = S66_.Color or Color3.fromRGB(255, 0, 0)
	S66_.Time = S66_.Time or 0.5
	S66_.Delay = S66_.Delay or 5
	local S67_ = {}
	spawn(function()
		pcall(function()
			if not game:GetService("CoreGui"):FindFirstChild("NotifyGui") then
				local S84_ = Instance.new("ScreenGui");
				S84_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				S84_.Name = "NotifyGui"
				S84_.Parent = game:GetService("CoreGui")
			end
			if not game:GetService("CoreGui").NotifyGui:FindFirstChild("NotifyLayout") then
				local S85_ = Instance.new("Frame");
				S85_.AnchorPoint = Vector2.new(1, 1)
				S85_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				S85_.BackgroundTransparency = 0.9990000128746033
				S85_.BorderColor3 = Color3.fromRGB(0, 0, 0)
				S85_.BorderSizePixel = 0
				S85_.Position = UDim2.new(1, -30, 1, -30)
				S85_.Size = UDim2.new(0, 320, 1, 0)
				S85_.Name = "NotifyLayout"
				S85_.Parent = game:GetService("CoreGui").NotifyGui
				local S86_ = 0
				game:GetService("CoreGui").NotifyGui.NotifyLayout.ChildRemoved:Connect(function()
					pcall(function()
						S86_ = 0
						for S87_forvar0, S88_forvar1 in game:GetService("CoreGui").NotifyGui.NotifyLayout:GetChildren() do
							if S88_forvar1 and S88_forvar1.Size and S88_forvar1.Size.Y then
								game:GetService("TweenService"):Create(
									S88_forvar1, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
									Position = UDim2.new(0, 0, 1, - ((S88_forvar1.Size.Y.Offset + 12) * S86_))
								}):Play()
								S86_ = S86_ + 1
							end
						end
					end)
				end)
			end
			local S68_ = 0
			pcall(function()
				for S89_forvar0, S90_forvar1 in game:GetService("CoreGui").NotifyGui.NotifyLayout:GetChildren() do
					if S90_forvar1 and S90_forvar1.Position and S90_forvar1.Size then
						S68_ = - (S90_forvar1.Position.Y.Offset) + S90_forvar1.Size.Y.Offset + 12
					end
				end
			end)
			local S69_ = Instance.new("Frame");
			local S70_ = Instance.new("Frame");
			local S71_ = Instance.new("UICorner");
			local S72_ = Instance.new("Frame");
			local S73_ = Instance.new("ImageLabel");
			local S74_ = Instance.new("Frame");
			local S75_ = Instance.new("TextLabel");
			local S76_ = Instance.new("UIStroke");
			local S77_ = Instance.new("UICorner");
			local S78_ = Instance.new("TextLabel");
			local S79_ = Instance.new("UIStroke");
			local S80_ = Instance.new("TextButton");
			local S81_ = Instance.new("ImageLabel");
			local S82_ = Instance.new("TextLabel");

			S69_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			S69_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S69_.BorderSizePixel = 0
			S69_.Size = UDim2.new(1, 0, 0, 150)
			S69_.Name = "NotifyFrame"
			S69_.BackgroundTransparency = 1
			S69_.Parent = game:GetService("CoreGui").NotifyGui.NotifyLayout
			S69_.AnchorPoint = Vector2.new(0, 1)
			S69_.Position = UDim2.new(0, 0, 1, - (S68_))

			S70_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			S70_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S70_.BorderSizePixel = 0
			S70_.Position = UDim2.new(0, 400, 0, 0)
			S70_.Size = UDim2.new(1, 0, 1, 0)
			S70_.Name = "NotifyFrameReal"
			S70_.Parent = S69_

			S71_.Parent = S70_
			S71_.CornerRadius = UDim.new(0, 8)

			S72_.BackgroundTransparency = 1
			S72_.BorderSizePixel = 0
			S72_.Size = UDim2.new(1, 0, 1, 0)
			S72_.ZIndex = 0
			S72_.Name = "DropShadowHolder"
			S72_.Parent = S70_

			S73_.Image = "rbxassetid://6015897843"
			S73_.ImageColor3 = Color3.fromRGB(0, 0, 0)
			S73_.ImageTransparency = 0.5
			S73_.ScaleType = Enum.ScaleType.Slice
			S73_.SliceCenter = Rect.new(49, 49, 450, 450)
			S73_.AnchorPoint = Vector2.new(0.5, 0.5)
			S73_.BackgroundTransparency = 1
			S73_.BorderSizePixel = 0
			S73_.Position = UDim2.new(0.5, 0, 0.5, 0)
			S73_.Size = UDim2.new(1, 47, 1, 47)
			S73_.ZIndex = 0
			S73_.Name = "DropShadow"
			S73_.Parent = S72_

			S74_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			S74_.BackgroundTransparency = 0.9990000128746033
			S74_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S74_.BorderSizePixel = 0
			S74_.Size = UDim2.new(1, 0, 0, 36)
			S74_.Name = "Top"
			S74_.Parent = S70_

			S75_.Font = Enum.Font.GothamBold
			S75_.Text = S66_.Title
			S75_.TextColor3 = Color3.fromRGB(255, 255, 255)
			S75_.TextSize = 14
			S75_.TextXAlignment = Enum.TextXAlignment.Left
			S75_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S75_.BackgroundTransparency = 0.9990000128746033
			S75_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S75_.BorderSizePixel = 0
			S75_.Size = UDim2.new(1, 0, 1, 0)
			S75_.Parent = S74_
			S75_.Position = UDim2.new(0, 10, 0, 0)

			S76_.Color = Color3.fromRGB(255, 255, 255)
			S76_.Thickness = 0.30000001192092896
			S76_.Parent = S75_

			S77_.Parent = S74_
			S77_.CornerRadius = UDim.new(0, 5)

			S78_.Font = Enum.Font.GothamBold
			S78_.Text = S66_.Description
			S78_.TextColor3 = S66_.Color
			S78_.TextSize = 14
			S78_.TextXAlignment = Enum.TextXAlignment.Left
			S78_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S78_.BackgroundTransparency = 0.9990000128746033
			S78_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S78_.BorderSizePixel = 0
			S78_.Size = UDim2.new(1, 0, 1, 0)
			pcall(function()
				S78_.Position = UDim2.new(0, S75_.TextBounds.X + 15, 0, 0)
			end)
			S78_.Parent = S74_

			S79_.Color = S66_.Color
			S79_.Thickness = 0.4000000059604645
			S79_.Parent = S78_

			S80_.Font = Enum.Font.SourceSans
			S80_.Text = ""
			S80_.TextColor3 = Color3.fromRGB(0, 0, 0)
			S80_.TextSize = 14
			S80_.AnchorPoint = Vector2.new(1, 0.5)
			S80_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S80_.BackgroundTransparency = 0.9990000128746033
			S80_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S80_.BorderSizePixel = 0
			S80_.Position = UDim2.new(1, -5, 0.5, 0)
			S80_.Size = UDim2.new(0, 25, 0, 25)
			S80_.Name = "Close"
			S80_.Parent = S74_

			S81_.Image = "rbxassetid://9886659671"
			S81_.AnchorPoint = Vector2.new(0.5, 0.5)
			S81_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S81_.BackgroundTransparency = 0.9990000128746033
			S81_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S81_.BorderSizePixel = 0
			S81_.Position = UDim2.new(0.49000001, 0, 0.5, 0)
			S81_.Size = UDim2.new(1, -8, 1, -8)
			S81_.Parent = S80_

			S82_.Font = Enum.Font.GothamBold
			S82_.TextColor3 = Color3.fromRGB(255, 255, 255)
			S82_.TextSize = 13
			S82_.Text = S66_.Content
			S82_.TextXAlignment = Enum.TextXAlignment.Left
			S82_.TextYAlignment = Enum.TextYAlignment.Top
			S82_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			S82_.BackgroundTransparency = 0.9990000128746033
			S82_.TextColor3 = Color3.fromRGB(150.0000062584877, 150.0000062584877, 150.0000062584877)
			S82_.BorderColor3 = Color3.fromRGB(0, 0, 0)
			S82_.BorderSizePixel = 0
			S82_.Position = UDim2.new(0, 10, 0, 27)
			S82_.Parent = S70_
			S82_.Size = UDim2.new(1, -20, 0, 13)

			pcall(function()
				S82_.Size = UDim2.new(1, -20, 0, 13 + (13 * (S82_.TextBounds.X // S82_.AbsoluteSize.X)))
				S82_.TextWrapped = true
			end)

			pcall(function()
				if S82_.AbsoluteSize.Y < 27 then
					S69_.Size = UDim2.new(1, 0, 0, 65)
				else
					S69_.Size = UDim2.new(1, 0, 0, S82_.AbsoluteSize.Y + 40)
				end
			end)
			
			local S83_ = false
			function S67_:Close()
				pcall(function()
					if S83_ then
						return false
					end
					S83_ = true
					game:GetService("TweenService"):Create(
						S70_, TweenInfo.new(tonumber(S66_.Time), Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
						Position = UDim2.new(0, 400, 0, 0)
					}):Play()
					task.wait(tonumber(S66_.Time) / 1.2)
					if S69_ and S69_.Parent then
						S69_:Destroy()
					end
				end)
			end
			
			pcall(function()
				S80_.Activated:Connect(function()
					S67_:Close()
				end)
			end)
			
			pcall(function()
				game:GetService("TweenService"):Create(
					S70_, TweenInfo.new(tonumber(S66_.Time), Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
					Position = UDim2.new(0, 0, 0, 0)
				}):Play()
			end)
			
			task.wait(tonumber(S66_.Delay))
			S67_:Close()
		end)
	end)
	return S67_
end

return S9_
