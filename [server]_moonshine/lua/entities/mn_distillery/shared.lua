--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_moonshine/lua/entities/mn_distillery/shared.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Distillery"
ENT.Author = "Mikael#"
ENT.Category = "Icefuse Moonshine"
ENT.Spawnable = true
ENT.AdminSpawnable = true

function ENT:SetupDataTables()	
	self:NetworkVar("Int", 0, "dist_degree")
	self:NetworkVar("Int", 1, "dist_health")
	self:NetworkVar("Int", 2, "dist_ran")
	self:NetworkVar("Int", 3, "dist_water")
	self:NetworkVar("Int", 4, "dist_grain")	
	self:NetworkVar("Int", 5, "dist_corn")
	self:NetworkVar("Int", 6, "dist_moonshine")		
	self:NetworkVar("Bool", 0, "dist_start")	
	self:NetworkVar("Bool", 1, "dist_cooling")	
end

distl_ = {}
distl_ = {
	dist_pos1 = Vector(0.081380, 23.782152, -5.586264),
	dist_pos2 = Vector(7.613694, 29.782200, -2.946632), 
	dist_pos3 = Vector(0.061730, 23.782143, -8.348092),
	dist_pos4 = Vector(7.506984, 29.782160, -5.794388),
	dist_pos5 = Vector(-10.278522, 15.009351, 19.051284),
	dist_pos6 = Vector(16.5782699, 22.009408, 25.699184),
	dist_pos7 = Vector(-10.452580, 15.009344, 9.3267765),
	dist_pos8 = Vector(16.4374122, 22.009351, 15.636435)
}
