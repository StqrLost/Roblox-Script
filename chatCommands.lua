local commands = {}

commands.Ban = function(targetPlayer)
    game.Players:WaitForChild(targetPlayer):WaitForChild("BanValue").Value = true
end

commands.Kick = function(targetPlayer, reason)
    game.Players:WaitForChild(targetPlayer):Kick(reason)
end

commands.WalkSpeed = function(targetPlayer, value)
    local character = game.Workspace.targetPlayer.Character or game.Workspace.targetPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    humanoid.WalkSpeed = value
end

return commands