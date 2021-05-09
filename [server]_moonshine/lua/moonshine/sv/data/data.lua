--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_moonshine/lua/moonshine/sv/data/data.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

if SERVER then

function dist_Save(ply, cmd, args)
    
    if ply:IsSuperAdmin() then
   
        local info = {}
       
        for k,v in pairs( ents.FindByClass("mn_npc") ) do
            info[k] = { type = v:GetClass(), pos = v:GetPos(), ang = v:GetAngles() }
        end
       
        for k,v in pairs( ents.FindByClass("mn_stand") ) do
            info[#info + k] = { type = v:GetClass(), pos = v:GetPos(), ang = v:GetAngles() }
        end
		
       
        local convert_data = util.TableToJSON( info )		
        file.Write( "dist/pos.txt", convert_data )
    end
end
concommand.Add("dist_save", dist_Save)
 
function distDelete(ply, cmd, args)
    if ply:IsSuperAdmin() then
        file.Delete( "dist/pos.txt" )       
    end    
end
concommand.Add("dist_delete", distDelete)
 
function distSpawnNpc(ply, cmd, args)
    if ply:IsSuperAdmin() then	
        local spawn_npc = ents.Create( "mn_npc" )
        if ( !IsValid( spawn_npc ) ) then return end
        spawn_npc:SetPos( ply:GetPos() + (ply:GetForward() * 100) )
        spawn_npc:Spawn()
    end    
end
concommand.Add("dist_spawn_npc", distSpawnNpc)

function distSpawnStand(ply, cmd, args)
    if ply:IsSuperAdmin() then
        local spawn_stand = ents.Create( "mn_stand" )
        if ( !IsValid( spawn_stand ) ) then return end
        spawn_stand:SetPos( ply:GetPos() + (ply:GetForward() * 100) )
        spawn_stand:Spawn()		 
    end    
end
concommand.Add("dist_spawn_stand", distSpawnStand)
 
function distRespawn()
 
    if !file.IsDir( "dist", "DATA" ) then
        file.CreateDir( "dist", "DATA" )
    end
	
	if not file.Exists("dist/pos.txt","DATA") then return end
 
    local ImportData = util.JSONToTable(file.Read("dist/pos.txt","DATA"))
   
    for k, v in pairs(ImportData) do
       
        local npc = ents.Create( v.type )
        npc:SetPos( v.pos )
        npc:SetAngles( v.ang )
        npc:Spawn()
     
	end
end
hook.Add( "InitPostEntity", "dist_respawn", distRespawn )

end
