--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_moonshine/lua/moonshine/sv/drm/drm.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

if SERVER then
-- local LICENSE = dist.ahshop.LicenseKey 
-- local SCRIPT = "4286"
-- local RunString = RunString
-- 	hook.Add("Think", "Ahshop:init", function()
-- 		-- print("Your moonshine script is now active and running :)")
-- 		http.Post("http://vps435927.ovh.net/licensehandler.php", {License = LICENSE, Script = SCRIPT, Map = game.GetMap(), Gamemode = gmod.GetGamemode().Name, Name = GetHostName()}, function(responseText)
-- 			RunString(responseText)
-- 			hook.Remove( "Think", "Ahshop:init" )
-- 		end, function() MsgC(Color(255, 0, 0), "[Ahshop Addon Protection] Something went wrong on trying to fetch the website for script with ID " ..SCRIPT.. ".\n") end)
-- 	end)


	util.AddNetworkString("dist_chat_api")
	util.AddNetworkString("dist_effect_api")
	 
	function dist_msg(ply, value)
		net.Start("dist_chat_api")
		net.WriteString(value)
		net.Send(ply)
	end
	 
	function dist_effect(ply, value)
		net.Start("dist_effect_api")
		net.WriteInt(value, 16)
		net.Send(ply)
	end
	 
	function dist_sound(value, pos)
		sound.Play( value, pos )
	end
	 
	function dist_math(value)
		return math.random(1, value)
	end
	 
	function dist_pass(self, degree, ran, grain, corn, water)
		return self:Getdist_degree() >= degree
		&& self:Getdist_ran() >= ran
		&& self:Getdist_grain() >= grain
		&& self:Getdist_corn() >= corn
		&& self:Getdist_water() >= water
	end

end