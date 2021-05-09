--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_plogs/lua/plogs/vgui/tablist.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

local PANEL = {}

function PANEL:Init()
	self.num = 0
	self:SetSkin('pLogs')
	self.tablist = vgui.Create('DScrollPanel', self)
end

function PANEL:AddTab(title, tab, active)
	if active then 
		self.CurrentTab = tab 
	else
		tab:SetVisible(false)
	end

	if (tab:GetParent() ~= self) then
		tab:SetParent(self)
		tab:SetSkin(self:GetSkin())
	end

	tab:SetPos(149, 0)
	tab:SetSize(self:GetWide() - 149, self:GetTall())

	local button = vgui.Create('DButton')
	button:SetSize(150, 30)
	button:SetPos(0, 29 * self.num)
	button:SetText(title)
	button:SetSkin('pLogs')
	button:SetFont('plogs.ui.24')
	button.DoClick = function()
		self.CurrentButton.Active = false
		self.CurrentTab:SetVisible(false)
		tab:SetVisible(true)

		self.CurrentTab = tab
		self.CurrentButton = button
		button.Active = true
	end

	if active then
		self.CurrentButton = button
		button.Active = true
		self.CurrentTab = tab
	end

	button.Paint = function(button, w, h)
		derma.SkinHook('Paint', 'TabListButton', button, w, h)
	end

	self.tablist:AddItem(button)

	self.num = self.num + 1
end

function PANEL:AddButton(title, func)
	local button = vgui.Create('DButton')
	button:SetSize(150, 30)
	button:SetPos(0, 29 * self.num)
	button:SetText(title)
	button:SetSkin('pLogs')
	button:SetFont('plogs.ui.24')
	button.DoClick = function(self)
		func(self)
	end
	button.Paint = function(button, w, h)
		derma.SkinHook('Paint', 'TabListButton', button, w, h)
	end

	self.tablist:AddItem(button)

	self.num = self.num + 1
end

function PANEL:PerformLayout()
	self.tablist:SetSize(150, self:GetTall())
	self.tablist:SetPos(0, 0)
end

vgui.Register('plogs_tablist', PANEL, 'Panel')