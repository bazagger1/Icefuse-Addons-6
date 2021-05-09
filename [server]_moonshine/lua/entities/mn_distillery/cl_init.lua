--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_moonshine/lua/entities/mn_distillery/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

include("shared.lua")

local dist_load1 = Material("materials/dist_ui/panel.png")	
local dist_load2 = Material("materials/dist_ui/bluebar.png")	
local dist_load3 = Material("materials/dist_ui/cooldown.png")
local dist_load4 = Material("materials/dist_ui/redbar.png")		
local dist_load5 = Material("materials/dist_ui/start.png")	
local dist_load6 = Material("materials/dist_ui/corn.png")
local dist_load7 = Material("materials/dist_ui/grain.png")
local dist_load8 = Material("materials/dist_ui/stop.png")
local dist_load9 = Material("materials/dist_ui/cooling.png")

function ENT:Draw()
	self:DrawModel()
	
	if self:GetPos():Distance(EyePos()) > 400 then return end
	
	local dist_ang = self:GetAngles()
	local dist_pos = self:GetPos()
	local dist_clagrain = math.Clamp( self:Getdist_grain(), 0, 61 )
	local dist_clacorn = math.Clamp( self:Getdist_corn(), 0, 61 )
	local dist_clawater = math.Clamp( self:Getdist_water(), 0, 61 )
	local dist_cladegree = math.Clamp( self:Getdist_degree(), 0, 200 )
	local dist_tr = self:WorldToLocal( LocalPlayer():GetEyeTrace().HitPos )
	
	dist_ang:RotateAroundAxis(self:GetAngles():Up(), 450)
	dist_ang:RotateAroundAxis(self:GetAngles():Right(), 270)
	dist_ang:RotateAroundAxis(self:GetAngles():Up(), 90)
	
	cam.Start3D2D(dist_pos + dist_ang:Up() * 26.9, dist_ang, 0.11)	
	
		draw.RoundedBox(0,-78,-68,156,156,Color(20,20,20))
		surface.SetDrawColor( 100, 100, 100, 255 )
		surface.SetMaterial( dist_load2	) 
		surface.DrawTexturedRect( 4,32,dist_clawater,16 )
		surface.SetDrawColor( dist_cladegree, 0, 0, 255 )
		surface.SetMaterial( dist_load4	) 
		surface.DrawTexturedRect( 4,56,dist_cladegree / 3.28,16 )
		surface.SetDrawColor( 255, 255, 255, 255 )		
		surface.SetMaterial( dist_load7	) 
		surface.DrawTexturedRect( -65,3,dist_clagrain,16 )
		surface.SetMaterial( dist_load6	) 
		surface.DrawTexturedRect( 4,3,dist_clacorn,16 ) 
		surface.SetDrawColor( 216, 216, 216, 255 )	
		surface.SetMaterial( dist_load1	) 
		surface.DrawTexturedRect( -78,-68,156,156 )
		
		if (dist_tr:WithinAABox( distl_.dist_pos1, distl_.dist_pos2)) then
			if self:Getdist_start() then
				surface.SetDrawColor( 200, 200, 200, 255 )
				surface.SetMaterial( dist_load8	) 
				surface.DrawTexturedRect( -78,-68,156,156 )
			else
				surface.SetDrawColor( 200, 200, 200, 255 )
				surface.SetMaterial( dist_load5	) 
				surface.DrawTexturedRect( -78,-68,156,156 )			
			end
		else
			if self:Getdist_start() then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( dist_load8	) 
				surface.DrawTexturedRect( -78,-68,156,156 )
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( dist_load5	) 
				surface.DrawTexturedRect( -78,-68,156,156 )
			end
		end	
		
		if (dist_tr:WithinAABox( distl_.dist_pos3, distl_.dist_pos4)) then	
			if self:Getdist_cooling() then
				surface.SetDrawColor( 200, 200, 200, 255 )
				surface.SetMaterial( dist_load9	) 
				surface.DrawTexturedRect( -78,-68,156,156 )
			else
				surface.SetDrawColor( 200, 200, 200, 255 )
				surface.SetMaterial( dist_load3	) 
				surface.DrawTexturedRect( -78,-68,156,156 )			
			end
		else
			if self:Getdist_cooling() then
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( dist_load9	) 
				surface.DrawTexturedRect( -78,-68,156,156 )
			else
				surface.SetDrawColor( 255, 255, 255, 255 )
				surface.SetMaterial( dist_load3	) 
				surface.DrawTexturedRect( -78,-68,156,156 )
			end	
		end

	cam.End3D2D()
end		