--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_opium/lua/entities/the_opium_gas/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

include("shared.lua")

function ENT:Initialize()
end

local mainplate10 = Material("materials/simple_opium/packer/sides2.png")

function ENT:Draw()

	self:DrawModel()
	
	if self:GetPos():Distance(EyePos()) > 400 then return end
	
	local ahAngle = self:GetAngles()
	local AhEyes = LocalPlayer():EyeAngles()
	
	ahAngle:RotateAroundAxis(ahAngle:Forward(), 90)
	ahAngle:RotateAroundAxis(ahAngle:Right(), -90)		
	
	cam.Start3D2D(self:GetPos()+self:GetUp()*24.5, Angle(0, AhEyes.y-90, 90), 0.175)
	
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( mainplate10 )
		surface.DrawTexturedRect( -35,10,70,18 )	
		draw.SimpleTextOutlined("Gas", "simple_font", 0, 11.5, Color(255,255,255), 1, 0, 1, Color(25, 25, 25, 255))
		surface.SetDrawColor( Color(0,0,0,220) )
		surface.DrawOutlinedRect( -35,10,70,18 )
		
	cam.End3D2D()	
	
end		