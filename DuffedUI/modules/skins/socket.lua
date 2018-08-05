local D, C, L = unpack(select(2, ...))
if IsAddOnLoaded('AddOnSkins') then return end

local function LoadSkin()
	ItemSocketingFrame:StripTextures()
	ItemSocketingFrame:SetTemplate('Transparent')
	ItemSocketingScrollFrame:StripTextures()

	for i = 1, MAX_NUM_SOCKETS  do
		local button = _G['ItemSocketingSocket'..i]
		local button_bracket = _G['ItemSocketingSocket'..i..'BracketFrame']
		local button_bg = _G['ItemSocketingSocket'..i..'Background']
		local button_icon = _G['ItemSocketingSocket'..i..'IconTexture']
		button:StripTextures()
		button:StyleButton(false)
		button:SetTemplate('Default', true)
		button_bracket:Kill()
		button_bg:Kill()
		button_icon:SetTexCoord(.08, .92, .08, .92)
		button_icon:ClearAllPoints()
		button_icon:Point('TOPLEFT', 2, -2)
		button_icon:Point('BOTTOMRIGHT', -2, 2)
	end
	
	ItemSocketingFramePortrait:Kill()
	ItemSocketingSocketButton:ClearAllPoints()
	ItemSocketingSocketButton:Point('BOTTOMRIGHT', ItemSocketingFrame, 'BOTTOMRIGHT', -5, 5)
	ItemSocketingSocketButton:SkinButton()
	ItemSocketingFrameCloseButton:SkinCloseButton()
	ItemSocketingScrollFrameScrollBar:SkinScrollBar()
	ItemSocketingFrameInset:StripTextures()
end

D['SkinFuncs']['Blizzard_ItemSocketingUI'] = LoadSkin