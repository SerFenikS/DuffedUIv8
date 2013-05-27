local T, C, L = select(2, ...):unpack()

local TukuiUnitFrames = T["UnitFrames"]

function TukuiUnitFrames:TargetOfTarget()
	self:RegisterForClicks("AnyUp")
	self:SetScript("OnEnter", UnitFrame_OnEnter)
	self:SetScript("OnLeave", UnitFrame_OnLeave)
	self:SetBackdrop(TukuiUnitFrames.Backdrop)
	self:SetBackdropColor(0, 0, 0)
	self:CreateShadow()

	local Panel = CreateFrame("Frame", nil, self)
	Panel:SetTemplate()
	Panel:Size(129, 17)
	Panel:Point("BOTTOM", self, 0, 0)
	Panel:SetFrameLevel(2)
	Panel:SetFrameStrata("MEDIUM")
	Panel:SetBackdropBorderColor(C.Media.BorderColor[1] * 0.7, C.Media.BorderColor[2] * 0.7, C.Media.BorderColor[3] * 0.7)
	
	local Health = CreateFrame("StatusBar", nil, self)
	Health:Height(18)
	Health:SetPoint("TOPLEFT")
	Health:SetPoint("TOPRIGHT")
	Health:SetStatusBarTexture(C.Media.Normal)
	Health.frequentUpdates = true
	Health.PostUpdate = T.PostUpdatePetColor
	Health.colorDisconnected = true	
	Health.colorClass = true
	Health.colorReaction = true	
	
	Health.Background = Health:CreateTexture(nil, "BORDER")
	Health.Background:Point("TOPLEFT", Health, -1, 1)
	Health.Background:Point("BOTTOMRIGHT", Health, 1, -1)
	Health.Background:SetTexture(0, 0, 0)
	
	if C.UnitFrames.Smooth then
		Health.Smooth = true
	end

	local Name = Health:CreateFontString(nil, "OVERLAY")
	Name:SetPoint("CENTER", Health, "CENTER", 0, 0)
	Name:SetFont(C.Media.AltFont, 12)
	Name:SetJustifyH("CENTER")

	self.Panel = Panel
	self.Health = Health
	self.Health.bg = Health.Background
	self.Name = Name
end