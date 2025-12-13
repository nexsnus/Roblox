local Window = _G.Window
local hrmat = Window:CreateTab("Automation", "home")

local hrmatawft = hrmat:CreateToggle({
    Name = "Auto Wins Farm",
    CurrentValue = false,
    Flag = "hrmatawft",
    Callback = function(state)
        while state do
          for i = 1, 10 do
            game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.5.1"].knit.Services.RandomPotionService.RE.BuyPotionEvent:FireServer(table.unpack({
              [1] = -9e60,
              [2] = {
              },
              [3] = true,
              [4] = "hax",
            }))
          end
        end
    end,
})   

local hrmatart = hrmat:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Flag = "hrmatart",
    Callback = function(state)
        while state do
          for i = 1, 10 do
            game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.5.1"].knit.Services.RebirthService.RF.Rebirth:InvokeServer()
          end
        end
    end,
})   

local hrmatasrt = hrmat:CreateToggle({
    Name = "Auto Super Rebirth",
    CurrentValue = false,
    Flag = "hrmatasrt",
    Callback = function(state)
        while state do
          for i = 1, 10 do
            game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.5.1"].knit.Services.RebirthService.RF.SuperRebirth:InvokeServer()
          end
        end
    end,
})   
