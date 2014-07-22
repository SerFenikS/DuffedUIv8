local D, C, L = select(2, ...):unpack()

local DuffedUIUnitFrames = D["UnitFrames"]
local Font = D.GetFont(C["unitframes"].Font)
local HealthTexture = D.GetTexture(C["unitframes"].HealthTexture)
local PowerTexture = D.GetTexture(C["unitframes"].PowerTexture)

function DuffedUIUnitFrames:Boss()
	self:RegisterForClicks("AnyUp")
	self:SetScript("OnEnter", UnitFrame_OnEnter)
	self:SetScript("OnLeave", UnitFrame_OnLeave)
	self:SetAttribute("type2", "focus")
	
	local Health = CreateFrame("StatusBar", nil, self)
	Health:Height(22)
	Health:SetPoint("TOPLEFT")
	Health:SetPoint("TOPRIGHT")
	Health:SetStatusBarTexture(HealthTexture)
	Health.Background = Health:CreateTexture(nil, "BORDER")
	Health.Background:SetAllPoints()
	Health.Background:SetTexture(.1, .1, .1)

	local HealthBorder = CreateFrame("Frame", nil, Health)
	HealthBorder:SetPoint("TOPLEFT", Health, "TOPLEFT", D.Scale(-2), D.Scale(2))
	HealthBorder:SetPoint("BOTTOMRIGHT", Health, "BOTTOMRIGHT", D.Scale(2), D.Scale(-2))
	HealthBorder:SetTemplate("Default")
	HealthBorder:CreateShadow("Default")
	HealthBorder:SetFrameLevel(2)

	Health.Value = Health:CreateFontString(nil, "OVERLAY")
	Health.Value:SetFontObject(Font)
	Health.Value:Point("LEFT", 2, 0)

	Health.PostUpdate = DuffedUIUnitFrames.PostUpdateHealth

	Health.frequentUpdates = true
	if C["unitframes"].UniColor == true then
		Health.colorDisconnected = false
		Health.colorClass = false
		Health.colorReaction = false
		Health:SetStatusBarColor(unpack(C["unitframes"].HealthBarColor))
		Health.Background:SetVertexColor(unpack(C["unitframes"].HealthBGColor))
	else
		Health.colorDisconnected = true
		Health.colorClass = true
		Health.colorReaction = true
		Health.Background:SetTexture(.1, .1, .1)
	end
	if (C["unitframes"].Smooth) then Health.Smooth = true end

	-- Power
	local Power = CreateFrame("StatusBar", nil, self)
	Power:Height(3)
	Power:Point("TOPLEFT", Health, "BOTTOMLEFT", 85, 0)
	Power:Point("TOPRIGHT", Health, "BOTTOMRIGHT", -9, -3)
	Power:SetStatusBarTexture(PowerTexture)
	Power:SetFrameLevel(Health:GetFrameLevel() + 1)

	Power.Background = Power:CreateTexture(nil, "BORDER")
	Power.Background:SetAllPoints(Power)
	Power.Background:SetTexture(.1, .1, .1)
	Power.Background.multiplier = 0.3

	local PowerBorder = CreateFrame("Frame", nil, Power)
	PowerBorder:SetPoint("TOPLEFT", Power, "TOPLEFT", D.Scale(-2), D.Scale(2))
	PowerBorder:SetPoint("BOTTOMRIGHT", Power, "BOTTOMRIGHT", D.Scale(2), D.Scale(-2))
	PowerBorder:SetTemplate("Default")
	PowerBorder:CreateShadow("Default")
	PowerBorder:SetFrameLevel(Health:GetFrameLevel() + 1)

	Power.Value = Power:CreateFontString(nil, "OVERLAY")
	Power.Value:SetFontObject(Font)
	Power.Value:Point("RIGHT", -2, 0)

	Power.PostUpdate = DuffedUIUnitFrames.PostUpdatePower
	
	Power.frequentUpdates = true
	Power.colorPower = true
	if (C["unitframes"].Smooth) then Power.Smooth = true end
			
	local Name = Health:CreateFontString(nil, "OVERLAY")
	Name:SetPoint("CENTER", Health, "CENTER", 0, 0)
	Name:SetJustifyH("CENTER")
	Name:SetFontObject(Font)
	Name.frequentUpdates = 0.2
	
	local Buffs = CreateFrame("Frame", nil, self)
	Buffs:SetHeight(22)
	Buffs:SetWidth(252)
	Buffs:Point("RIGHT", self, "LEFT", -4, 3)
	Buffs.size = 26
	Buffs.num = 3
	Buffs.spacing = 2
	Buffs.initialAnchor = "RIGHT"
	Buffs["growth-x"] = "LEFT"
	Buffs.PostCreateIcon = DuffedUIUnitFrames.PostCreateAura
	Buffs.PostUpdateIcon = DuffedUIUnitFrames.PostUpdateAura

	local Debuffs = CreateFrame("Frame", nil, self)
	Debuffs:SetHeight(22)
	Debuffs:SetWidth(200)
	Debuffs:Point("LEFT", self, "RIGHT", 4, 3)
	Debuffs.size = 26
	Debuffs.num = 5
	Debuffs.spacing = 2
	Debuffs.initialAnchor = "LEFT"
	Debuffs["growth-x"] = "RIGHT"
	Debuffs.PostCreateIcon = DuffedUIUnitFrames.PostCreateAura
	Debuffs.PostUpdateIcon = DuffedUIUnitFrames.PostUpdateAura
	
	local CastBar = CreateFrame("StatusBar", nil, self)
	CastBar:SetPoint("LEFT", 24, 0)
	CastBar:SetPoint("RIGHT", -2, 0)
	CastBar:SetPoint("BOTTOM", 0, -22)
	CastBar:SetHeight(10)
	CastBar:SetStatusBarTexture(Texture)
	CastBar:SetFrameLevel(6)
	
	CastBar.Background = CastBar:CreateTexture(nil, "BORDER")
	CastBar.Background:SetAllPoints(CastBar)
	CastBar.Background:SetTexture(Texture)
	CastBar.Background:SetVertexColor(0.15, 0.15, 0.15)
	
	local CastBarBorder = CreateFrame("Frame", nil, CastBar)
	CastBarBorder:SetPoint("TOPLEFT", CastBar, "TOPLEFT", D.Scale(-2), D.Scale(2))
	CastBarBorder:SetPoint("BOTTOMRIGHT", CastBar, "BOTTOMRIGHT", D.Scale(2), D.Scale(-2))
	CastBarBorder:SetTemplate("Default")
	CastBarBorder:CreateShadow("Default")
	CastBarBorder:SetFrameLevel(CastBar:GetFrameLevel() - 1)
	
	CastBar.Time = CastBar:CreateFontString(nil, "OVERLAY")
	CastBar.Time:SetFontObject(Font)
	CastBar.Time:Point("RIGHT", CastBar, "RIGHT", -4, 0)
	CastBar.Time:SetTextColor(0.84, 0.75, 0.65)
	CastBar.Time:SetJustifyH("RIGHT")

	CastBar.Text = CastBar:CreateFontString(nil, "OVERLAY")
	CastBar.Text:SetFontObject(Font)
	CastBar.Text:Point("LEFT", CastBar, "LEFT", 4, 0)
	CastBar.Text:SetTextColor(0.84, 0.75, 0.65)
	
	CastBar.Button = CreateFrame("Frame", nil, CastBar)
	CastBar.Button:Height(CastBar:GetHeight() + 4)
	CastBar.Button:Width(CastBar:GetHeight() + 4)
	CastBar.Button:Point("RIGHT", CastBar, "LEFT", -4, 0)
	CastBar.Button:SetTemplate()
	CastBar.Button:SetBackdropBorderColor(C["medias"].BorderColor[1] * 0.7, C["medias"].BorderColor[2] * 0.7, C["medias"].BorderColor[3] * 0.7)
	
	CastBar.Icon = CastBar.Button:CreateTexture(nil, "ARTWORK")
	CastBar.Icon:Point("TOPLEFT", CastBar.Button, 2, -2)
	CastBar.Icon:Point("BOTTOMRIGHT", CastBar.Button, -2, 2)
	CastBar.Icon:SetTexCoord(unpack(D.IconCoord))
	
	CastBar.CustomTimeText = DuffedUIUnitFrames.CustomCastTimeText
	CastBar.CustomDelayText = DuffedUIUnitFrames.CustomCastDelayText
	CastBar.PostCastStart = DuffedUIUnitFrames.CheckCast
	CastBar.PostChannelStart = DuffedUIUnitFrames.CheckChannel

	local AltPowerBar = CreateFrame("StatusBar", nil, Health)
	AltPowerBar:SetFrameLevel(Health:GetFrameLevel() + 1)
	AltPowerBar:Height(3)
	AltPowerBar:SetStatusBarTexture(HealthTexture)
	AltPowerBar:GetStatusBarTexture():SetHorizTile(false)
	AltPowerBar:SetStatusBarColor(0, 0, 0)
	AltPowerBar:SetPoint("LEFT")
	AltPowerBar:SetPoint("RIGHT")
	AltPowerBar:SetPoint("TOP", Health, "TOP")
	AltPowerBar:SetBackdrop({
		bgFile = C["medias"].Blank, 
		edgeFile = C["medias"].Blank, 
		tile = false, tileSize = 0, edgeSize = D.Scale(1), 
		insets = { left = 0, right = 0, top = 0, bottom = D.Scale(-1)}
	})
	AltPowerBar:SetBackdropColor(0, 0, 0)
	AltPowerBar:SetBackdropBorderColor(0, 0, 0)
	AltPowerBar.PostUpdate = DuffedUIUnitFrames.UpdateBossAltPower

	self:Tag(Name, "[DuffedUI:GetNameColor][DuffedUI:NameLong]")
	self.Health = Health
	self.Health.bg = Health.Background
	self.HealthBorder = HealthBorder
	self.Power = Power
	self.Power.bg = Power.Background
	self.PowerBorder = PowerBorder
	self.Name = Name
	self.Debuffs = Debuffs
	self.AltPowerBar = AltPowerBar
	self.Buffs = Buffs
	self.Castbar = CastBar
	self.Castbar.Time = CastBar.Time
	self.Castbar.Icon = CastBar.Icon
	self.CastBarBorder = CastBarBorder
end