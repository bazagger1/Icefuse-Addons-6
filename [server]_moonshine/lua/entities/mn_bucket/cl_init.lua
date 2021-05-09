--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_moonshine/lua/entities/mn_bucket/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


include("shared.lua")

surface.CreateFont( "dist_font_28", {
	font = "Lato",
	size = 45,
	weight = 500,
	antialias = true
} )

local load1 = Material("materials/dist_ui/water.jpg")
local load2 = Material("materials/dist_ui/front/Borders Above the Ins.png")
local load3 = Material("materials/dist_ui/front/First In.png")
local load4 = Material("materials/dist_ui/front/Second In.png")
local load5 = Material("materials/dist_ui/front/First Barrel.png")
local load6 = Material("materials/dist_ui/front/Second Barrel.png")
local load7 = Material("materials/dist_ui/front/Third Barrel.png")
local load8 = Material("materials/dist_ui/front/Fourth Barrel.png")

function ENT:Draw()

	self:DrawModel()
	
	if self:GetPos():Distance(EyePos()) > 400 then return end
	
	local dist_ang = self:GetAngles()
	local dist_pos = self:GetPos()
	local dist_cou = self:Getdist_barrel()
	local dist_tr = self:WorldToLocal( LocalPlayer():GetEyeTrace().HitPos ) 
	
	dist_ang:RotateAroundAxis(self:GetAngles():Up(), 450)
	dist_ang:RotateAroundAxis(self:GetAngles():Right(), 360)
	dist_ang:RotateAroundAxis(self:GetAngles():Up(), 90)
	
	cam.Start3D2D(dist_pos + dist_ang:Up() * 10, dist_ang, 0.11)	
				
		surface.SetDrawColor( 255,255,255 )
		surface.SetMaterial( load1	) 
		surface.DrawTexturedRect( -350,-350,700,700 )	

	cam.End3D2D()
	
	dist_ang:RotateAroundAxis(self:GetAngles():Up(), 270)
	dist_ang:RotateAroundAxis(self:GetAngles():Right(), 270)
	dist_ang:RotateAroundAxis(self:GetAngles():Up(), 0)
	
	cam.Start3D2D(dist_pos + dist_ang:Up() * 51, dist_ang, 0.11)	
				
		surface.SetDrawColor( 255,255,255 )
		surface.SetMaterial( load3	) 
		surface.DrawTexturedRect( -315,-60,630,126 )
		surface.SetMaterial( load4	) 
		surface.DrawTexturedRect( -315,-60,630,126 )
		
		-- Display barrels at same time.
		if ( dist_cou >= 1 ) then
			surface.SetMaterial( load5	) 
			surface.DrawTexturedRect( -315,-60,630,126 )
		end
		
		if ( dist_cou >= 2 ) then
			surface.SetMaterial( load6	) 
			surface.DrawTexturedRect( -315,-60,630,126 )
		end
		
		if ( dist_cou >= 3 ) then		
			surface.SetMaterial( load7	) 
			surface.DrawTexturedRect( -315,-60,630,126 )
		end
		
		if ( dist_cou >= 4 ) then
			surface.SetMaterial( load8	) 
			surface.DrawTexturedRect( -315,-60,630,126 )
		end
	
		surface.SetMaterial( load2	) 
		surface.DrawTexturedRect( -315,-60,630,126 )
		
		draw.SimpleText(dist_cou, "dist_font_28", 0, -10, Color(255,255,255),1,1)
		
	cam.End3D2D()
		
end	


