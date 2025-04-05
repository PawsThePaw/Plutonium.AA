repeat
    task.wait()
until game:IsLoaded()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Test/refs/heads/main/d", true))()
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/Main/Library.lua"))()

local Notify = AkaliNotif.Notify;

pcall(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/eZ6TwVZM"))()
end)

local KeywordsToCheck = {
    {Name = "Print", Function = print},
    {Name = "Warn", Function = warn},
    {Name = "Error", Function = error},
    {Name = "Writefile", Function = writefile},
    {Name = "Readfile", Function = readfile},
    {Name = "Getgenv", Function = getgenv},
    {Name = "Drawing", Function = Drawing},
    {Name = "Debug Library", Function = debug},
    {Name = "Hookmetamethod", Function = hookmetamethod},
    {Name = "Hookfunction", Function = hookfunction},
    {Name = "Cloneref", Function = cloneref},
    {Name = "Newcclosure", Function = newcclosure},
    {Name = "GetGc", Function = getgc}
}

local FailedKeywords = {}

for _, Keyword in ipairs(KeywordsToCheck) do
    if type(Keyword.Function) == "nil" then
        table.insert(FailedKeywords, Keyword.Name)
    end
end

if #FailedKeywords > 0 then
    NotificationLibrary:SendNotification("Warning", "We've detected some functions that your executor can't run/use! Plutonium.lua will function abit unstable and some game supports might not work. Use lite versions if available", 20)
else
    NotificationLibrary:SendNotification("Success", "Passed Compatibility Checks! Plutonium.lua is very likely to function normally.", 8)
end

local Window = Library:Window("Plutonium.lua", function(Script)
    Notify({
        Description = "Game support is now launching! Please Wait...";
        Title = "System";
        Duration = 3;
    });
        loadstring(game:HttpGet(Script, true))()
end, {
    Translate = false
})

-- [Blade Ball] --
if getrawmetatable and hookmetamethod then
    Window:Game({
        Place = 13772394625,
        Status = "Working",
        Script = "https://raw.githubusercontent.com/PawsThePaw/Developer-Stuff/refs/heads/main/BladeBall-obfuscated.lua",
        UpdateDate = Window:GetDate("Local", "29/03/2025")
    })
else
    Window:Game({
        Place = 13772394625,
        Status = "Working",
        Script = "https://raw.githubusercontent.com/PawsThePaw/Test/refs/heads/main/CurrentBB-obfuscated.lua",
        UpdateDate = Window:GetDate("Local", "29/03/2025")
    })
end

-- [Jujutsu Shenanigans] --
Window:Game({
    Place = 9391468976,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsThePaw/ozware-2/refs/heads/main/JujutsuShenanigans-obfuscated.lua",
    UpdateDate = Window:GetDate("Local", "29/03/2025")
})

-- [Flee The Facility] --
Window:Game({
    Place = 893973440,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/FleeTheFacilityFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Grab Money Simulator] --
Window:Game({
    Place = 14157644155,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/MoneyGrabFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Funky Friday] --
Window:Game({
    Place = 6447798030,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Lolz/main/V3.6.5/Funky%20Friday-obfuscated.lua",
    UpdateDate = Window:GetDate("Local", "31/08/2024")
})

-- [Royale High] --
Window:Game({
    Place = 735030788,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/RoyaleHighFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [3008] --
Window:Game({
    Place = 2768379856,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/3008Fixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Bakery Simulator] --
Window:Game({
    Place = 6915291292,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/BakerySimulatorFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Build a Boat For Treasure] --
Window:Game({
    Place = 537413528,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/BOAFTFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Arsenal] --
Window:Game({
    Place = 286090429,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/ArsenalFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Muscle Legends] --
Window:Game({
    Place = 3623096087,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/MuscleLegendsFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Natural disasters] --
Window:Game({
    Place = 189707,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/NaturalDisastersFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Nico's Nextbots] --
Window:Game({
    Place = 10118559731,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/NicoNextbotFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Evade] --
Window:Game({
    Place = 9872472334,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/EvadeFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Shoot Out] --
Window:Game({
    Place = 4738545896,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/ShootOutFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Op Ninja] --
Window:Game({
    Place = 4225025295,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/OpNinjaFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Parkour Ninja] --
Window:Game({
    Place = 147848991,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/BeAParkourNinjaFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Giant Survival] --
Window:Game({
    Place = 4003872968,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/GiantSurvivalFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Lucky Blocks] --
Window:Game({
    Place = 662417684,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/LuckyBlockFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Ninja Legends] --
Window:Game({
    Place = 3956818381,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/NinjaLegendsFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Legends Of Speed] --
Window:Game({
    Place = 3101667897,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/LegendsOfSpeedFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Dusty Crusty Trip] --
Window:Game({
    Place = 16389395869,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/DustyScriptFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Driving simulator] --
Window:Game({
    Place = 4410049285,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/DrivingSimulatorFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Warrior Simulator] --
Window:Game({
    Place = 16436007861,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/WarriorSimulatorFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Tsunami Game] --
Window:Game({
    Place = 7993293100,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/TsunamiGameFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

-- [Laundry Simulator] --
Window:Game({
    Place = 6305942109,
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsTheStorage/Storage-1/main/LaundrySimulatorFixed.txt",
    UpdateDate = Window:GetDate("Local", "20/07/2024")
})

Window:Game({
    Status = "Working",
    Script = "https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/refs/heads/main/Versions%202/V3.7.8.txt",
    Custom = {
        Name = "Revert Version"
    },
    UpdateDate = Window:GetDate("Local", "02/04/2025")
})

Window:Initiate()

task.spawn(function()
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end)
end)