--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_moonshine/lua/moonshine/cl/effect/effect.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


if (CLIENT) then

local dist_effect = Material("models/dog/eyeglass")
net.Receive("dist_effect_api",function()
	local ply = LocalPlayer()
	local dist_value = net.ReadInt(16)
	local dist_drunk = vgui.Create( "DPanel" )
	dist_drunk:SetPos( 0, 0 )
	dist_drunk:SetSize( ScrW(), ScrH() ) 
	dist_drunk.Paint = function( self, w, h )		
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( dist_effect ) 
		surface.DrawTexturedRect( 0, 0, w, h )
		draw.RoundedBox(0,0,0,w,h,Color(0,0,200,dist_value))	
	end	
	timer.Simple( dist_value, function()
		dist_drunk:Remove()
	end)
end)

net.Receive("dist_chat_api",function()
	chat.AddText(Color(128,0,128),"Moonshine: ", Color(255,255,255),net.ReadString())
end)

end