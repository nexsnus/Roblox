repeat wait() until game:IsLoaded()
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
_G.Maclib = loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/ui-libs/Maclib/source.lua"))()
_G.Window = _G.Maclib:Window({
   Title = "Novus.gg",
   Subtitle = gameName,
   Size = UDim2.fromOffset(868, 650),
   DragStyle = 1,
   DisabledWindowControls = {},
   ShowUserInfo = true,
   Keybind = Enum.KeyCode.K,
   AcrylicBlur = true,
})
local banane = false

if banane == true then
if game.PlaceId == 7305309231 then --TaxiBoss
    repeat task.wait() until _G.Window
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/TaxiBoss/TaxiBoss.lua"))()
elseif game.PlaceId == 123821081589134 then --BreakYourBones
    repeat task.wait() until _G.Window
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/BreakYourBones/BreakYourBones.lua"))()
elseif game.PlaceId == 96601927506261 then --BeeRich
    repeat task.wait() until _G.Window
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/BeeRich/BeeRich.lua"))()
elseif game.PlaceId == 286090429 then --Arsenal
   repeat task.wait() until _G.Window
   loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/Arsenal/Arsenal.lua"))()
elseif game.PlaceId == 5293755937 then --SpeedRunSimulator
   repeat task.wait() until _G.Window
   loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/SpeedRunSimulator/SpeedRunSimulator.lua"))()
elseif game.PlaceId == 120575147399256 then --ClickerSimulatorX
   repeat task.wait() until _G.Window
   loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/ClickerSimulatorX/ClickerSimulatorX.lua"))()   
elseif game.PlaceId == 93787311916283 then --HorseRace
   repeat task.wait() until _G.Window
   loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/HorseRace/HorseRace.lua"))()   
elseif game.PlaceId == 120546894379169 then --CarsvsTrucks
   repeat task.wait() until _G.Window
   loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/CarsvsTrucks/CarsvsTrucks.lua"))()
elseif game.PlaceId == 75992362647444 then --TapSimulator
   repeat task.wait() until _G.Window
   loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/TapSimulator/TapSimulator.lua"))()
end
end

repeat task.wait() until _G.Window
_G.utg = _G.Window:TabGroup()
_G.ut = _G.utg:Tab({ Name = "Universal", Image = "rbxassetid://7733964640" })
loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Universal/AntiAFK/AntiAFK.lua"))() --AnitAFK
loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Universal/AutoClicker/AutoClicker.lua"))() --AutoClicker
loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Universal/FPS/LowGraphicsMode/LowGraphicsMode.lua"))() --LowGraphicsMode
