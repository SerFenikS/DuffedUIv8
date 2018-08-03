local AS = unpack(AddOnSkins)

local AddOnName = ...

local AcceptFrame

local select, pairs, ipairs, type, pcall = select, pairs, ipairs, type, pcall
local floor, print, format, strlower, strfind, strmatch = floor, print, format, strlower, strfind, strmatch
local sort, tinsert = sort, tinsert
local _G = _G
local IsAddOnLoaded, C_Timer = IsAddOnLoaded, C_Timer

local SkinErrors = {}

function AS:CheckOption(optionName, ...)
	for i = 1, select('#', ...) do
		local addon = select(i, ...)
		if not addon then break end
		if not IsAddOnLoaded(addon) then return false end
	end

	return self.db[optionName]
end

function AS:SetOption(optionName, value)
	self.db[optionName] = value
end

function AS:Color(name)
	local color = '|cff1784d1%s|r'
	return (color):format(name)
end

function AS:Scale(Number)
	return AS.Mult * floor(Number/AS.Mult + .5)
end

function AS:OrderedPairs(t, f)
	local a = {}
	for n in pairs(t) do tinsert(a, n) end
	sort(a, f)
	local i = 0
	local iter = function()
		i = i + 1
		if a[i] == nil then return nil
			else return a[i], t[a[i]]
		end
	end
	return iter
end

function AS:Delay(delay, func)
	C_Timer.After(delay, func)
end

function AS:CheckAddOn(addon)
	return AS.AddOns[strlower(addon)] or false
end

function AS:Print(string)
	print(format('%s %s', AS.Title, string))
end

function AS:PrintURL(url)
	return format("|cFFC495DD[|Hurl:%s|h%s|h]|r", url, url)
end

function AS:Round(num, idp)
	local mult = 10^(idp or 0)
	return floor(num * mult + 0.5) / mult
end

function AS:RegisterForPetBattleHide(frame)
	if frame.IsVisible and frame:GetName() then
		AS.FrameLocks[frame:GetName()] = { shown = false }
	end
end

function AS:AddNonPetBattleFrames()
	for frame,data in pairs(AS.FrameLocks) do
		if data.shown then
			_G[frame]:Show()
		end
	end
end

function AS:RemoveNonPetBattleFrames()
	for frame,data in pairs(AS.FrameLocks) do
		if _G[frame]:IsVisible() then
			data.shown = true
			_G[frame]:Hide()
		else
			data.shown = false
		end
	end
end

function AS:RegisterSkin(addonName, skinFunc, ...)
	local events = {}
	local priority = 1
	for i = 1, select('#', ...) do
		local event = select(i, ...)
		if not event then break end
		if type(event) == 'number' then
			priority = event
		else
			events[event] = true
		end
	end
	local registerMe = { func = skinFunc, events = events, priority = priority }
	if not AS.register[addonName] then AS.register[addonName] = {} end
	AS.register[addonName][skinFunc] = registerMe
end

function AS:UnregisterSkin(addonName, skinFunc)
	if not AS.register[addonName] then return end

	if skinFunc then
		AS.register[addonName][skinFunc] = nil
	else
		AS.register[addonName] = nil
	end
end

local function GenerateEventFunction()
	local eventHandler = function(self, event, ...)
		for skin, funcs in pairs(AS.skins) do
			if AS:CheckOption(skin) and AS.events[event][skin] then
				for _, func in ipairs(funcs) do
					AS:CallSkin(skin, func, event, ...)
				end
			end
		end
	end
	return eventHandler
end

function AS:RegisteredSkin(addonName, priority, func, events)
	for c, _ in pairs(events) do
		if strfind(c, '%[') then
			local conflict = strmatch(c, '%[([!%w_]+)%]')
			if AS:CheckAddOn(conflict) then return end
		end
	end
	if not AS.skins[addonName] then AS.skins[addonName] = {} end
	AS.skins[addonName][priority] = func
	for event, _ in pairs(events) do
		if not strfind(event, '%[') then
			if not AS.events[event] then
				AS[event] = GenerateEventFunction()
				AS:RegisterEvent(event)
				AS.events[event] = {}
			end
			AS.events[event][addonName] = true
		end
	end
end

function AS:RegisterForPreload(addonName, skinFunc)
	AS.preload[addonName] = { func = skinFunc }
end

function AS:RunPreload(addonName)
	if AS.preload[addonName] then
		pcall(AS.preload[addonName].func, self, 'ADDON_LOADED', addonName)
	end
end

function AS:CallSkin(addonName, func, event, ...)
	if (AS:CheckOption('SkinDebug')) then
		func(self, event, ...)
	else
		local pass = pcall(func, self, event, ...)
		if not pass then
			local String = AS:CheckAddOn(addonName) and format('%s %s', addonName, GetAddOnMetadata(addonName, 'Version')) or addonName

			-- Disable Bad Skin
			AddOnSkinsDS[AS.Version] = AddOnSkinsDS[AS.Version] or {}
			AddOnSkinsDS[AS.Version][addonName] = true
			AS:SetOption(addonName, false)

			if AS.RunOnce then
				AS:AcceptFrame(format('%s %s: There was an error in the following skin: %s\n\nMake sure all AddOns are up to date before reporting.\n\nMake sure it has not been reported already.\n\nIf not... report to Azilroka immediately @ %s', AS.Title, AS.Version, String, AS:PrintURL(AS.TicketTracker)))
				AS:Print(AS:PrintURL(AS.TicketTracker)) 
			else
				tinsert(SkinErrors, String)
				AS.FoundError = true
			end
		end
	end
end

function AS:UnregisterSkinEvent(addonName, event)
	if not AS.events[event] then return end
	if not AS.events[event][addonName] then return end
	AS.events[event][addonName] = nil
	for addonName, _ in pairs(AS.events[event]) do
		if addonName then
			return
		end
	end
	AS:UnregisterEvent(event)
end

function AS:StartSkinning(event)
	AS:UnregisterEvent(event)

	AS:UpdateMedia()

	AS.Mult = 768 / AS.ScreenHeight / UIParent:GetScale()
	AS.ParchmentEnabled = AS:CheckOption('Parchment')

	for addonName, alldata in pairs(AS.register) do
		for _, data in pairs(alldata) do
			AS:RegisteredSkin(addonName, data.priority, data.func, data.events)
		end
	end

	if not AS:CheckOption('SkinDebug') then
		for Version, SkinTable in pairs(AddOnSkinsDS) do
			if Version == AS.Version or Version < AS.Version then
				for addonName, _ in pairs(SkinTable) do
					AS:SetOption(addonName, (Version == AS.Version and false or true))
				end
				if Version < AS.Version then
					AddOnSkinsDS[Version] = nil
				end
			end
		end
	end

	for addonName, funcs in AS:OrderedPairs(AS.skins) do
		if AS:CheckAddOn('ElvUI') and AS:GetElvUIBlizzardSkinOption(addonName) then
			AS:SetOption(addonName, false)
		end

		if AS:CheckOption(addonName) then
			for _, func in ipairs(funcs) do
				AS:CallSkin(addonName, func, event)
			end
		end
	end

	if AS:CheckAddOn('ElvUI') then
		ElvUI[1]:UpdateCooldownSettings('global')
	end

	if AS:CheckAddOn('AddonLoader') then
		AS:AcceptFrame('AddOnSkins is not compatible with AddonLoader.\nPlease remove it if you would like all the skins to function.')
	end

	if AS.FoundError then
		AS:AcceptFrame(format('%s %s: There was an error in the following skin: %s\n\nMake sure all AddOns are up to date before reporting.\n\nMake sure it has not been reported already.\n\nIf not... report to Azilroka immediately @ %s', AS.Title, AS.Version, table.concat(SkinErrors, ", "), AS:PrintURL(AS.TicketTracker)))
		AS:Print(AS:PrintURL(AS.TicketTracker))
	end

	AS.RunOnce = true
end

function AS:Init(event, addon)
	if event == 'ADDON_LOADED' and IsAddOnLoaded(AddOnName) then
		AS:BuildProfile()

		AS:UpdateMedia()

		self:RunPreload(addon)
	end
	if event == 'PLAYER_LOGIN' then
		AS:BuildOptions()
		AS:UpdateMedia()
		AS:EmbedInit()

		if _G.EnhancedShadows then
			AS.ES = _G.EnhancedShadows
		end

		AS.EP = LibStub('LibElvUIPlugin-1.0', true)
		if AS.EP then
			AS.EP:RegisterPlugin(AddOnName, AS.GetOptions)
		end

		if AS:CheckOption('LoginMsg') then
			AS:Print(format("Version: |cFF1784D1%s|r Loaded!", AS.Version))
		end

		AS:RegisterEvent('PET_BATTLE_CLOSE', 'AddNonPetBattleFrames')
		AS:RegisterEvent('PET_BATTLE_OPENING_START', 'RemoveNonPetBattleFrames')
		AS:RegisterEvent('PLAYER_ENTERING_WORLD', 'StartSkinning')
	end
end

function AS:AcceptFrame(MainText, Function)
	if not AcceptFrame then
		AcceptFrame = CreateFrame('Frame', 'AcceptFrame', UIParent)
		AS:SkinFrame(AcceptFrame)
		AcceptFrame:SetPoint('CENTER', UIParent, 'CENTER')
		AcceptFrame:SetFrameStrata('DIALOG')
		AcceptFrame.Text = AcceptFrame:CreateFontString(nil, "OVERLAY")
		AcceptFrame.Text:SetFont(AS.Font, 14)
		AcceptFrame.Text:SetPoint('TOP', AcceptFrame, 'TOP', 0, -10)
		AcceptFrame.Accept = CreateFrame('Button', nil, AcceptFrame, 'OptionsButtonTemplate')
		AS:SkinButton(AcceptFrame.Accept)
		AcceptFrame.Accept:SetSize(70, 25)
		AcceptFrame.Accept:SetPoint('RIGHT', AcceptFrame, 'BOTTOM', -10, 20)
		AcceptFrame.Accept:SetFormattedText('|cFFFFFFFF%s|r', YES)
		AcceptFrame.Close = CreateFrame('Button', nil, AcceptFrame, 'OptionsButtonTemplate')
		AS:SkinButton(AcceptFrame.Close)
		AcceptFrame.Close:SetSize(70, 25)
		AcceptFrame.Close:SetPoint('LEFT', AcceptFrame, 'BOTTOM', 10, 20)
		AcceptFrame.Close:SetScript('OnClick', function(self) self:GetParent():Hide() end)
		AcceptFrame.Close:SetFormattedText('|cFFFFFFFF%s|r', NO)
	end
	AcceptFrame.Text:SetText(MainText)
	AcceptFrame:SetSize(AcceptFrame.Text:GetStringWidth() + 100, AcceptFrame.Text:GetStringHeight() + 60)
	AcceptFrame.Accept:SetScript('OnClick', Function or function(self) AcceptFrame:Hide() end)
	AcceptFrame:Show()
end

AS:RegisterEvent('ADDON_LOADED', 'Init')
AS:RegisterEvent('PLAYER_LOGIN', 'Init')