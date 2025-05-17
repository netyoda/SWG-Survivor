function enhanceCommand(pPlayer, args)
	if (pPlayer == nil) then
		return 0
	end

	local creature = LuaCreatureObject(pPlayer)

	-- Health (0, 1, 2), Action (3, 4, 5), Mind (6, 7, 8)
	for i = 0, 8 do
		local maxHam = creature:getMaxHAM(i)
		creature:setHAM(i, maxHam)
	end

	creature:sendSystemMessage("You have been fully enhanced.")

	return 0
end

registerCreatureCommand("enhance", enhanceCommand)
