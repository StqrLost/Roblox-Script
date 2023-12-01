local chatCommands = require(script.Parent.Admin.chatCommands)
local prefix = "!"
local adminsIds = {
    90438981
}

game.Players.PlayerAdded:Connect(function(player)
    if player.UserId == adminsIds then
        player.Chatted:Connect(function(message)
            local argv = message:split(" ")
            local cmd = argv[1]:split(prefix)

            if cmd == "Ban" or "ban" then
                chatCommands.Ban()
            end
            
        end)
    end
end)