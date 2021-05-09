--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_moonshine/lua/entities/mn_stand/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

include("shared.lua")

local dist_load1 = Material("materials/dist_ui/banner.png")	
local dist_load2 = Material("materials/dist_ui/background.png")	

surface.CreateFont( "dist_font", {
	font = "Arial", 
	size = 50,
	weight = 500,
	antialias = true
} )

surface.CreateFont( "dist_font2", {
	font = "Arial", 
	size = 40,
	weight = 500,
	antialias = true
} )

function ENT:Draw()

	self:DrawModel()
	
	if self:GetPos():Distance(EyePos()) > 400 then return end
	
	local dist_ang = self:GetAngles()
	local dist_pos = self:GetPos()
	
	dist_ang:RotateAroundAxis(self:GetAngles():Up(), 450)
	dist_ang:RotateAroundAxis(self:GetAngles():Right(), 270)
	dist_ang:RotateAroundAxis(self:GetAngles():Up(), 90)
	
	cam.Start3D2D(dist_pos + dist_ang:Up() * 16.4, dist_ang, 0.11)	
	
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( dist_load1	) 
		surface.DrawTexturedRect( -309,-807,618,162 )

	cam.End3D2D()	
	
	cam.Start3D2D(dist_pos + dist_ang:Up() * 18, dist_ang, 0.11)	
	
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( dist_load2	) 
		surface.DrawTexturedRect( -424,-292,847,273 )
		
		draw.SimpleText( self:Getdist_count(), "dist_font", -280,-120, Color( 255, 255, 255, 255 ), 1, 1 )
		
		draw.SimpleText( "+$"..dist.ahshop.StandBottleSellPrice, "dist_font2", 246,-114, Color( 150, 150, 150, 255 ), 1, 1 )	
		draw.SimpleText( "-$"..dist.ahshop.StandBottlePrice, "dist_font2", 246,-200, Color( 150, 150, 150, 255 ), 1, 1 )
		
		if dist_3d2d(LocalPlayer(), self, distl_.dist_pos7, distl_.dist_pos8) then
			draw.SimpleText( "Sell Bottle", "dist_font2", -28,-114, Color( 255, 255, 255, 255 ), 1, 1 )
		else
			draw.SimpleText( "Sell Bottle", "dist_font2", -28,-114, Color( 150, 150, 150, 255 ), 1, 1 )	
		end
		
		if dist_3d2d(LocalPlayer(), self, distl_.dist_pos5, distl_.dist_pos6) then
			draw.SimpleText( "Buy Bottle", "dist_font2", -28,-204, Color( 255, 255, 255, 255 ), 1, 1 )
		else
			draw.SimpleText( "Buy Bottle", "dist_font2", -28,-204, Color( 150, 150, 150, 255 ), 1, 1 )
		end

	cam.End3D2D()	
end		