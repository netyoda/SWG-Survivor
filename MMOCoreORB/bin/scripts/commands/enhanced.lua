function enhanceCommand(screenPlay, player, args)
	if (player == nil) then
		return 0
	end

	local creature = CreatureObject(player)
	creature:setHAM(creature:getMaxHAM(0), creature:getMaxHAM(1), creature:getMaxHAM(2))
	creature:setHAM(creature:getMaxHAM(3), creature:getMaxHAM(4), creature:getMaxHAM(5))
	creature:setHAM(creature:getMaxHAM(6), creature:getMaxHAM(7), creature:getMaxHAM(8))
	creature:sendSystemMessage("You have been fully enhanced.")
	return 0
end

registerSlashCommand("enhance", "enhanceCommand")
