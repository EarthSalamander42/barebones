if not Roshan then
	Roshan = class({})

	require("components/roshan/events")

	Roshan.bonusMinuteBuff = 1200.0 -- 20 minutes

	ListenToGameEvent('npc_spawned', Dynamic_Wrap(Roshan, 'OnNPCSpawned'), Roshan)
end

function Roshan:GetBuffTime()
	return Roshan.bonusMinuteBuff
end
