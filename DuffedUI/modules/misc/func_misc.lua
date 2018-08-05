local D, C, L = unpack(select(2, ...))
-- Misc funtions

-- Hide error text on the middle of screen
if C['duffed']['errorfilter'] then
	local f, o = CreateFrame('Frame'), L['errors']['noerror']
	f:SetScript('OnEvent', function(self, event, error)
		if C['duffed']['filter'][error] then UIErrorsFrame:AddMessage(error, 1, 0 ,0) else o = error end
	end)

	SLASH_TUKUIERROR1 = '/error'
	function SlashCmdList.DUFFEDUIERROR() print(o) end
	UIErrorsFrame:UnregisterEvent('UI_ERROR_MESSAGE')
	f:RegisterEvent('UI_ERROR_MESSAGE')
end

-- Move the durability indicator from Blizzard
hooksecurefunc(DurabilityFrame, 'SetPoint', function(self, _, parent)
	if (parent == 'MinimapCluster') or (parent == _G['MinimapCluster']) then
		self:ClearAllPoints()
		self:Point('BOTTOM', UIParent, 'BOTTOM', 0, 200)
	end
end)

-- GhostFrame at top
GhostFrame:SetTemplate('Default')
GhostFrame:SetBackdropColor(0, 0, 0, 0)
GhostFrame:SetBackdropBorderColor(0, 0, 0, 0)
GhostFrame.SetBackdropColor = D['Dummy']
GhostFrame.SetBackdropBorderColor = D['Dummy']
GhostFrameContentsFrame:SetTemplate('Default')
GhostFrameContentsFrameIcon:SetTexture(nil)
GhostFrameContentsFrame:Width(148)
GhostFrameContentsFrame:ClearAllPoints()
GhostFrameContentsFrame:SetPoint('CENTER')
GhostFrameContentsFrame.SetPoint = D['Dummy']
GhostFrame:SetFrameStrata('LOW')
GhostFrame:SetFrameLevel(5)
GhostFrame:ClearAllPoints()
GhostFrame:Point('TOP', UIParent, 0, 26)
GhostFrameContentsFrameText:ClearAllPoints()
GhostFrameContentsFrameText:Point('BOTTOM', 0, 5)

-- Mirror timer
local total = MIRRORTIMER_NUMTIMERS
local function Skin(timer, value, maxvalue, scale, paused, label)
	for i = 1, total, 1 do
		local frame = _G['MirrorTimer'..i]
		if not frame.isSkinned then
			frame:SetTemplate('Default')

			local statusbar = _G[frame:GetName()..'StatusBar']
			local border = _G[frame:GetName()..'Border']
			local text = _G[frame:GetName()..'Text']

			statusbar:ClearAllPoints()
			statusbar:Point('TOPLEFT', frame, 2, -2)
			statusbar:Point('BOTTOMRIGHT', frame, -2, 2)
			text:ClearAllPoints()
			text:SetPoint('CENTER', frame)
			statusbar:SetStatusBarTexture(C.media.normTex)
			border:SetTexture(nil)
			frame.isSkinned = true
		end
	end
end

hooksecurefunc('MirrorTimer_Show', Skin)

-- Raidmark menu
local menuFrame = CreateFrame('Frame', 'DuffedUIMarkingFrame', UIParent, 'UIDropDownMenuTemplate')
local menuList = {
	{text = L['symbol']['clear'],
	func = function() SetRaidTarget('target', 0) end},
	{text = L['symbol']['skull'],
	func = function() SetRaidTarget('target', 8) end},
	{text = '|cffff0000' .. L['symbol']['cross'] .. '|r',
	func = function() SetRaidTarget('target', 7) end},
	{text = '|cff00ffff' .. L['symbol']['square'] .. '|r',
	func = function() SetRaidTarget('target', 6) end},
	{text = '|cffC7C7C7' .. L['symbol']['moon'] .. '|r',
	func = function() SetRaidTarget('target', 5) end},
	{text = '|cff00ff00' .. L['symbol']['triangle'] .. '|r',
	func = function() SetRaidTarget('target', 4) end},
	{text = '|cff912CEE' .. L['symbol']['diamond'] .. '|r',
	func = function() SetRaidTarget('target', 3) end},
	{text = '|cffFF8000' .. L['symbol']['circle'] .. '|r',
	func = function() SetRaidTarget('target', 2) end},
	{text = '|cffffff00' .. L['symbol']['star'] .. '|r',
	func = function() SetRaidTarget('target', 1) end},
}

WorldFrame:HookScript('OnMouseDown', function(self, button)
	if(button=='RightButton' and IsShiftKeyDown() and IsControlKeyDown() and UnitExists('mouseover')) then 
		local inParty = (GetNumGroupMembers() > 0)
		local inRaid = (GetNumGroupMembers() > 0)
		if (inRaid and (IsRaidLeader() or IsRaidOfficer()) or (inParty and not inRaid)) or (not inParty and not inRaid) then Lib_EasyMenu(menuList, menuFrame, 'cursor', 0, 0, 'MENU', nil) end
	end
end)

-- Blizzard Timetracker
local function SkinIt(bar)
	local _, originalPoint, _, _, _ = bar:GetPoint()

	bar:ClearAllPoints()
	bar:Point('TOPLEFT', originalPoint, 'TOPLEFT', 2, -2)
	bar:Point('BOTTOMRIGHT', originalPoint, 'BOTTOMRIGHT', -2, 2)

	for i = 1, bar:GetNumRegions() do
		local region = select(i, bar:GetRegions())
		if region:GetObjectType() == 'Texture' then
			region:SetTexture(nil)
		elseif region:GetObjectType() == 'FontString' then
			region:SetFont(C['media']['font'], 11, 'THINOUTLINE')
			region:SetShadowColor(0, 0, 0, 0)
		end
	end

	bar:SetStatusBarTexture(C['media']['normTex'])
	bar:SetStatusBarColor(170 / 255, 10 / 255, 10 / 255)

	bar.backdrop = CreateFrame('Frame', nil, bar)
	bar.backdrop:SetFrameLevel(0)
	bar.backdrop:SetTemplate('Default')
	bar.backdrop:SetAllPoints(originalPoint)
end

local function SkinBlizzTimer(self, event)
	for _, b in pairs(TimerTracker.timerList) do
		if not b['bar'].skinned then
			SkinIt(b['bar'])
			b['bar'].skinned = true
		end
	end
end

local load = CreateFrame('Frame')
load:RegisterEvent('START_TIMER')
load:SetScript('OnEvent', SkinBlizzTimer)