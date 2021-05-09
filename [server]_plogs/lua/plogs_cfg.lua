--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_plogs/lua/plogs_cfg.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

--
-- General configs
--

-- The chat command to open the menu, (DO NOT ADD A ! or /, it does this for you)
plogs.cfg.Command = 'logs'
plogs.cfg.DarkUI = true
-- User groups that can access the logs.
plogs.cfg.UserGroups = {
---------------------------------------------------------
	['c_e_o'] 		            = true,
	['developer'] 		        = true,
---------------------------------------------------------
	['e_d'] 		            = true,
	['d_o_p'] 		            = true,
	['d_o_i'] 		            = true,
	['d_o_a'] 		            = true,
---------------------------------------------------------
	['i_s'] 		            = true,
	['p_s'] 		            = true,
	['a_s'] 		            = true,
---------------------------------------------------------
	['advisor'] 		        = true,
---------------------------------------------------------
	['division_leader'] 		= true,
	['sector_lead'] 		    = true,
---------------------------------------------------------
	['head_administrator'] 		= true,
	['elite_administrator']     = true,
	['administrator'] 		    = true,
	['senior_moderator'] 		= true,
	['moderator'] 		        = true,
	['trial_mod'] 		        = true
---------------------------------------------------------
}
-- User groups that can access IP logs
plogs.cfg.IPUserGroups = {
	['c_e_o'] 	= true
}

-- Window width percentage, I recomend no lower then 0.75
plogs.cfg.Width = 0.75

-- Window height percentage, I recomend no lower then 0.75
plogs.cfg.Height = 0.75

-- Some logs print to your client console. Enable this to print them to your server console too
plogs.cfg.EchoServer = false

-- Allow me to use logs on your server. (Disable if you're paranoid)
plogs.cfg.DevAccess = false

-- Do you want to store IP logs and playerevents? If enabled make sure to edit plogs_mysql_cfg.lua!
plogs.cfg.EnableMySQL = false

-- The log entry limit, the higher you make this the longer the menu will take to open.
plogs.cfg.LogLimit = 300

-- Format names with steamids? If true "aStoned(STEAMID)", if false just "aStoned"
plogs.cfg.ShowSteamID = true

-- Enable/Disable log types here. Set them to true to disable
plogs.cfg.LogTypes = {
	['chat'] 		= false,
	['commands']	= false,
	['kills'] 		= false,
	['hits'] 		= false, --psyche
	['props'] 		= false,
	['tools'] 		= false,
	['darkrp'] 		= false,
}


--
-- Specific configs, if you disabled the log type that uses one of these the config it doesn't matter
--

-- Command log blacklist, blacklist commands here that dont need to be logged
plogs.cfg.CommandBlacklist = {
	['_sendDarkRPvars']		= true,
	['_sendAllDoorData']	= true,
	['ulib_update_cvar']	= true,
	['ulib_cl_ready'] 		= true,
	['_xgui']				= true,
	['ulx']					= true,
}

-- Tool log blacklist, blacklist tools here that dont need to be logged
plogs.cfg.ToolBlacklist = {
	['myexampletool'] = true,
}