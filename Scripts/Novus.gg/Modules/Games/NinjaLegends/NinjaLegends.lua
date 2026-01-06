local Window = _G.Window

local nlatm = Window:CreateTab("Automation", "home")
local nletm = Window:CreateTab("Eggs", "egg")
local nlttm = Window:CreateTab("Teleports", "vault")
local nlmtm = Window:CreateTab("Misc", "credit-card")

local autoswingfarm = false
local autosellfarm = false
local autobuyswordfarm = false
local autobuybeltfarm = false
local autobuyskillfarm = false
local autobuyrankfarm = false
local autobuylightskillfarm = false
local autobuydarkskillfarm = false
local autohatchinfinityvoidcrystalfarm = false
local ninjaEvent = game:GetService("Players").LocalPlayer.ninjaEvent
local bestIsland = "Blazing Vortex Island"

local nlast = nlatm:CreateToggle({
    Name = "Auto Swing",
    CurrentValue = false,
    Flag = "cvstacft",
    Callback = function(state)
        autoswingfarm = state
          if state then
            autoswing()
          end
    end,
})
function autoswing()
    spawn(function()
        while autoswingfarm do
            wait()
            pcall(function()
				local eventName = "swingKatana"
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:FindFirstChild("ninjitsuGain") then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
						break
					end
				end
				ninjaEvent:FireServer(eventName)
				wait()
            end)
        end
    end)
end

local nlaset = nlatm:CreateToggle({
    Name = "Auto Sell",
    CurrentValue = false,
    Flag = "cvstacft",
    Callback = function(state)
        autosellfarm = state
          if state then
            autosell()
          end
    end,
})
function autosell()
    spawn(function()
        while autosellfarm do
            wait()
            pcall(function()
				game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				wait(0.1)
				game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
				wait(0.1)
            end)
        end
    end)
end

local nlabst = nlatm:CreateToggle({
    Name = "Auto Buy Swords",
    CurrentValue = false,
    Flag = "cvstacft",
    Callback = function(state)
        autobuyswordfarm = state
          if state then
            autobuysword()
          end
    end,
})
function autobuysword()
    spawn(function()
        while autobuyswordfarm do
            wait()
            pcall(function()
				local eventName = "buyAllSwords"
				ninjaEvent:FireServer(eventName, bestIsland)
				wait(0.5)
            end)
        end
    end)
end

local nlabbt = nlatm:CreateToggle({
    Name = "Auto Buy Belts",
    CurrentValue = false,
    Flag = "cvstacft",
    Callback = function(state)
        autobuybeltfarm = state
          if state then
            autobuybelt()
          end
    end,
})
function autobuybelt()
    spawn(function()
        while autobuybeltfarm do
            wait()
            pcall(function()
				local eventName = "buyAllBelts"
				ninjaEvent:FireServer(eventName, bestIsland)
				wait(0.5)
            end)
        end
    end)
end

local nlabskt = nlatm:CreateToggle({
    Name = "Auto Buy Skills",
    CurrentValue = false,
    Flag = "cvstacft",
    Callback = function(state)
        autobuyskillfarm = state
          if state then
            autobuyskill()
          end
    end,
})
function autobuyskill()
    spawn(function()
        while autobuyskillfarm do
            wait()
            pcall(function()
				local eventName = "buyAllSkills"
				ninjaEvent:FireServer(eventName, bestIsland)
				wait(0.5)
            end)
        end
    end)
end

local nlabrt = nlatm:CreateToggle({
    Name = "Auto Buy Ranks",
    CurrentValue = false,
    Flag = "cvstacft",
    Callback = function(state)
        autobuyrankfarm = state
          if state then
            autobuyrank()
          end
    end,
})
function autobuyrank()
    spawn(function()
        while autobuyrankfarm do
            wait()
            pcall(function()
				local ranks = game:GetService("ReplicatedStorage"):WaitForChild("Ranks"):WaitForChild("Ground"):GetChildren()
				local ownedRanks = game:GetService("Players").LocalPlayer:WaitForChild("ownedRanks"):GetChildren()
				local eventName = "buyRank"
				for _, rank in pairs(ranks) do
					for _, ownedRank in pairs(ownedRanks) do
						if ownedRank.Name == rank.Name then 
							break 
						end
					end
					ninjaEvent:FireServer(eventName, rank.Name)
					wait(1)
				end
            end)
        end
    end)
end

local function buyKarmaSkills(karmaSkills, ownedKarmaSkills, eventName)
    for _, karmaSkill in pairs(karmaSkills) do
        for _, ownedKarmaSkill in pairs(ownedKarmaSkills) do
            if ownedKarmaSkill.Name == karmaSkill.Name then 
				break 
			end
        end
        ninjaEvent:FireServer(eventName, karmaSkill.Name)
        wait(1.5)
    end
end
local nlablst = nlatm:CreateToggle({
    Name = "Auto Buy Light Skills",
    CurrentValue = false,
    Flag = "cvstacft",
    Callback = function(state)
        autobuylightskillfarm = state
          if state then
            autobuylightskill()
          end
    end,
})
function autobuylightskill()
    spawn(function()
        while autobuylightskillfarm do
            wait()
            pcall(function()
				local lightSkills = game:GetService("ReplicatedStorage"):WaitForChild("Light Skills"):WaitForChild("Ground"):GetChildren()
				local ownedLightSkills = game:GetService("Players").LocalPlayer:WaitForChild("ownedLightSkills"):GetChildren()
				local eventName = "buyLightSkill"
				buyKarmaSkills(lightSkills, ownedLightSkills, eventName)
            end)
        end
    end)
end
local nlabdst = nlatm:CreateToggle({
    Name = "Auto Buy Dark Skills",
    CurrentValue = false,
    Flag = "cvstacft",
    Callback = function(state)
        autobuydarkskillfarm = state
          if state then
            autobuydarkskill()
          end
    end,
})
function autobuydarkskill()
    spawn(function()
        while autobuydarkskillfarm do
            wait()
            pcall(function()
				local darkSkills = game:GetService("ReplicatedStorage"):WaitForChild("Dark Skills"):WaitForChild("Ground"):GetChildren()
				local ownedDarkSkills = game:GetService("Players").LocalPlayer:WaitForChild("ownedDarkSkills"):GetChildren()
				local eventName = "buyDarkSkill"
				buyKarmaSkills(darkSkills, ownedDarkSkills, eventName)
            end)
        end
    end)
end

local nlahivct = nlatm:CreateToggle({
    Name = "Auto Hatch Infinity Void Crystal",
    CurrentValue = false,
    Flag = "cvstacft",
    Callback = function(state)
        autohatchinfinityvoidcrystalfarm = state
          if state then
            autohatchinfinityvoidcrystal()
          end
    end,
})
function autohatchinfinityvoidcrystal()
    spawn(function()
        while autohatchinfinityvoidcrystalfarm do
            wait()
            pcall(function()
				local openCrystalRemote = game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote")
				local autoEvolveRemote = game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("autoEvolveRemote")
				openCrystalRemote:InvokeServer("openCrystal", "Infinity Void Crystal")
				wait(1.5)
				autoEvolveRemote:InvokeServer("autoEvolvePets")
				wait(1.5)
            end)
        end
    end)
end

local Islands = {}
for i,v in next, game.workspace.islandUnlockParts:GetChildren() do 
    if v then 
        table.insert(Islands, v.Name)
    end
end
local nlitd = nlttm:CreateDropdown({
   Name = "Teleport to Island",
   Options = Islands,
   CurrentOption = {},
   MultipleOptions = false,
   Flag = "", 
   Callback = function(Options)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.islandUnlockParts[Options].islandSignPart.CFrame
   end,
})

local lightIslands =
    {["Mystical Waters"]={347.74, 8824.53, 114.27},
    ["Sword of Legends"]={1834.15, 38.70, -141.37},
    ["Elemental Tornado"]={299.75, 30383.09, -90.15},
    ["Zen Master's Blade"]={5044.94, 49.08, 1618.46}}
local darkIslands =
    {["Lava Pit"]={-116.63, 12952.53, 271.14},
    ["Tornado"]={325.64, 16872.09, -9.99},
    ["Swords of Ancients"]={648.36, 38.70, 2409.72},
    ["Fallen Infinity Blade"]={1875.94, 39.43, -6805.74}}
local lightIslandsNames = {}
local darkIslandsNames = {}
local function insertNames(fromTable, toTable)
    for name, _ in pairs(fromTable) do
        table.insert(toTable, name)
    end
end
insertNames(lightIslands, lightIslandsNames)
insertNames(darkIslands, darkIslandsNames)
x = nil
y = nil 
z = nil
local function tpToKarmaIsland(fromTable, islandName)
    for name, table in pairs(fromTable) do
        if name == islandName then
            for _, coord in pairs(table) do
                if x == nil then
                    x = coord
                elseif x ~= nil and y == nil then
                    y = coord
                else
                    z = coord
                end
            end
        end
    end
end
local nllitd = nlttm:CreateDropdown({
   Name = "Teleport to Light Island",
   Options = {lightIslandsNames},
   CurrentOption = {},
   MultipleOptions = false,
   Flag = "", 
   Callback = function(Options)
		tpToKarmaIsland(lightIslands, Options)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y ,z)
        x = nil
        y = nil
        z = nil
   end,
})
local nlditd = nlttm:CreateDropdown({
   Name = "Teleport to Dark Island",
   Options = {darkIslandsNames},
   CurrentOption = {},
   MultipleOptions = false,
   Flag = "", 
   Callback = function(Options)
		tpToKarmaIsland(darkIslands, Options)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y ,z)
        x = nil
        y = nil
        z = nil
   end,
})

local nluib = nlmtm:CreateButton({
   Name = "Unlock Islands",
   Callback = function()
		local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
   end,
})

local chests =
{"Mythical Chest", "Thunder Chest" , "Golden Chest", "Enchanted Chest", "Magma Chest","Legends Chest",
"Eternal Chest", "Sahara Chest", "Ancient Chest","Midnight Shadow Chest",
"Wonder Chest", "Ultra Ninjiutsu Chest", "Golden Zen Chest","Skystorm Masters Chest",
"Chaos Legends Chest", "Soul Fusion Chest"}
local chestRemote = game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("checkChestRemote")
local nlcacb = nlmtm:CreateButton({
   Name = "Collect all Chests",
   Callback = function()
		for i, v in pairs(chests) do
            chestRemote:InvokeServer(v)
            wait(3)
        end
   end,
})
local nlclkcb = nlmtm:CreateButton({
   Name = "Collect Light Karma Chest",
   Callback = function()
		chestRemote:InvokeServer("Light Karma Chest")
		wait(3)
   end,
})
local nlcdkcb = nlmtm:CreateButton({
   Name = "Collect Dark Karma Chest",
   Callback = function()
		chestRemote:InvokeServer("Evil Karma Chest")
		wait(3)
   end,
})
