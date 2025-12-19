local weihnachten = workspace.Lobby.Crates.christmasCrate ~= nil

local Window = _G.Window

local cvstatm = Window:CreateTab("Automation", "home")

local cvstacft = cvstatm:CreateToggle({
    Name = "Auto Farm Coins",
    CurrentValue = false,
    Flag = "cvstacft",
    Callback = function(state)
        local autocoinfarm = state
          if state then
            autocoinsfarm()
          end
    end,
})
function autocoinsfarm()
    spawn(function()
        while autocoinfarm do
            wait()
            pcall(function()
                local n1, n2, n3 = pairs(workspace.Collectables:GetDescendants())
                while true do
                    local n4
                    n3, n4 = n1(n2, n3)
                    if n3 == nil then
                        break
                    end
                    if n4:IsA("TouchTransmitter") and n4.Parent.Parent.Name == "Coin" then
                        n4.Parent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
                wait()
            end)
        end
    end)
end

if weihnachten == true then
    local cvstaccft = cvstatm:CreateToggle({
        Name = "Auto Farm Candycanes",
        CurrentValue = false,
        Flag = "cvstaccft",
        Callback = function(state)
            local autocandycanefarm = state
              if state then
                autocandycanesfarm()
              end
        end,
    })
    function autocandycanesfarm()
        spawn(function()
            while autocandycanefarm do
                wait()
                pcall(function()
                    local n5, n6, n7 = pairs(workspace.Collectables:GetDescendants())
                    while true do
                        local n8
                        n7, n8 = n5(n6, n7)
                        if n7 == nil then
                            break
                        end
                        if n8:IsA("TouchTransmitter") and n8.Parent.Parent.Name == "CandyCane" then
                            n8.Parent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                    wait()
                end)
            end
        end)
    end
end

local cvstapunt = cvstatm:CreateToggle({
    Name = "Auto Pickup Nitro",
    CurrentValue = false,
    Flag = "cvstapunt",
    Callback = function(state)
        local autopickupnitro = state
          if state then
            autopickupnitros()
          end
    end,
})
function autopickupnitros()
    spawn(function()
        while autopickupnitro do
            wait()
            pcall(function()
                local n9, n10, n11 = pairs(workspace.Collectables:GetDescendants())
                while true do
                    local n12
                    n11, n12 = n9(n10, n11)
                    if n11 == nil then
                        break
                    end
                    if n12:IsA("TouchTransmitter") and n12.Parent.Parent.Name == "Nitro" then
                        n12.Parent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
                wait()
            end)
        end
    end)
end
