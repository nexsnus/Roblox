repeat wait() until game:IsLoaded()
local found
for _, t in ipairs(game:GetService("CoreGui"):GetDescendants()) do
    if t:IsA("TextLabel") and t.Text == "Novus.gg" then
        found = t
        break
    end
end

if found then
    game:GetService("CoreGui").Rayfield:Destroy()
end
_G.Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
_G.Window = _G.Rayfield:CreateWindow({
   Name = "Novus.gg",
   Icon = 0,
   LoadingTitle = "Novus.gg is loading",
   LoadingSubtitle = "by nexsnus",
   ShowText = "Novus.gg", 
   Theme = "Default",

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = false,
      FolderName = "Novus.gg", 
      FileName = "Novus.gg config"
   },

   Discord = {
      Enabled = false, 
      Invite = "noinvitelink", 
      RememberJoins = true
   },

   KeySystem = false, 
   KeySettings = {
      Title = "Novus.gg Keyguard",
      Subtitle = nil,
      Note = "No method of obtaining the key is provided", 
      FileName = "Key", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"Hello"} 
   }
})

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
elseif game.PlaceId == 3956818381 then --NinjaLegends
   repeat task.wait() until _G.Window
   loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/NinjaLegends/NinjaLegends.lua"))()
elseif game.PlaceId == 123557829667240 then --ChopYourTree
   repeat task.wait() until _G.Window
   loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/ChopYourTree/ChopYourTree.lua"))()
elseif game.PlaceId == 79267089300389 then --MyWoodFarm
   repeat task.wait() until _G.Window
   loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/MyWoodFarm/MyWoodFarm.lua"))()
elseif game.PlaceId == 77922212238973 then --MogtoStealanEgg
   repeat task.wait() until _G.Window
   loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Games/MogtoStealanEgg/MogtoStealanEgg.lua"))()
end

repeat task.wait() until _G.Window
_G.ut = _G.Window:CreateTab("Universal", "infinity")
loadstring(game:HttpGet("https://github.com/nexsnus/Roblox/edit/main/Scripts/Novus.gg/Modules/Universal/Loader/Loader.lua"))()
