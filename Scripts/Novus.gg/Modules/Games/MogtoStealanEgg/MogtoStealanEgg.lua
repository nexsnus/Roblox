local Window = _G.Window
local mtsaett = Window:CreateTab("Teleports", "refresh-ccw")
local mtsaemt = Window:CreateTab("Misc", "credit-card")

local players = game:GetService("Players")
local lp = players.LocalPlayer
local hrp = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")

base = lp:GetAttribute("Plot")
pcf = workspace.Game.Plots:FindFirstChild(base).Build.Floor.Grass.CFrame  * CFrame.new(0, 10, 0)
zcf = {}
zcf["Sub"] = CFrame.new(-708, 0, 0) * CFrame.new(0, 10, 0)
zcf["Cave"] = CFrame.new(-823, 0, 0) * CFrame.new(0, 10, 0)
zcf["Desert"] = CFrame.new(-967, 0, 0) * CFrame.new(0, 10, 0)
zcf["Snow"] = CFrame.new(-1155, 0, 0) * CFrame.new(0, 10, 0)
zcf["Volcanic"] = CFrame.new(-1404, 0, 0) * CFrame.new(0, 10, 0)
zcf["Hacked"] = CFrame.new(-1713, 0, 0) * CFrame.new(0, 10, 0)
zcf["Abyss"] = CFrame.new(-2142, 0, 0) * CFrame.new(0, 10, 0)
zcf["Prehistoric"] = CFrame.new(-2662, 0, 0) * CFrame.new(0, 10, 0)
zcf["Cosmic"] = CFrame.new(-3180, 0, 0) * CFrame.new(0, 10, 0)
local zn = {"Sub", "Cave", "Desert", "Snow", "Volcanic", "Hacked", "Abyss", "Prehistoric", "Cosmic"}


mtsaettztd = mtsaett:CreateDropdown({
    Name = "Zone Teleports",
    Options = zn,
    CurrentOption = {};
    MultipleOptions = false,
    Flag = "mtsaettztd",
    Callback = function(Option)
    	hrp.CFrame = zcf[Option[1]]
        mtsaettztd:Set({})
    end,
})

mtsaettbtb = mtsaett:CreateButton({
    Name = "Teleport to Base",
    Callback = function()
    	hrp.CFrame = pcf
    end,
})


mtsaemtiab = mtsaemt:CreateButton({
    Name = "Infinite Appeal",
    Callback = function()
    	lp:SetAttribute("Power", 9.9e+100)
    end,
})
