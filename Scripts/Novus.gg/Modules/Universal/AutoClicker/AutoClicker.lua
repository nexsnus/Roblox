local Window = _G.Window
local ut = _G.ut

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

local Enabled = false
local X, Y = 0, 0
local interval = 1
local clickThread = nil
local mouseDownConnection = nil

local utacs = ut:Section({ Side = "Right" })

local utact = utacs:Toggle({
    Name = "Auto Clicker",
    Default = false,
    Callback = function(state)
        Enabled = state
        if clickThread then
            task.cancel(clickThread)
            clickThread = nil
        end
        if Enabled then
            clickThread = task.spawn(function()
                while Enabled do
                    VirtualInputManager:SendMouseButtonEvent(X, Y, 0, true, game, 1)
                    task.wait(interval / 2)
                    VirtualInputManager:SendMouseButtonEvent(X, Y, 0, false, game, 1)
                    task.wait(interval / 2)
                end
            end)
        end
    end,
}, "utact")

local utacis = utacs:Slider({
    Name = "Auto Clicker Interval",
    Default = 1,
    Minimum = 0.01,
    Maximum = 2,
    DisplayMethod = "Seconds",
    CurrentValue = 1,
    Callback = function(value)
        interval = value
    end,
}, "utacis")

local utactb = utacs:Keybind({
    Name = "Auto Clicker Toggle Bind",
    CurrentKeybind = "L",
    HoldToInteract = false,
    Flag = "utactb",
    Callback = function()
        utact:UpdateState(not Enabled)
    end,
})

local utacxcpg = utacs:Paragraph({ Header = "Current X-Coordinate", Body = X})
local utacycpg = utacs:Paragraph({ Header = "Current Y-Coordinate", Body = Y})

local utacpb = utacs:Button({
    Name = "Set Position on Click",
    Callback = function()
        if mouseDownConnection then
            mouseDownConnection:Disconnect()
        end
        local function onMouseDown(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                X, Y = Mouse.X, Mouse.Y
                utacxcpg:Set({Title = "Current X-Coordinate", Content = X})
                utacycpg:Set({Title = "Current Y-Coordinate", Content = Y})
                mouseDownConnection:Disconnect()
                mouseDownConnection = nil
            end
        end
        mouseDownConnection = UserInputService.InputBegan:Connect(onMouseDown)
    end,
})   
