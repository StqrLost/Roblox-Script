local commands = {}

commands.Ban = function(targetPlayer)
	game.Players:WaitForChild(targetPlayer):WaitForChild("BanValue").Value = true
	game.Players:WaitForChild(targetPlayer):Kick("You have been banned!")
end

commands.UnBan = function(targetPlayer)
	local dataStoreService = game:GetService("DataStoreService")
	local bannedUserDatastore = dataStoreService:GetDataStore("BannedUsers")

	bannedUserDatastore:RemoveAsync(targetPlayer.UserId)
end

commands.Kick = function(targetPlayer, reason)
	game.Players:WaitForChild(targetPlayer):Kick(reason)
end

return commands