local Window = _G.Window
local ut = _G.ut

local utares = ut:CreateSection("Auto Re Execute")
local utaret = ut:CreateToggle({
    Name = "Auto Re Execute",
    CurrentValue = false,
    Flag = "utaret",
    Callback = function(Value)
        if Value then
					local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

					if queueteleport then
						queueteleport("loadstring(game:HttpGet("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/Scripts/Novus.gg/Modules/Loader/Loader.lua"))()")
					end
				end
    end,
})
