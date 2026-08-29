local Window = _G.Window
local mwfmat = Window:CreateTab("Automation", "home")

local players = game:GetService("Players")
local lp = players.LocalPlayer
local leoistgay = lp.UserId

local plots = workspace.Map.Plots
local lpplot
for _, plot in pairs(plots:GetChildren()) do
	if plot:GetAttribute("OwnerUserId") == leoistgay then
		lpplot = plot
	end
end

local woodholdenpp = lpplot.Utility.WoodHolder.ProximityPrompt
local woodchipperpp = lpplot.Utility.WoodChipper.SellAnchor.ProximityPrompt
local leverpp = lpplot.Utility.Lever.LeverAnchor.ProximityPrompt
local claimmoneyti = lpplot.Utility.UpgradeStands.UpgradeChipper.ClaimMoney.Part.TouchInterest

local autoCollectWoodActive = false
local autoDepositWoodActive = false
local autoCollectMoneyActive = false

local mwfmatacwt = mwfmat:CreateToggle({
    Name = "Auto Collect Wood",
    CurrentValue = false,
    Flag = "mwfmatacwt",
    Callback = function(state)
        autoCollectWoodActive = state
        if state then
            while autoCollectWoodActive do
                fireproximityprompt(woodholdenpp)
				wait(0.001) 
            end
        end
    end,
})

local mwfmatadwt = mwfmat:CreateToggle({
    Name = "Auto Deposit Wood",
    CurrentValue = false,
    Flag = "mwfmatadwt",
    Callback = function(state)
        autoDepositWoodActive = state
        if state then
            while autoDepositWoodActive do
                fireproximityprompt(woodchipperpp)
				wait(0.001) 
            end
        end
    end,
})

local mwfmatcmt = mwfmat:CreateToggle({
    Name = "Auto Collect Money",
    CurrentValue = false,
    Flag = "mwfmatcmt",
    Callback = function(state)
        autoCollectMoneyActive = state
        if state then
            while autoCollectMoneyActive do
                firetouchinterest(claimmoneyti)
				wait(0.001) 
            end
        end
    end,
})
