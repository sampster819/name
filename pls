if game:GetService("Workspace").Players.Phantoms then 
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local Lap = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local UICorner_2 = Instance.new("UICorner")
	local Aimbot = Instance.new("TextButton")
	local ESP = Instance.new("TextButton")

	--Properties:

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	Lap.Name = "Lap"
	Lap.Parent = ScreenGui
	Lap.BackgroundColor3 = Color3.fromRGB(172, 0, 0)
	Lap.Position = UDim2.new(0.237789199, 0, 0.344011128, 0)
	Lap.Size = UDim2.new(0, 483, 0, 291)

	UICorner.Parent = Lap

	TextLabel.Parent = Lap
	TextLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	TextLabel.Position = UDim2.new(0.293995857, 0, 0.0584192425, 0)
	TextLabel.Size = UDim2.new(0, 199, 0, 56)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = "Aimbot & ESP"
	TextLabel.TextColor3 = Color3.fromRGB(214, 214, 214)
	TextLabel.TextSize = 22.000

	UICorner_2.Parent = TextLabel

	Aimbot.Name = "Aimbot"
	Aimbot.Parent = Lap
	syn.protect_gui(ScreenGui)
	Aimbot.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Aimbot.BorderColor3 = Color3.fromRGB(24, 37, 214)
	Aimbot.BorderSizePixel = 0
	Aimbot.Position = UDim2.new(0.0502728373, 0, 0.340517521, 0)
	Aimbot.Size = UDim2.new(0, 172, 0, 49)
	Aimbot.Font = Enum.Font.TitilliumWeb
	Aimbot.Text = ""
	Aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
	Aimbot.TextScaled = true
	Aimbot.TextSize = 14.000
	Aimbot.TextWrapped = true

	ESP.Name = "ESP"
	ESP.Parent = Lap
	ESP.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	ESP.BorderColor3 = Color3.fromRGB(24, 37, 214)
	ESP.BorderSizePixel = 0
	ESP.Position = UDim2.new(0.0502728373, 0, 0.653232336, 0)
	ESP.Size = UDim2.new(0, 172, 0, 49)
	ESP.Font = Enum.Font.TitilliumWeb
	ESP.Text = "ESP"
	ESP.TextColor3 = Color3.fromRGB(255, 255, 255)
	ESP.TextScaled = true
	ESP.TextSize = 14.000
	ESP.TextWrapped = true

	-- Scripts:

	local function YCPISTW_fake_script() -- Lap.Smooth drag 
		local script = Instance.new('LocalScript', Lap)

		local UIS = game:GetService("UserInputService")
		function dragify(Frame)
			dragToggle = nil
			local dragSpeed = 0.50
			dragInput = nil
			dragStart = nil
			local dragPos = nil
			function updateInput(input)
				local Delta = input.Position - dragStart
				local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
				game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.30), {Position = Position}):Play()
			end
			Frame.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
					dragToggle = true
					dragStart = input.Position
					startPos = Frame.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle = false
						end
					end)
				end
			end)
			Frame.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			game:GetService("UserInputService").InputChanged:Connect(function(input)
				if input == dragInput and dragToggle then
					updateInput(input)
				end
			end)
		end

		dragify(script.Parent)
	end
	coroutine.wrap(YCPISTW_fake_script)()
end
