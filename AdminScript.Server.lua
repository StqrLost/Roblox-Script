local chatCommands = require(script.Parent.Admin.ChatCommands)
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
				chatCommands.Ban(argv[2])
			end

			if cmd == "Kick" or "kick" then
				chatCommands.Kick(argv[2], argv[3])
			end

			if cmd == "Walkspeed" or "walkspeed" then
				chatCommands.WalkSpeed(argv[2], argv[3])
			end

		end)
	end
end)