local Window = _G.Window

local tsatm = Window:CreateTab("Automation", "home")

local autoclaimrankreward = false

local tsatmacrr = tsatm:CreateToggle({
    Name = "Auto Claim Rank Rewards",
    CurrentValue = false,
    Flag = "tsatmacrr",
    Callback = function(state)
        autoclaimrankreward = state
          if state then
            autoclaimrankrewards()
          end
    end,
})
function autoclaimrankrewards()
    spawn(function()
        while autoclaimrankreward do
            wait()
            pcall(function()
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                local targetFolder = nil

                local function findFolderWithEventsAndFunctions(folder)
                    if folder:FindFirstChild("Events") and folder:FindFirstChild("Functions") then
                        return folder
                    end
                    for _, child in ipairs(folder:GetChildren()) do
                        if child:IsA("Folder") then
                            local result = findFolderWithEventsAndFunctions(child)
                            if result then
                                return result
                            end
                        end
                    end
                    return nil
                end

                targetFolder = findFolderWithEventsAndFunctions(ReplicatedStorage)

                if targetFolder and targetFolder:FindFirstChild("Functions") then
                    local functionsFolder = targetFolder.Functions
                    local remoteFunction = functionsFolder:GetChildren()[12]
                    if remoteFunction then
                        remoteFunction:InvokeServer()
                    end
                end    
            end)
        end
    end)
end
