--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_plogs/lua/autorun/plogs_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

local include_sv = (SERVER) and include or function() end
local include_cl = (SERVER) and AddCSLuaFile or include
local include_sh = function(path) include_sv(path) include_cl(path) end

plogs		= plogs			or {}
plogs.cfg 	= plogs.cfg 	or {}
plogs.types	= plogs.types	or {}
plogs.data	= plogs.data	or {}

plogs.Version = '2.7.1'

function plogs.Error(str)
	return ErrorNoHalt('[pLogs] ' .. str)
end

-- Lib modules from: https://github.com/SuperiorServers/plib_v2
include_sh 'plogs/lib/pon1.lua'
include_cl 'plogs/lib/pdraw.lua'
include_sv 'plogs/lib/table.lua'

include_sh 'plogs_cfg.lua' 
include_sh 'plogs/workarounds/sanity_checker.lua'

if (SERVER) and plogs.cfg.EnableMySQL then
	include_sv 'plogs_mysql_cfg.lua'
	if (system.IsWindows() and file.Exists('lua/bin/gmsv_tmysql4_win32.dll', 'MOD')) or (system.IsLinux() and file.Exists('lua/bin/gmsv_tmysql4_linux.dll', 'MOD')) then
		include_sv 'plogs/lib/ptmysql.lua'
		plogs.sql = ptmysql
	elseif (system.IsWindows() and file.Exists('lua/bin/gmsv_mysqloo_win32.dll', 'MOD')) or (system.IsLinux() and file.Exists('lua/bin/gmsv_mysqloo_linux.dll', 'MOD')) then
		include_sv 'plogs/lib/pmysqloo.lua'
		plogs.sql = pmysqloo
	end

	if (plogs.sql == nil) then
		plogs.Error('MySQL is enabled but pLogs could not find the tmysql or mysqloo module installed!') -- reduce support tickets by 50%
		plogs.cfg.EnableMySQL = false
	else
		include_sv 'plogs/mysql.lua'
	end
end

include_sh 'plogs/core_sh.lua'
include_sv 'plogs/core_sv.lua'
include_sh 'plogs/console.lua'

include_cl 'plogs/vgui/skin.lua'
include_cl 'plogs/vgui/frame.lua'
include_cl 'plogs/vgui/tablist.lua'

include_cl 'plogs/menu.lua'

if (not file.IsDir('plogs/saves', 'data')) then
	file.CreateDir('plogs/saves')
end

hook.Add('Initialize', 'plogs.Loghooks.Initialize', function()
	local files, _ = file.Find('plogs_hooks' .. '/*.lua', 'LUA')
	for _, f in ipairs(files) do
	if plogs.cfg.LogTypes[f:sub(1, f:len() - 4):lower()] then continue end
		include_sh('plogs_hooks/' .. f)
	end
end)