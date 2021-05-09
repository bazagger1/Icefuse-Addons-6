--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_opium/lua/autorun/opium_config.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

opium = {}
opium.ahshop = {}

-- If you want to sell the opium by clicking E on pack, then set it to true.
opium.ahshop.SellOpiumWithoutNpc = false

-- Opium values.
opium.ahshop.LowOpiumPrice = 500
opium.ahshop.mediumOpiumPrice = 500
opium.ahshop.PremiumOpiumPrice = 500

-- Packer config:
opium.ahshop.PackerColor = Color(33,33,33)

-- Opium npc config:
opium.ahshop.BuyDistance = 200
opium.ahshop.NpcModel = "models/gman_high.mdl"

-- Health config:
opium.ahshop.PackerHealth = 100
opium.ahshop.BarrelHealth = 100
opium.ahshop.BottleHealth = 100
opium.ahshop.CodeineHealth = 100
opium.ahshop.PackedHealth = 100
opium.ahshop.PapaverineHealth = 100
opium.ahshop.SulfateHealth = 100
opium.ahshop.GasHealth = 100
opium.ahshop.WaterHealth = 100
opium.ahshop.HeaterHealth = 100

-- Heater config:
opium.ahshop.HeaterColor = Color(33,33,33)
opium.ahshop.HeaterSound = "ambient/machines/electric_machine.wav"
opium.ahshop.HeaterCookTime = 72 -- The higher number, more time it will take to cook.