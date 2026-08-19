queue_on_teleport([=[
    loadstring("https://raw.githubusercontent.com/nexsnus/Roblox/refs/heads/main/test.lua")()
]=])


print("Warte auf Thomas")
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.Main.Notice.Visible

game:GetService("TeleportService"):Teleport(
    game.PlaceId,
    game:GetService("Players").LocalPlayer
)
