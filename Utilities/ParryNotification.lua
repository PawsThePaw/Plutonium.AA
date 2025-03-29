local Notify = Instance.new("ScreenGui")
local NotificationFrame = Instance.new("Frame")
local AttentionText = Instance.new("TextLabel")
local Description = Instance.new("TextLabel")
local Iunderstand = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

Notify.Name = "Notify"
Notify.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Notify.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

NotificationFrame.Name = "NotificationFrame"
NotificationFrame.Parent = Notify
NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
NotificationFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NotificationFrame.BackgroundTransparency = 0.400
NotificationFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
NotificationFrame.Size = UDim2.new(0.203610107, 0, 0.199105144, 0)

AttentionText.Name = "AttentionText"
AttentionText.Parent = NotificationFrame
AttentionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AttentionText.BackgroundTransparency = 1.000
AttentionText.BorderColor3 = Color3.fromRGB(0, 0, 0)
AttentionText.BorderSizePixel = 0
AttentionText.Position = UDim2.new(0.236628085, 0, -0.280898869, 0)
AttentionText.Size = UDim2.new(0.525840223, 0, 0.280898869, 0)
AttentionText.Font = Enum.Font.SourceSansBold
AttentionText.Text = "ATTENTION!"
AttentionText.TextColor3 = Color3.fromRGB(255, 255, 255)
AttentionText.TextScaled = true
AttentionText.TextSize = 14.000
AttentionText.TextWrapped = true

Description.Name = "Description"
Description.Parent = NotificationFrame
Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description.BackgroundTransparency = 1.000
Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description.BorderSizePixel = 0
Description.Size = UDim2.new(0.999096394, 0, 1, 0)
Description.Font = Enum.Font.SourceSans
Description.Text = "To activate the script, you must manually parry once first. Read this Please."
Description.TextColor3 = Color3.fromRGB(255, 255, 255)
Description.TextScaled = true
Description.TextSize = 14.000
Description.TextWrapped = true

Iunderstand.Name = "I understand"
Iunderstand.Parent = NotificationFrame
Iunderstand.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
Iunderstand.BorderColor3 = Color3.fromRGB(0, 0, 0)
Iunderstand.BorderSizePixel = 0
Iunderstand.Position = UDim2.new(0.197190076, 0, 1.03932583, 0)
Iunderstand.Size = UDim2.new(0.604716241, 0, 0.174157307, 0)
Iunderstand.Font = Enum.Font.SourceSans
Iunderstand.Text = "I understand, Continue and Let me Use The Script"
Iunderstand.TextColor3 = Color3.fromRGB(0, 0, 0)
Iunderstand.TextScaled = true
Iunderstand.TextSize = 14.000
Iunderstand.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = Iunderstand

Iunderstand.MouseButton1Click:Connect(function()
	getgenv().Understood = true
	Notify:Destroy()
end)
