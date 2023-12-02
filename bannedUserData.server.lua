local dataStoreService = game:GetService("DataStoreService")
local bannedUserDatastore = dataStoreService:GetDataStore("BannedUsers")

local function saveBannedValue(player)
    local tableToSave = {
        player.Ban.Value
    }

    local success, errormessage = pcall(bannedUserDatastore:SetAsync(player.UserId, tableToSave))

    if success then
        print("Saved User Data")
    else
        print("User data has errored on saving! "..errormessage)
    end
end

game.Players.PlayerAdded:Connect(function(player)
    local BoolValue = Instance.new("BoolValue", player)
    BoolValue.Name = "Ban"
    BoolValue.Value = false


    if player.Ban.Value == true then
        player:Kick("You have been banned!")
    end
end)