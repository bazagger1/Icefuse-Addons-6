--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_plogs/lua/plogs/core_sh.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

function plogs.Register(type, network, color)
	plogs.types[type] = plogs.types[type] or {
		Type 	= type, 
		Network = network and plogs.cfg.EchoServer or network, 
		Color 	= color
	}
	plogs.data[type] = plogs.data[type] or {}
	return t
end

local count = 0
function plogs.AddHook(hook_name, func)
	if (SERVER) then
		hook.Add(hook_name, 'plogs.loghook.' .. count .. '.' .. hook_name, func)
		count = count + 1
	end
end

function plogs.Encode(data)
	return util.Compress(pon1.encode(data))
end

function plogs.Decode(data)
	return pon1.decode(util.Decompress(data))
end

function plogs.GetSaves()
	local files = file.Find('plogs/saves/*.dat', 'DATA', 'datedesc')
	for k, v in ipairs(files) do
		files[k] = string.StripExtension(v)
	end
	return files
end

function plogs.OpenSave(name)
	return plogs.Decode(file.Read('plogs/saves/' .. name .. '.dat', 'DATA'))
end

function plogs.DeleteSave(name)
	file.Delete('plogs/saves/' .. name .. '.dat')
end

function plogs.SaveExists(name)
	return file.Exists('plogs/saves/' .. string.Trim(name) .. '.dat', 'DATA')
end

function plogs.SaveLog(name, tbl)
	file.Write('plogs/saves/' .. string.Trim(name) .. '.dat', plogs.Encode(tbl)) 
end