local dataStoreService = game:GetService("DataStoreService")
local bannedUserDatastore = dataStoreService:GetDataStore("BannedUsers")

local function saveBannedValue(player)
	
end

game.Players.PlayerAdded:Connect(function(player)
	
end)

game.Players.PlayerRemoving:Connect(function(player)
	saveBannedValue(player)
end)