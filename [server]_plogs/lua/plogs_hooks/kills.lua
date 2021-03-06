--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_plogs/lua/plogs_hooks/kills.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

plogs.Register('Kills', true, Color(255,0,0))

plogs.AddHook('PlayerDeath', function(pl, _, attacker)
	local copy = {
		['Name'] = pl:Name(),
		['SteamID']	= pl:SteamID(),
	}
	local weapon = ''
	if IsValid(attacker) then
		if attacker:IsPlayer() then
			copy['Attacker Name'] = attacker:Name()
			copy['Attacker SteamID'] = attacker:SteamID()
			weapon = ' with ' .. (IsValid(attacker:GetActiveWeapon()) and attacker:GetActiveWeapon():GetClass() or 'unknown')
			attacker = attacker:NameID()
		else
			if attacker.CPPIGetOwner and IsValid(attacker:CPPIGetOwner()) then
				weapon = ' with ' .. attacker:GetClass()
				attacker = attacker:CPPIGetOwner():NameID()
			else
				attacker = attacker:GetClass()
			end
		end
	else
		attacker = tostring(attacker)
	end
	plogs.PlayerLog(pl, 'Kills', attacker .. ' killed ' .. pl:NameID() .. weapon, copy)
end)


plogs.Register('Damage', true)

plogs.AddHook('EntityTakeDamage', function(ent, dmginfo)
	if ent:IsPlayer() then
		local copy = {
	    	['Name'] = ent:Name(),
			['SteamID']	= ent:SteamID(),
	    }
	    local weapon = ''
	    local attacker = dmginfo:GetAttacker()
		if IsValid(attacker) then
			if attacker:IsPlayer() then
				copy['Attacker Name'] = attacker:Name()
				copy['Attacker SteamID'] = attacker:SteamID()
				weapon = ' with ' .. (IsValid(attacker:GetActiveWeapon()) and attacker:GetActiveWeapon():GetClass() or 'unknown')
				attacker = attacker:NameID()
			else
				if attacker.CPPIGetOwner and IsValid(attacker:CPPIGetOwner()) then
					weapon = ' with ' .. attacker:GetClass()
					attacker = attacker:CPPIGetOwner():NameID()
				else
					attacker = attacker:GetClass()
				end
			end
		else
			attacker = tostring(attacker)
		end
		plogs.PlayerLog(ent, 'Damage', attacker .. ' did ' .. math.Round(dmginfo:GetDamage(), 0) .. ' damage to ' .. ent:NameID() .. weapon, copy)
	end
end)