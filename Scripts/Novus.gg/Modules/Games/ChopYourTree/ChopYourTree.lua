local Window = _G.Window

local cytatm = Window:CreateTab("Automation", "home")

local autocollectluckyblockfarm = false
local autochoptreefarm = false

local cytaclbt = cytatm:CreateToggle({
    Name = "Auto Collect Lucky Blocks",
    CurrentValue = false,
    Flag = "cytaclbt",
    Callback = function(state)
        autocollectluckyblockfarm = state
          if state then
            autocollectluckyblock()
          end
    end,
})
function autocollectluckyblock()
    spawn(function()
        while autocollectluckyblockfarm do
            wait()
            pcall(function()
				local Players = game:GetService("Players")
                local player = Players.LocalPlayer
                local character = player.Character or player.CharacterAdded:Wait()
                local hrp = character:WaitForChild("HumanoidRootPart")
                local folder = workspace.Debris
                local proximityPrompt
                for i, v in ipairs(folder:GetDescendants()) do
	                if v:IsA("ProximityPrompt") then
		                proximityPrompt = v
		                break
	                end
                end
                if proximityPrompt then
                    wait(5)
                    local newCF = proximityPrompt.Parent.CFrame
                    local oldCF = hrp.CFrame
                    hrp.CFrame = newCF
                    wait(1)
                    fireproximityprompt(proximityPrompt)
                    wait(3)
                    hrp.CFrame = oldCF
                    wait(1)
                    if player.Backpack:FindFirstChild("Axe") then
                        local tool = player.Backpack:WaitForChild("Axe")
                        local humanoid = character:WaitForChild("Humanoid")
                        humanoid:EquipTool(tool)
                    end
                end
            end)
        end
    end)
end

local cytactt = cytatm:CreateToggle({
    Name = "Auto Chop Tree",
    CurrentValue = false,
    Flag = "cytactt",
    Callback = function(state)
        autochoptreefarm = state
          if state then
            autochoptree()
          end
    end,
})
function autochoptree()
    spawn(function()
        while autochoptreefarm do
            wait()
            pcall(function()
				game:GetService("ReplicatedStorage").Remotes.AxeSwing:FireServer()
            end)
        end
    end)
end
