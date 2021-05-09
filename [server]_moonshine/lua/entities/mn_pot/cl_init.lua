--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_moonshine/lua/entities/mn_pot/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

include("shared.lua")

local dist_load1 = Material("materials/dist_ui/grainpanel.png")	
local dist_load2 = Material("materials/dist_ui/panelcorn.png")	

function ENT:Draw()
	self:DrawModel()
	
	if self:GetPos():Distance(EyePos()) > 400 then return end
	
	local dist_ang = self:GetAngles()
	local dist_pos = self:GetPos()
	
	dist_ang:RotateAroundAxis(self:GetAngles():Up(), 450)
	dist_ang:RotateAroundAxis(self:GetAngles():Right(), 270)
	dist_ang:RotateAroundAxis(self:GetAngles():Up(), 180)
	
	cam.Start3D2D(dist_pos + dist_ang:Up() * 6.5, dist_ang, 0.04)	
	
		if self:Getdist_harvest() then
			draw.RoundedBox(0,-78,-204,161,161,Color(0,100,0))
		else	
			draw.RoundedBox(0,-78,-204,161,161,Color(100,0,0))
		end
		
		if ( self:Getdist_crop() == 1 ) then
			surface.SetDrawColor( 216, 216, 216, 255 )	
			surface.SetMaterial( dist_load2	) 
			surface.DrawTexturedRect( -78,-204,161,161 )		
		elseif ( self:Getdist_crop() == 2 ) then
			surface.SetDrawColor( 216, 216, 216, 255 )	
			surface.SetMaterial( dist_load1	) 
			surface.DrawTexturedRect( -78,-204,161,161 )
		end
	
	cam.End3D2D()	
end	