local Window = _G.Window
local hrmat = Window:CreateTab("Automation", "home")

local autoWinsFarmActive = false
local autoRebirthActive = false
local autoSuperRebirthActive = false

local hrmatawft = hrmat:CreateToggle({
    Name = "Auto Wins Farm",
    CurrentValue = false,
    Flag = "hrmatawft",
    Callback = function(state)
        autoWinsFarmActive = state
        if state then
            while autoWinsFarmActive do
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.5.1"].knit.Services.RandomPotionService.RE.BuyPotionEvent:FireServer(table.unpack({
                     = -9e60,
                     = {},
                     = true,
                     = "hax",
                }))
                wait(0.05)  
            end
        end
    end,
})   

local hrmatart = hrmat:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "hrmatart",
    Callback = function(state)
        autoRebirthActive = state
        if state then
            while autoRebirthActive do
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.5.1"].knit.Services.RebirthService.RF.Rebirth:InvokeServer()
                wait(0.05)  
            end
        end
    end,
})   

local hrmatasrt = hrmat:CreateToggle({
    Name = "Auto Super Rebirth",
    CurrentValue = false,
    Flag = "hrmatasrt",
    Callback = function(state)
        autoSuperRebirthActive = state
        if state then
            while autoSuperRebirthActive do
                game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.5.1"].knit.Services.RebirthService.RF.SuperRebirth:InvokeServer()
                wait(0.05)  
            end
        end
    end,
})
