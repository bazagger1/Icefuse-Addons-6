--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_opium/lua/entities/the_opium_heater/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


include("shared.lua")

surface.CreateFont( "the_opium_font", {
	font = "Segoe UI ", 
	size = 32,
	weight = 800,
	antialias = true,
} )

local image1 = Material("materials/simple_opium/plate.png")
local image2 = Material("materials/simple_opium/plate3.png")
local image3 = Material("materials/simple_opium/plate1.png")

function ENT:Draw()
	self:DrawModel()

	if self:GetPos():Distance(EyePos()) > 1000 then return end	
	
	local Pos = self:GetPos()
	local Ang = self:GetAngles()

	Ang:RotateAroundAxis(Ang:Up(), 90)

	cam.Start3D2D(Pos + Ang:Up() * 6.1, Ang, 0.11)

		if self:GetCooking() then		
			surface.SetDrawColor( 255, 255, 255, 255 )
			surface.SetMaterial(image3)
			surface.DrawTexturedRect( -161, -161, 324, 322 )
		else
			surface.SetDrawColor( 255, 255, 255, 255 )
			surface.SetMaterial(image1)
			surface.DrawTexturedRect( -161, -161, 324, 322 )
		end
		
	cam.End3D2D()

	Ang:RotateAroundAxis(self:GetAngles():Up(), 360)
	Ang:RotateAroundAxis(self:GetAngles():Right(), 270)
	Ang:RotateAroundAxis(self:GetAngles():Up(), 450)

	cam.Start3D2D(Pos + Ang:Up() * 18, Ang, 0.11)
				
			surface.SetDrawColor( 255, 255, 255, 255 )
			surface.SetMaterial(image2)
			surface.DrawTexturedRect( -161, -56, 322, 111)
			draw.SimpleText(self:GetGas().."ml","the_opium_font",45.5,3,Color(255,255,255),1,1)
	cam.End3D2D()
	
end