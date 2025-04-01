local MainLoaderModule = {}
MainLoaderModule._index = MainLoaderModule

MainLoaderModule.SpawnUpdateNotifier = function()
	local MainUi = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local MainFrameCorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Description = Instance.new("TextLabel")
	local Accept = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")

	MainUi.Name = "MainUi"
	MainUi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	MainUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = MainUi
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BackgroundTransparency = 0.250
	MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	MainFrame.Size = UDim2.new(0.214132756, 0, 0.252844512, 0)

	MainFrameCorner.CornerRadius = UDim.new(0, 5)
	MainFrameCorner.Name = "MainFrameCorner"
	MainFrameCorner.Parent = MainFrame

	Title.Name = "Title"
	Title.Parent = MainFrame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.25, 0, -0.25, 0)
	Title.Size = UDim2.new(0.5, 0, 0.25, 0)
	Title.Font = Enum.Font.Ubuntu
	Title.Text = "Notification"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	Description.Name = "Description"
	Description.Parent = MainFrame
	Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description.BackgroundTransparency = 1.000
	Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Description.BorderSizePixel = 0
	Description.Position = UDim2.new(0.0825000033, 0, 0.0599999987, 0)
	Description.Size = UDim2.new(0.834999979, 0, 0.875, 0)
	Description.Font = Enum.Font.Ubuntu
	Description.Text = "Plutonium.lua just updated! if you'd like to use the new version, then rejoin and re execute the script!"
	Description.TextColor3 = Color3.fromRGB(255, 255, 255)
	Description.TextScaled = true
	Description.TextSize = 14.000
	Description.TextWrapped = true

	Accept.Name = "Accept"
	Accept.Parent = MainFrame
	Accept.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
	Accept.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Accept.BorderSizePixel = 0
	Accept.Position = UDim2.new(0.0825000033, 0, 1.03499997, 0)
	Accept.Size = UDim2.new(0.834999979, 0, 0.25, 0)
	Accept.Font = Enum.Font.Ubuntu
	Accept.Text = "I understand"
	Accept.TextColor3 = Color3.fromRGB(0, 0, 0)
	Accept.TextScaled = true
	Accept.TextSize = 14.000
	Accept.TextWrapped = true

	UICorner.CornerRadius = UDim.new(0, 10)
	UICorner.Parent = Accept
	
	Accept.MouseButton1Click:Connect(function()
		MainUi:Destroy()
	end)
end

return MainLoaderModule
