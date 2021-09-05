if game:GetService("Workspace").Plant then 
    -- Gui to Lua
-- Version: 3.2

-- Instances:

pizza.Visible = false
local ScreenGui = Instance.new("ScreenGui")
local nom = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Punch = Instance.new("TextButton")
local Guns = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Tazer = Instance.new("TextButton")
local comingsoon = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

nom.Name = "nom"
nom.Parent = ScreenGui
nom.BackgroundColor3 = Color3.fromRGB(172, 0, 0)
nom.Position = UDim2.new(0.204370186, 0, 0.267409474, 0)
nom.Size = UDim2.new(0, 482, 0, 309)

TextLabel.Parent = nom
TextLabel.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TextLabel.Position = UDim2.new(0.293995857, 0, 0.0584192425, 0)
TextLabel.Size = UDim2.new(0, 199, 0, 56)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Prison Life"
TextLabel.TextColor3 = Color3.fromRGB(214, 214, 214)
TextLabel.TextSize = 22.000

UICorner.Parent = TextLabel

Punch.Name = "Punch"
Punch.Parent = nom
syn.protect_gui(ScreenGui)
Punch.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Punch.BorderColor3 = Color3.fromRGB(24, 37, 214)
Punch.BorderSizePixel = 0
Punch.Position = UDim2.new(0.0689450353, 0, 0.384623915, 0)
Punch.Size = UDim2.new(0, 172, 0, 49)
Punch.Modal = true
Punch.Font = Enum.Font.TitilliumWeb
Punch.Text = "Super Punch"
Punch.TextColor3 = Color3.fromRGB(255, 255, 255)
Punch.TextScaled = true
Punch.TextSize = 14.000
Punch.TextWrapped = true
Punch.MouseButton1Down:connect(function()
	mainRemotes = game.ReplicatedStorage meleeRemote = mainRemotes['meleeEvent'] mouse = game.Players.LocalPlayer:GetMouse() punching = false cooldown = false function punch() cooldown = true local part = Instance.new("Part", game.Players.LocalPlayer.Character) part.Transparency = 1 part.Size = Vector3.new(5, 2, 3) part.CanCollide = false local w1 = Instance.new("Weld", part) w1.Part0 = game.Players.LocalPlayer.Character.Torso w1.Part1 = part w1.C1 = CFrame.new(0,0,2) part.Touched:connect(function(hit) if game.Players:FindFirstChild(hit.Parent.Name) then local plr = game.Players:FindFirstChild(hit.Parent.Name) if plr.Name ~= game.Players.LocalPlayer.Name then part:Destroy() for i = 1,100 do meleeRemote:FireServer(plr) end end end end) wait(1) cooldown = false part:Destroy() end mouse.KeyDown:connect(function(key) if cooldown == false then if key:lower() == "f" then punch() end end end)
end)

Guns.Name = "Guns"
Guns.Parent = nom
Guns.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Guns.BorderColor3 = Color3.fromRGB(24, 37, 214)
Guns.BorderSizePixel = 0
Guns.Position = UDim2.new(0.0689450353, 0, 0.705012262, 0)
Guns.Size = UDim2.new(0, 172, 0, 49)
Guns.Font = Enum.Font.TitilliumWeb
Guns.Text = "Give all guns"
Guns.TextColor3 = Color3.fromRGB(255, 255, 255)
Guns.TextScaled = true
Guns.TextSize = 14.000
Guns.TextWrapped = true
Guns.MouseButton1Down:connect(function()
	for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do

		lol = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
		print(lol)
	end
end)

UICorner_2.Parent = nom

Tazer.Name = "Tazer"
Tazer.Parent = nom
Tazer.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Tazer.BorderColor3 = Color3.fromRGB(24, 37, 214)
Tazer.BorderSizePixel = 0
Tazer.Position = UDim2.new(0.581393182, 0, 0.384623915, 0)
Tazer.Size = UDim2.new(0, 172, 0, 49)
Tazer.Font = Enum.Font.TitilliumWeb
Tazer.Text = "Tazer bypass"
Tazer.TextColor3 = Color3.fromRGB(255, 255, 255)
Tazer.TextScaled = true
Tazer.TextSize = 14.000
Tazer.TextWrapped = true
Tazer.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	game.Players.LocalPlayer.CharacterAdded:connect(function()
		game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
		game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	end)
end)

comingsoon.Name = "coming soon"
comingsoon.Parent = nom
comingsoon.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
comingsoon.BorderColor3 = Color3.fromRGB(24, 37, 214)
comingsoon.BorderSizePixel = 0
comingsoon.Position = UDim2.new(0.581393182, 0, 0.705012262, 0)
comingsoon.Size = UDim2.new(0, 172, 0, 49)
comingsoon.Font = Enum.Font.TitilliumWeb
comingsoon.Text = "More feautures coming soon"
comingsoon.TextColor3 = Color3.fromRGB(255, 255, 255)
comingsoon.TextScaled = true
comingsoon.TextSize = 14.000
comingsoon.TextWrapped = true

-- Scripts:

local function FUBJU_fake_script() -- nom.Smooth drag 
	local script = Instance.new('LocalScript', nom)

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
coroutine.wrap(FUBJU_fake_script)()

    end
