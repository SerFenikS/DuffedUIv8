local D, C, L = unpack(select(2, ...))

local ADDON_NAME, ns = ...
local oUF = ns.oUF or oUF
assert(oUF, 'DuffedUI was unable to locate oUF install.')

ns._Objects = {}
ns._Headers = {}

local class = select(2, UnitClass('player'))
local texture = C['media']['normTex']
local f, fs, ff = C['media']['font'], 8, 'THINOUTLINE'
local nWidth, nHeight = C['nameplate']['platewidth'], C['nameplate']['plateheight']
local pScale = C['nameplate']['platescale']
local pDebuffs = C['nameplate']['pDebuffs']

-- Set color for threat
local function ColorHealthbarOnThreat(self,unit)
	if self.colorThreat and self.colorThreatInvers and unit and UnitThreatSituation('player', unit) == 3 then
		self:SetStatusBarColor(0, 1, 0, .3)
		self.bg:SetVertexColor(0, 1 * .2, 0)
	elseif self.colorThreat and unit and UnitThreatSituation(unit) == 3 then
		self:SetStatusBarColor(1, 0, 0, .3)
		self.bg:SetVertexColor(1 * .2, 0, 0)
	end
end

-- PostUpdateHealth
local function PostUpdateHealth(self, unit, min, max)
	ColorHealthbarOnThreat(self,unit)
end

local function SetCastBarColorShielded(self)
	self.__owner:SetStatusBarColor(1, 0, 0, .3)
end

local function SetCastBarColorDefault(self)
	self.__owner:SetStatusBarColor(unpack(C['castbar']['color']))
end

-- UpdateThreat
local function UpdateThreat(self,event,unit)
	if event == 'PLAYER_ENTER_COMBAT' or event == 'PLAYER_LEAVE_COMBAT' then
		--do natting
	elseif self.unit ~= unit then
		return
	end
	self.Health:ForceUpdate()
end

D['ConstructNameplates'] = function(self)
	-- Initial Elements
	self.colors = D['UnitColor']

	-- health
	local health = CreateFrame('StatusBar', nil, self)
	health:SetAllPoints()
	health:SetStatusBarTexture(texture)
	health.colorTapping = true
	health.colorReaction = true
	health.frequentUpdates = true
	health.Smooth = true
	if C['nameplate']['classcolor'] then health.colorClass = true else health.colorClass = false end
	if C['nameplate']['threat'] then
		health.colorThreat = true
		health.colorThreatInvers = true
	else
		health.colorThreat = false
		health.colorThreatInvers = false
	end
	health.PostUpdate = PostUpdateHealth

	-- threat
	if health.colorThreat and health.colorThreatInvers then
		table.insert(self.__elements, D.UpdateThreat)
		self:RegisterEvent('PLAYER_ENTER_COMBAT', UpdateThreat)
		self:RegisterEvent('PLAYER_LEAVE_COMBAT', UpdateThreat)
		self:RegisterEvent('PLAYER_TARGET_CHANGED', UpdateThreat)
		self:RegisterEvent('UNIT_THREAT_LIST_UPDATE', UpdateThreat)
		self:RegisterEvent('UNIT_THREAT_SITUATION_UPDATE', UpdateThreat)
	end

	-- health border
	local HealthBorder = CreateFrame('Frame', nil, health)
	HealthBorder:Point('TOPLEFT', health, 'TOPLEFT', -1, 1)
	HealthBorder:Point('BOTTOMRIGHT', health, 'BOTTOMRIGHT', 1, -1)
	HealthBorder:SetTemplate('Transparent')
	HealthBorder:SetFrameLevel(2)
	self.HealthBorder = HealthBorder

	-- background
	bg = health:CreateTexture(nil, 'BACKGROUND')
	bg:SetAllPoints()
	bg:SetColorTexture(.2, .2, .2)

	-- name
	name = health:CreateFontString(nil, 'OVERLAY')
	name:Point('LEFT', health, 'LEFT', 0, 10)
	name:SetJustifyH('LEFT')
	name:SetFont(f, fs, ff)
	name:SetShadowOffset(1.25, -1.25)
	self:Tag(name, '[difficulty][level][shortclassification] [DuffedUI:getnamecolor][DuffedUI:namelong]')

	-- debuffs
	local debuffs = CreateFrame('Frame', 'NameplateDebuffs', self)
	debuffs:SetPoint('BOTTOMLEFT', health, 'TOPLEFT', 0, 18)
	debuffs:SetSize(nWidth, 15)
	debuffs.size = 18
	debuffs.num = 5
	debuffs.disableCooldown = true
	debuffs.onlyShowPlayer = pDebuffs
	debuffs.filter = 'HARMFUL|INCLUDE_NAME_PLATE_ONLY'
	debuffs.spacing = 4
	debuffs.initialAnchor = 'TOPLEFT'
	debuffs['growth-y'] = 'UP'
	debuffs['growth-x'] = 'RIGHT'
	debuffs.PostCreateIcon = D['PostCreateAura']
	debuffs.PostUpdateIcon = D['PostUpdateAura']

	-- castbar
	local castbar = CreateFrame('StatusBar', self:GetName() .. 'CastBar', self)
	castbar:SetStatusBarTexture(texture)
	castbar:Width(nWidth - 2)
	castbar:Height(5)
	castbar:Point('TOP', health, 'BOTTOM', 0, -4)

	castbar.CustomTimeText = D['CustomTimeText']
	castbar.CustomDelayText = CustomDelayText
	castbar.PostCastStart = D['CastBar']
	castbar.PostChannelStart = D['CastBar']

	castbar.time = castbar:CreateFontString(nil, 'OVERLAY')
	castbar.time:SetFont(f, 6, ff)
	castbar.time:Point('RIGHT', castbar, 'RIGHT', -5, 0)
	castbar.time:SetTextColor(.84, .75, .65)
	castbar.time:SetJustifyH('RIGHT')

	castbar.Text = castbar:CreateFontString(nil, 'OVERLAY')
	castbar.Text:SetFont(f, 6, ff)
	castbar.Text:Point('LEFT', castbar, 'LEFT', 6, 0)
	castbar.Text:SetTextColor(.84, .75, .65)
	castbar:CreateBackdrop()
	
	local shield = castbar:CreateTexture(nil, 'BACKGROUND', nil, -8)
	shield.__owner = castbar
	castbar.Shield = shield
	hooksecurefunc(shield, 'Show', SetCastBarColorShielded)
	hooksecurefunc(shield, 'Hide', SetCastBarColorDefault)

	castbar.button = CreateFrame('Frame', nil, castbar)
	castbar.button:SetTemplate('Default')

	castbar.button:Size(nHeight + 12)
	castbar.button:Point('BOTTOMLEFT', castbar, 'BOTTOMRIGHT', 3, -2)
	castbar.icon = castbar.button:CreateTexture(nil, 'ARTWORK')
	castbar.icon:Point('TOPLEFT', castbar.button, 2, -2)
	castbar.icon:Point('BOTTOMRIGHT', castbar.button, -2, 2)
	castbar.icon:SetTexCoord(unpack(D['IconCoord']))

	local RaidIcon = health:CreateTexture(nil, 'OVERLAY')
	RaidIcon:SetTexture(C['media']['RaidIcons'])
	RaidIcon:Size(20, 20)
	RaidIcon:Point('LEFT', health, 'LEFT', -25, 0)

	-- size
	self:SetSize(nWidth, nHeight)
	self:SetPoint('CENTER', 0, 0)
	self:SetScale(pScale * UIParent:GetScale())

	-- Init
	self.Health = health
	self.Health.bg = bg
	self.Name = name
	self.Debuffs = debuffs
	self.Castbar = castbar
	self.Castbar.Time = castbar.time
	self.Castbar.Icon = castbar.icon
	self.RaidTargetIndicator = RaidIcon
end