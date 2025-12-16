local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local banane = workspace.Gameplay.Dynamic.Bosses
local currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.mainLobby_island.Systems.EggStand_1.EggStand.ProximityAll

local Window = _G.Window
local csxmat = Window:CreateTab("Automation", "home")

local csxmatakbt = csxmat:CreateToggle({
    Name = "Auto Kill Boss",
    CurrentValue = false,
    Flag = "csxmatakbt",
    Callback = function(state)
        if state then
            spawn(function()
                while state do
                    local children = banane:GetChildren()
                    if #children > 0 then
                        for _, boss in ipairs(children) do
                            if boss:IsA("BasePart") then
                                humanoidRootPart.CFrame = boss.CFrame
                                task.wait(0.7)
                            end
                        end
                    end
                    task.wait(0.5)
                end
            end)
        end
    end,
})   

local csxmet = Window:CreateTab("Eggs", "egg")

local csxmetaht = csxmet:CreateToggle({
        Name = "Autohatch selected Egg",
        CurrentValue = false,
        Flag = "csxmetaht",
        Callback = function(state)
            if state then
                currentSelectedEgg.MaxActivationDistance = 10000000000
                CurrentSelectedEgg.KeyboardKeyCode = "KeypardNine"
            else
                currentSelectedEgg.MaxActivationDistance = 10
                CurrentSelectedEgg.KeyboardKeyCode = "R"
            end
            while state do 
                fireproximityprompt(currentSelectedEgg)
            end
        end,
})
local csxmetesd = cxsmet:CreateDropdown({
   Name = "Dropdown Example",
   Options = {"Basic Egg","Shroom Egg","Flower Egg","Nature Egg","Leafy Egg","Cactus Egg","Rocks Egg","Magma Egg","Dragon Egg","Sponge Egg","Fishtank Egg","Ice Egg","Snowman Egg","Cloud Egg","Sky Egg","Robotic Egg","Galaxy Egg","Christmas Present Egg","Christmas Snowball Egg","Christmas Ornament Egg"},
   CurrentOption = {"Basic Egg"},
   MultipleOptions = false,
   Flag = "csxmetesd",
   Callback = function(Option)
            if Option == "Basic Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.mainLobby_island.Systems.EggStand_1.EggStand.ProximityAll
            elseif Option == "Shroom Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.mainLobby_island.Systems.EggStand_2.EggStand.ProximityAll
            elseif Option == "Flower Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.mainLobby_island.Systems.EggStand_3.EggStand.ProximityAll
            elseif Option == "Nature Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.nature_island.Systems.EggStand_1.EggStand.ProximityAll
            elseif Option == "Leafy Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.nature_island.Systems.EggStand_2.EggStand.ProximityAll
            elseif Option == "Cactus Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.desert_island.Systems.EggStand_Cactus.EggStand.ProximityAll
            elseif Option == "Rocks Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.desert_island.Systems.EggStand_Rocks.EggStand.ProximityAll
            elseif Option == "Magma Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.volcano_island.Systems.EggStand_Magma.EggStand.ProximityAll
            elseif Option == "Dragon Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.volcano_island.Systems.EggStand_Dragon.EggStand.ProximityAll
            elseif Option == "Sponge Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.water_island.Systems.EggStand_Sponge.EggStand.ProximityAll
            elseif Option == "Fishtank Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.water_island.Systems.EggStand_FishTank.EggStand.ProximityAll
            elseif Option == "Ice Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.ice_island.Systems.EggStand_Ice.EggStand.ProximityAll
            elseif Option == "Snowman Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.ice_island.Systems.EggStand_Snowman.EggStand.ProximityAll
            elseif Option == "Cloud Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.cloud_island.Systems.EggStand_Cloud.EggStand.ProximityAll
            elseif Option == "Sky Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.cloud_island.Systems.EggStand_Sky.EggStand.ProximityAll
            elseif Option == "Robotic Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.cosmic_island.Systems.EggStand_Robotic.EggStand.ProximityAll
            elseif Option == "Galaxy Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.cosmic_island.Systems.EggStand_Galaxy.EggStand.ProximityAll
            elseif Option == "Christmas Present Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.limitedChristmas_island.Systems.EggStand_1.EggStand.ProximityAll
            elseif Option == "Christmas Snowball Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.limitedChristmas_island.Systems.EggStand_2.EggStand.ProximityAll
            elseif Option == "Christmas Ornament Egg" then
                currentSelectedEgg = workspace.LoadedWorld.start_world.Islands.limitedChristmas_island.Systems.EggStand_3.EggStand.ProximityAll
            end
   end,
})

local csxmmt = Window:CreateTab("Miscellaneous", "credit-card")
local csxmmtguis = csxmmt:CreateSection("Guis")

local csxmmtogmt = csxmmt:CreateToggle({
        Name = "Open Gold Machine",
        CurrentValue = false,
        Flag = "csxmmtogmt",
        Callback = function(state)
            if state then
                game:GetService("Players").LocalPlayer.PlayerGui.GoldMachine.Enabled = true
            else
                game:GetService("Players").LocalPlayer.PlayerGui.GoldMachine.Enabled = false
            end
        end,
})
local csxmmtocmt = csxmmt:CreateToggle({
        Name = "Open Cosmic Machine",
        CurrentValue = false,
        Flag = "csxmmtocmt",
        Callback = function(state)
            if state then
                game:GetService("Players").LocalPlayer.PlayerGui.CosmicMachine.Enabled = true
            else
                game:GetService("Players").LocalPlayer.PlayerGui.CosmicMachine.Enabled = false
            end
        end,
})
local csxmmtoctmt = csxmmt:CreateToggle({
        Name = "Open Craft Machine",
        CurrentValue = false,
        Flag = "csxmmtoctmt",
        Callback = function(state)
            if state then
                game:GetService("Players").LocalPlayer.PlayerGui.CraftMachine.Enabled = true
            else
                game:GetService("Players").LocalPlayer.PlayerGui.CraftMachine.Enabled = false
            end
        end,
})
local csxmmtodct = csxmmt:CreateToggle({
        Name = "Open Daycare",
        CurrentValue = false,
        Flag = "csxmmtodct",
        Callback = function(state)
            if state then
                game:GetService("Players").LocalPlayer.PlayerGui.Daycare.Enabled = true
            else
                game:GetService("Players").LocalPlayer.PlayerGui.Daycare.Enabled = false
            end
        end,
})
local csxmmtofmt = csxmmt:CreateToggle({
        Name = "Open Forge Machine",
        CurrentValue = false,
        Flag = "csxmmtofmt",
        Callback = function(state)
            if state then
                game:GetService("Players").LocalPlayer.PlayerGui.ForgeMachine.Enabled = true
            else
                game:GetService("Players").LocalPlayer.PlayerGui.ForgeMachine.Enabled = false
            end
        end,
})
local csxmmtormt = csxmmt:CreateToggle({
        Name = "Open Rainbow Machine",
        CurrentValue = false,
        Flag = "csxmmtormt",
        Callback = function(state)
            if state then
                game:GetService("Players").LocalPlayer.PlayerGui.RainbowMachine.Enabled = true
            else
                game:GetService("Players").LocalPlayer.PlayerGui.RainbowMachine.Enabled = false
            end
        end,
})
local csxmmtopit = csxmmt:CreateToggle({
        Name = "Open Pet Index",
        CurrentValue = false,
        Flag = "csxmmtopit",
        Callback = function(state)
            if state then
                game:GetService("Players").LocalPlayer.PlayerGui.PetIndex.Enabled = true
            else
                game:GetService("Players").LocalPlayer.PlayerGui.PetIndex.Enabled = false
            end
        end,
})
local csxmmtdrguit = csxmmt:CreateToggle({
        Name = "Disable Rebirth Gui",
        CurrentValue = false,
        Flag = "csxmmtdrguit",
        Callback = function(state)
            if state then
                game:GetService("Players").LocalPlayer.PlayerGui.Rebirth.Enabled = false
            else
                game:GetService("Players").LocalPlayer.PlayerGui.Rebirth.Enabled = true
            end
        end,
})
