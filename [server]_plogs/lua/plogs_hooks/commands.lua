--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_plogs/lua/plogs_hooks/commands.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

plogs.Register('Commands', false)

if (SERVER) then
	concommand._Run = concommand._Run or concommand.Run
	function concommand.Run(pl, cmd, args, arg_str)
		if IsValid(pl) and pl:IsPlayer() and (cmd ~= nil) and (plogs.cfg.CommandBlacklist[cmd] ~= true) then
			plogs.PlayerLog(pl, 'Commands', pl:NameID() .. ' has ran command "' .. cmd .. '" with args "' .. (arg_str or table.concat(args, ' ')) .. '"', {
				['Name']	= pl:Name(),
				['SteamID']	= pl:SteamID(),
			})
		end
		return concommand._Run(pl, cmd, args, arg_str)
	end
end