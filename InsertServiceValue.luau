-- g00by's Type of style
local service = game:GetService("InsertService")
if service then
  print(service)
end
  local script = Instance.new("StringValue")
  script.Name = "Filterindisabled#0001"
  script.Parent = service
  script.Value = [[
            for _, player in pairs(game.Players:GetPlayers()) do
    if player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = 0
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.Health = 0
    end)
end)
]]
print("Parented Value")
