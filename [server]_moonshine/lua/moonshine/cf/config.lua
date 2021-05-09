--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_moonshine/lua/moonshine/cf/config.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

--------------------------------------------------------------------------------------
---------------------------------The Moonshining--------------------------------------
--------------------------------------------------------------------------------------
--[[
	Created by ahshop3 & Pyro.
	You are not allowed distribute the following script.
	
	YOU NEED TO ATCIVATE YOUR SCRIPT.
	OPEN TICKET IF YOU NEED SOME HELP
]]
--------------------------------------------------------------------------------------
-----------------------------DO NOT TOUCH THIS PART-----------------------------------
--------------------------------------------------------------------------------------
dist = {}
dist.ahshop = {}

--------------------------------------------------------------------------------------
-----------------------------ACTIVATE YOUR COPY HERE----------------------------------
--------------------------------------------------------------------------------------

-- if SERVER then
-- dist.ahshop.LicenseKey = "" -- find your key here: http://vps435927.ovh.net/
-- end

--------------------------------------------------------------------------------------
--------------------------------Distillery Config-------------------------------------
--------------------------------------------------------------------------------------

-- How much health does the distillery plant have?
dist.ahshop.DistilleryHealth = 350
-- What sound does the plant play, when it's cooking the moonshine?
dist.ahshop.DistilleryBoilSound = "ambient/gas/steam2.wav"
-- What sound does the plant play, when you press a button?
dist.ahshop.DistilleryButtonSound = "buttons/blip1.wav"
-- When the distillery hit the red heat field, how long does it take for the plant to explode?
dist.ahshop.DistilleryOverheatTime = 8
-- How much grain does the distillery use per sec?
dist.ahshop.DistilleryGrainUsage = 1.2
-- How much corn does the distillery use per sec?
dist.ahshop.DistilleryCornUsage = 1.1
-- How much water does the distillery use per sec?
dist.ahshop.DistilleryWaterUsage = 2
-- How much heat does it create per sec?
dist.ahshop.DistilleryHeatAmount = 1.8
-- How much heat is it losing when it's not running?
dist.ahshop.DistilleryUnHeatAmount = 2.5
-- How much heat is it losing per time DistilleryCoolRunTimes run.
dist.ahshop.DistilleryHeatCoolingAmount = 7
-- When you press cooldown, how many times does it run?
dist.ahshop.DistilleryCoolRunTimes = 10
-- The amount of moonshine that is plussed each sec it run
dist.ahshop.DistilleryMoonshineAmount = 6
-- How much grain does a grain box give?
dist.ahshop.DistilleryGrainAmount = 10
-- How much corn does a corn box give?
dist.ahshop.DistilleryCornAmount = 10
-- How much water does a water bucket give?
dist.ahshop.DistilleryWaterAmount = 10

--------------------------------------------------------------------------------------
-----------------------------------NPC Config-----------------------------------------
--------------------------------------------------------------------------------------

-- The  model of the npc.
dist.ahshop.NpcModel = "models/Characters/Hostage_02.mdl"
-- The maximum distance you can sell a barrel to a npc.
dist.ahshop.NpcPurchaseDistance = 300
-- The money you get per barrel?
dist.ahshop.NpcBarrelPrice = 7000
-- The money bonus you get if the alcohol procentage is above a certain level. (2 * the money you get)
dist.ahshop.NpcPurchaseBonus = 2
-- The level the alcohol need to be above to get the bonus above.
dist.ahshop.NpcPurchaseBonusAlcoholAmount = 50

--------------------------------------------------------------------------------------
--------------------------------Oxidation Config--------------------------------------
--------------------------------------------------------------------------------------

-- How long does it take to oxidate a single barrel?
dist.ahshop.OxidationSingleBarrelTime = 10

--------------------------------------------------------------------------------------
----------------------------------Plant Config----------------------------------------
--------------------------------------------------------------------------------------

-- Take the number and * it with 6, and you got the grow time for the grain plant.
dist.ahshop.GrainGrowTime = 18
-- Take the number and * it with 6, and you got the grow time for the corn plant.
dist.ahshop.CornGrowTime = 18

--------------------------------------------------------------------------------------
----------------------------------Stand Config----------------------------------------
--------------------------------------------------------------------------------------

-- How much does the stand sell the moonshine bottles for?
dist.ahshop.StandBottlePrice = 2500
-- How much money do you receive per bottle of moonshine?
dist.ahshop.StandBottleSellPrice = 2000

--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------


