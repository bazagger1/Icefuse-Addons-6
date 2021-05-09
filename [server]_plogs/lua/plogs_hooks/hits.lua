--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_plogs/lua/plogs_hooks/hits.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

--if plogs.cfg.LogTypes['hhh'] and plogs.cfg.LogTypes['hitmodule'] then
	plogs.Register('Hits', true, Color(51, 128, 255))

	plogs.AddHook('onHitAccepted', function(hitman, target, customer)
		plogs.PlayerLog(hitman, 'Hits', hitman:NameID() .. ' accepted a hit on ' .. target:NameID() .. '  ordered by ' .. customer:NameID(), {
			['Hitman Name'] 		= hitman:Name(),
			['Hitman SteamID']		= hitman:SteamID(),
			['Customer Name'] 		= customer:Name(),
			['Customer SteamID']	= customer:SteamID(),
			['Target Name'] 		= target:Name(),
			['Target SteamID']		= target:SteamID(),
		})
	end)

	plogs.AddHook('onHitCompleted', function(hitman, target, customer)
		plogs.PlayerLog(hitman, 'Hits', hitman:NameID() .. ' completed a hit on ' .. target:NameID() .. '  ordered by ' .. customer:NameID(), {
			['Hitman Name'] 		= hitman:Name(),
			['Hitman SteamID']		= hitman:SteamID(),
			['Customer Name'] 		= customer:Name(),
			['Customer SteamID']	= customer:SteamID(),
			['Target Name'] 		= target:Name(),
			['Target SteamID']		= target:SteamID(),
		})
	end)

	-- plogs.AddHook('onHitFailed', function(hitman, target)
		-- plogs.PlayerLog(hitman, 'Hits', hitman:NameID() .. ' failed a hit on ' .. target:NameID(), {
			-- ['Hitman Name'] 		= hitman:Name(),
			-- ['Hitman SteamID']		= hitman:SteamID(),
			-- ['Target Name'] 		= target:Name(),
			-- ['Target SteamID']		= target:SteamID(),
		-- })
	-- end)
--end