local D, C, L = unpack(select(2, ...)) 
-----------------------------------------
-- DuffedUI Micro Menu
--
-- By: Rian Quinn
-- Date: 12-17-2010
--
-- Notes: This datatext is designed to
--        show the same micromenu that
--        is shown when you use the
--        middle mouse key on the mini
--        map.
-----------------------------------------

if not C['datatext']['micromenu'] or C['datatext']['micromenu'] == 0 then return end

local Stat = CreateFrame('Frame', 'DuffedUIStatMicroMenu')
Stat:EnableMouse(true)
Stat:SetFrameStrata('BACKGROUND')
Stat:SetFrameLevel(3)
Stat.Color1 = D['RGBoHex'](unpack(C['media']['datatextcolor1']))
Stat.Color2 = D['RGBoHex'](unpack(C['media']['datatextcolor2']))

local f, fs, ff = C['media']['font'], 11, 'THINOUTLINE'
local Text  = Stat:CreateFontString('DuffedUIStatMicroMenuText', 'OVERLAY')
Text:SetFont(f, fs, ff)
D['DataTextPosition'](C['datatext']['micromenu'], Text)

local function OnEvent(self, event, ...)
	Text:SetText(Stat.Color2 .. MAINMENU_BUTTON .. '|r')
	self:SetAllPoints(Text)
end

local function OpenMenu()
	if not DuffedUIMicroButtonsDropDown then return end
	Lib_EasyMenu(D['MicroMenu'], DuffedUIMicroButtonsDropDown, 'cursor', 0, 0, 'MENU', 2)
end

Stat:RegisterEvent('PLAYER_ENTERING_WORLD')
Stat:SetScript('OnEvent', OnEvent)
Stat:SetScript('OnMouseDown', function() OpenMenu() end)