function Compkiller.newNotify()
	if Compkiller.NOTIFY_CACHE then
		return Compkiller.NOTIFY_CACHE;
	end;

	local CoreGui = game:GetService("CoreGui")
	local TextService = game:GetService("TextService")

	local Notification = Instance.new("ScreenGui")
	local NotifyContainer = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")

	Notification.Name = Compkiller:_RandomString()
	Notification.Parent = CoreGui:FindFirstChildOfClass("ScreenGui") or CoreGui
	Notification.ResetOnSpawn = false
	Notification.ZIndexBehavior = Enum.ZIndexBehavior.Global

	NotifyContainer.Name = Compkiller:_RandomString()
	NotifyContainer.Parent = Notification
	NotifyContainer.AnchorPoint = Vector2.new(1, 0)
	NotifyContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotifyContainer.BackgroundTransparency = 1.000
	NotifyContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotifyContainer.BorderSizePixel = 0
	NotifyContainer.Position = UDim2.new(1, -10, 0, 1)
	NotifyContainer.Size = UDim2.new(0, 100, 0, 100)

	UIListLayout.Parent = NotifyContainer
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 3)

	local LayoutREF = 0;

	Compkiller.NOTIFY_CACHE = {
		new = function(Notify)
			Notify = Compkiller.__CONFIG(Notify, {
				Icon = Compkiller.Logo,
				Title = "Notification",
				Content = "Content",
				Duration = 3,
			});

			LayoutREF -= 5;

			local BlockFrame = Instance.new("Frame")
			local NotifyFrame = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local CompLogo = Instance.new("ImageLabel")
			local Header = Instance.new("TextLabel")
			local Body = Instance.new("TextLabel")
			local TimeLeftFrame = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local TimeLeft = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")

			BlockFrame.Name = Compkiller:_RandomString()
			BlockFrame.Parent = NotifyContainer
			BlockFrame.AnchorPoint = Vector2.new(1, 0)
			BlockFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			BlockFrame.BackgroundTransparency = 1.000
			BlockFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			BlockFrame.BorderSizePixel = 0
			BlockFrame.ClipsDescendants = false
			BlockFrame.Size = UDim2.new(0, 200, 0, 0)
			BlockFrame.LayoutOrder = LayoutREF;

			NotifyFrame.Name = Compkiller:_RandomString()
			NotifyFrame.Parent = BlockFrame
			NotifyFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			NotifyFrame.BackgroundTransparency = 0.100
			NotifyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			NotifyFrame.BorderSizePixel = 0
			NotifyFrame.ClipsDescendants = false
			NotifyFrame.Size = UDim2.new(1, 0, 1, -5)
			NotifyFrame.ZIndex = 2
			NotifyFrame.Position = UDim2.new(1,200,0,0)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = NotifyFrame

			CompLogo.Name = Compkiller:_RandomString()
			CompLogo.Parent = NotifyFrame
			CompLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			CompLogo.BackgroundTransparency = 1.000
			CompLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
			CompLogo.BorderSizePixel = 0
			CompLogo.Position = UDim2.new(0, 6, 0, 6)
			CompLogo.Size = UDim2.new(0, 25, 0, 25)
			CompLogo.ZIndex = 4
			CompLogo.Image = Compkiller:_GetIcon(Notify.Icon);

			Header.Name = Compkiller:_RandomString()
			Header.Parent = NotifyFrame
			Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Header.BackgroundTransparency = 1.000
			Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Header.BorderSizePixel = 0
			Header.Position = UDim2.new(0, 40, 0, 10)
			Header.Size = UDim2.new(1, -50, 0, 15)
			Header.ZIndex = 3
			Header.Font = Enum.Font.GothamBold
			Header.Text = Notify.Title
			Header.TextColor3 = Compkiller.Colors.SwitchColor
			Header.TextSize = 14.000
			Header.TextXAlignment = Enum.TextXAlignment.Left

			Body.Name = Compkiller:_RandomString()
			Body.Parent = NotifyFrame
			Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Body.BackgroundTransparency = 1.000
			Body.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Body.BorderSizePixel = 0
			Body.Position = UDim2.new(0, 10, 0, 33)
			Body.Size = UDim2.new(1, -15, 0, 30)
			Body.ZIndex = 3
			Body.Font = Enum.Font.GothamMedium
			Body.Text = Notify.Content
			Body.TextColor3 = Compkiller.Colors.SwitchColor
			Body.TextSize = 12.000
			Body.TextTransparency = 0.500
			Body.TextXAlignment = Enum.TextXAlignment.Left
			Body.TextYAlignment = Enum.TextYAlignment.Top

			TimeLeftFrame.Name = Compkiller:_RandomString()
			TimeLeftFrame.Parent = NotifyFrame
			TimeLeftFrame.AnchorPoint = Vector2.new(0, 1)
			TimeLeftFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TimeLeftFrame.BackgroundTransparency = 1.000
			TimeLeftFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TimeLeftFrame.BorderSizePixel = 0
			TimeLeftFrame.Position = UDim2.new(0, 0, 1, 1)
			TimeLeftFrame.Size = UDim2.new(1, 0, 0, 5)
			TimeLeftFrame.ZIndex = 5

			UICorner_2.CornerRadius = UDim.new(0, 4)
			UICorner_2.Parent = TimeLeftFrame

			TimeLeft.Name = Compkiller:_RandomString()
			TimeLeft.Parent = TimeLeftFrame
			TimeLeft.BackgroundColor3 = Compkiller.Colors.Highlight
			TimeLeft.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TimeLeft.BorderSizePixel = 0
			TimeLeft.Size = UDim2.new(0, 0, 1, 0)
			TimeLeft.ZIndex = 5

			UICorner_3.CornerRadius = UDim.new(0, 1)
			UICorner_3.Parent = TimeLeft

			local UpdateText = function()
				local TitleScale = TextService:GetTextSize(Header.Text,Header.TextSize,Header.Font,Vector2.new(math.huge,math.huge));
				local BodyScale = TextService:GetTextSize(Body.Text,Body.TextSize,Body.Font,Vector2.new(math.huge,math.huge));
				local MainX = (TitleScale.X >= BodyScale.X and TitleScale.X) or BodyScale.X;
				local MainY = TitleScale.Y + ((Body.Text:byte() and BodyScale.Y) or 1);
				if BlockFrame:GetAttribute('Already') then
					Compkiller:_Animation(BlockFrame,TweenInfo.new(0.3),{
						Size = UDim2.new(0,MainX + 55,0,MainY + 35)
					});
				else
					BlockFrame:SetAttribute('Already',true)
					BlockFrame.Size = UDim2.new(0, MainX + 45, 0, 0);
					Compkiller:_Animation(BlockFrame,TweenInfo.new(0.3),{
						Size = UDim2.new(0,MainX + 55,0,MainY + 35)
					});
				end;
			end;

			UpdateText();

			local Close = function()
				Compkiller:_Animation(NotifyFrame,TweenInfo.new(0.65,Enum.EasingStyle.Quint),{
					Position = UDim2.new(1,200,0,0)
				});
				task.wait(0.3);
				Compkiller:_Animation(BlockFrame,TweenInfo.new(0.3),{
					Size = UDim2.new(1,0,0,0)
				});
				task.wait(0.35)
				BlockFrame:Destroy();
			end;

			local Show = function()
				Compkiller:_Animation(NotifyFrame,TweenInfo.new(0.5,Enum.EasingStyle.Quint),{
					Position = UDim2.new(0,0,0,0)
				});
			end;

			if typeof(Notify.Duration) == 'number' and Notify.Duration ~= math.huge then
				Compkiller:_Animation(TimeLeft,TweenInfo.new(Notify.Duration + 0.2,Enum.EasingStyle.Linear),{
					Size = UDim2.new(1, 0, 1, 0)
				});
				return task.delay(0.25,function()
					Show();
					task.delay(Notify.Duration + 0.2,Close)
				end);
			end;

			Show();

			return {
				Title = function(self , new)
					Header.Text = new;
					UpdateText(); 
				end,
				Content = function(self , new)
					Body.Text = new;
					UpdateText();
				end,
				SetProgress = function(self , new , Time)
					if Time and Time <= 0 then
						TimeLeft.Size = UDim2.new(new, 0, 1, 0);
						UpdateText();
						return;
					end;
					if new > 1 then
						new = (new / 100);	
					end;
					Compkiller:_Animation(TimeLeft,TweenInfo.new(Time or 0.85,(Time and Enum.EasingStyle.Linear) or Enum.EasingStyle.Quint),{
						Size = UDim2.new(new, 0, 1, 0)
					});
					UpdateText();
				end,
				Close = Close,
			}
		end,
	};

	return Compkiller.NOTIFY_CACHE;
end
