local D, C, L = unpack(select(2, ...))
if not C['tooltip']['ids'] then return end

-- Global variables
local hooksecurefunc = hooksecurefunc
local select = select
local UnitBuff = UnitBuff
local UnitDebuff = UnitDebuff
local UnitAura = UnitAura
local UnitGUID = UnitGUID
local GetGlyphSocketInfo = GetGlyphSocketInfo
local tonumber = tonumber
local strfind = strfind

local types = {
    spell       = 'SpellID:',
    item        = 'ItemID:',
    unit        = 'NPC ID:',
    quest       = 'QuestID:',
    talent      = 'TalentID:',
    achievement = 'AchievementID:',
    ability     = 'AbilityID:',
    currency    = 'CurrencyID:'
}

local function addLine(tooltip, id, type)
    local found = false

    for i = 1, 15 do
        local frame = _G[tooltip:GetName() .. 'TextLeft' .. i]
        local text
        if frame then text = frame:GetText() end
        if text and text == type then found = true break end
    end

    if not found then
		tooltip:AddLine(' ')
        tooltip:AddLine(type .. ' |cffffffff' .. id)
        tooltip:Show()
    end
end

local function onSetHyperlink(self, link)
    local type, id = string.match(link,'^(%a+):(%d+)')
    if not type or not id then return end
	if type == 'talent' then
        addLine(self, id, types.talent)
    elseif type == 'quest' then
        addLine(self, id, types.quest)
    elseif type == 'achievement' then
        addLine(self, id, types.achievement)
    elseif type == 'item' then
        addLine(self, id, types.item)
    elseif type == 'currency' then
        addLine(self, id, types.currency)
    end
end

hooksecurefunc(ItemRefTooltip, 'SetHyperlink', onSetHyperlink)
hooksecurefunc(GameTooltip, 'SetHyperlink', onSetHyperlink)

hooksecurefunc('SetItemRef', function(link, ...)
    local id = tonumber(link:match('spell:(%d+)'))
    if id then addLine(ItemRefTooltip, id, types.spell) end
end)

GameTooltip:HookScript('OnTooltipSetSpell', function(self)
    local id = select(3, self:GetSpell())
    if id then addLine(self, id, types.spell) end
end)

hooksecurefunc(GameTooltip, 'SetUnitBuff', function(self, ...)
	local id = select(10, UnitBuff(...))
	if id then addLine(GameTooltip, id, types.spell) end
end)

hooksecurefunc(GameTooltip, 'SetUnitDebuff', function(self, ...)
	local id = select(10, UnitDebuff(...))
	if id then addLine(GameTooltip, id, types.spell) end
end)

hooksecurefunc(GameTooltip, 'SetUnitAura', function(self, ...)
	local id = select(10, UnitAura(...))
	if id then addLine(GameTooltip, id, types.spell) end
end)

-- NPCs
GameTooltip:HookScript('OnTooltipSetUnit', function(self)
    if C_PetBattles.IsInBattle() then return end
    local unit = select(2, self:GetUnit())
    if unit then
        local guid = UnitGUID(unit) or ''
        local id = tonumber(guid:match('-(%d+)-%x+$'), 10)
        if id and guid:match('%a+') ~= 'Player' then addLine(GameTooltip, id, types.unit) end
    end
end)

-- Items
local function attachItemTooltip(self)
	local link = select(2, self:GetItem())
	if link then
		--local id = string.match(link, 'item:(%d*)')
		local id = select(3, strfind(link, '^|%x+|Hitem:(%-?%d+):(%d*):(%d*):(%d*):(%d*):(%d*):(%-?%d*):(%-?%d*)'))
		if (id == '' or id == '0') and TradeSkillFrame ~= nil and TradeSkillFrame:IsVisible() and GetMouseFocus().reagentIndex then
			local selectedRecipe = TradeSkillFrame.RecipeList:GetSelectedRecipeID()
			for i = 1, 8 do
				if GetMouseFocus().reagentIndex == i then
					id = C_TradeSkillUI.GetRecipeReagentItemLink(selectedRecipe, i):match('item:(%d+):') or nil
					break
				end
			end
		end
		if id then addLine(self, id, types.item) end
	end
end

GameTooltip:HookScript('OnTooltipSetItem', attachItemTooltip)
ItemRefTooltip:HookScript('OnTooltipSetItem', attachItemTooltip)
ItemRefShoppingTooltip1:HookScript('OnTooltipSetItem', attachItemTooltip)
ItemRefShoppingTooltip2:HookScript('OnTooltipSetItem', attachItemTooltip)
ShoppingTooltip1:HookScript('OnTooltipSetItem', attachItemTooltip)
ShoppingTooltip2:HookScript('OnTooltipSetItem', attachItemTooltip)

-- Achievement Frame Tooltips
local f = CreateFrame('frame')
f:RegisterEvent('ADDON_LOADED')
f:SetScript('OnEvent', function(_, _, what)
    if what == 'Blizzard_AchievementUI' then
        for i,button in ipairs(AchievementFrameAchievementsContainer.buttons) do
            button:HookScript('OnEnter', function()
                GameTooltip:SetOwner(button, 'ANCHOR_NONE')
                GameTooltip:SetPoint('TOPLEFT', button, 'TOPRIGHT', 0, 0)
                addLine(GameTooltip, button.id, types.achievement)
                GameTooltip:Show()
            end)
            button:HookScript('OnLeave', function() GameTooltip:Hide() end)
        end
    end
end)

-- Pet battle buttons
hooksecurefunc('PetBattleAbilityButton_OnEnter', function(self)
    local petIndex = C_PetBattles.GetActivePet(LE_BATTLE_PET_ALLY)
    if ( self:GetEffectiveAlpha() > 0 ) then
        local id = select(1, C_PetBattles.GetAbilityInfo(LE_BATTLE_PET_ALLY, petIndex, self:GetID()))
        if id then
            local oldText = PetBattlePrimaryAbilityTooltip.Description:GetText(id)
            PetBattlePrimaryAbilityTooltip.Description:SetText(oldText .. '\r\r' .. types.ability .. '|cffffffff ' .. id .. '|r')
        end
    end
end)

-- Pet battle auras
hooksecurefunc('PetBattleAura_OnEnter', function(self)
    local parent = self:GetParent()
    local id = select(1, C_PetBattles.GetAuraInfo(parent.petOwner, parent.petIndex, self.auraIndex))
    if id then
        local oldText = PetBattlePrimaryAbilityTooltip.Description:GetText(id)
        PetBattlePrimaryAbilityTooltip.Description:SetText(oldText .. '\r\r' .. types.ability .. '|cffffffff ' .. id .. '|r')
    end
end)

-- Currencies
hooksecurefunc(GameTooltip, 'SetCurrencyToken', function(self, index)
	local id = tonumber(string.match(GetCurrencyListLink(index),'currency:(%d+)'))
	if id then addLine(self, id, types.currency) end
end)

hooksecurefunc(GameTooltip, 'SetCurrencyByID', function(self, id)
   if id then addLine(self, id, types.currency) end
end)

hooksecurefunc(GameTooltip, 'SetCurrencyTokenByID', function(self, id)
   if id then addLine(self, id, types.currency) end
end)