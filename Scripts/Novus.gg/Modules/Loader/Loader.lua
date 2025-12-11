repeat wait() until game:IsLoaded()
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
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Universal/AntiAFK/AntiAFK.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Universal/AutoClicker/AutoClicker.lua"))()
