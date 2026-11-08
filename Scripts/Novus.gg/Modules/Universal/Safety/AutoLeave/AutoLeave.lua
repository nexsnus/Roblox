local Window = _G.Window
local ut = _G.ut

local utss = ut:CreateSection("Safety")
local utalt = ut:CreateToggle({
    Name = "Auto Leave when Staff join",
    CurrentValue = false,
    Flag = "utalt",
    Callback = function(Value)
        local GroupId = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Creator.CreatorTargetId
        if Value then
					for i,v in pairs(game.Players:GetPlayers()) do
						pcall(function()
							if v:IsInGroup(GroupId) and v:GetRankInGroup(GroupId) > 1 then
								Player:Kick("Detected Staff (Player above group rank 1)")
							end
						end)
					end
				end
    end,
})
