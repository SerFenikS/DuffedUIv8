local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('Azeroth Auto Pilot') then return end

function AS:AzerothAutoPilot()
	for _, Child in pairs(AAP.OptionsFrame) do
		if Child:IsObjectType('CheckButton') then
			AS:SkinCheckBox(Child)
		elseif Child:IsObjectType('Button') then
			AS:SkinButton(Child)
			Child.Text = Child:CreateFontString(nil, "OVERLAY")
			Child.Text:SetFont(AS.Font, 12, "OUTLINE")
			Child.Text:SetTextColor(255, 255, 0)
			Child.Text:SetText(Child:GetText())
			Child.Text:SetPoint("CENTER", 0, 0)
		elseif Child:IsObjectType('Slider') then
			AS:SkinSlideBar(Child, nil, true)
			Child.Low:SetFont(AS.Font, 10, "OUTLINE")
			Child.High:SetFont(AS.Font, 10, "OUTLINE")
			Child.Text:SetFont(AS.Font, 10, "OUTLINE")
		elseif Child:IsObjectType('Frame') and Child:GetName() and strfind(Child:GetName(), 'DropDown') then
			AS:SkinDropDownBox(Child)
		elseif Child:IsObjectType('Frame') then
			AS:SkinBackdropFrame(Child)
			Child.Backdrop:SetInside()
		end
	end

	for Key, Child in pairs(AAP.QuestList) do
		if Key ~= 0 and Child and Child.IsObjectType then
			if Child:IsObjectType('CheckButton') then
				AS:SkinCheckBox(Child)
			elseif Child:IsObjectType('Button') then
				AS:SkinButton(Child)
				Child.Text = Child:CreateFontString(nil, "OVERLAY")
				Child.Text:SetFont(AS.Font, 12, "OUTLINE")
				Child.Text:SetTextColor(255, 255, 0)
				Child.Text:SetText(Child:GetText())
				Child.Text:SetPoint("CENTER", 0, 0)
			elseif Child:IsObjectType('Frame') then
				AS:SkinBackdropFrame(Child)
				Child.Backdrop:SetInside()
			end
		end
	end

	for Key, Child in pairs(AAP.QuestList.QuestFrames) do
		if Key ~= 0 and Child and Child.IsObjectType then
			if Child:IsObjectType('CheckButton') then
				AS:SkinCheckBox(Child)
			elseif Child:IsObjectType('Button') then
				AS:SkinButton(Child)
				Child.Text = Child:CreateFontString(nil, "OVERLAY")
				Child.Text:SetFont(AS.Font, 12, "OUTLINE")
				Child.Text:SetTextColor(255, 255, 0)
				Child.Text:SetText(Child:GetText())
				Child.Text:SetPoint("CENTER", 0, 0)
			elseif Child:IsObjectType('Frame') then
				AS:SkinBackdropFrame(Child)
				Child.Backdrop:SetInside()
			end
		end
	end

	for Key, Child in pairs(AAP.Banners.BannersFrame) do
		if Key ~= 0 and Child and Child.IsObjectType then
			if Child:IsObjectType('CheckButton') then
				AS:SkinCheckBox(Child)
			elseif Child:IsObjectType('Button') then
				AS:SkinTexture(Child:GetNormalTexture())
				AS:CreateBackdrop(Child)
				AS:StyleButton(Child)
				Child:SetSize(29, 29)
			elseif Child:IsObjectType('Frame') then
				AS:SkinBackdropFrame(Child)
				Child.Backdrop:SetInside()
			end
		end
	end

	AAP.QuestList.ListFrame.Backdrop:Hide()

	AAP.QuestList.Greetings2FS1:SetWidth(500)
	AAP.QuestList.Greetings:SetHeight(175)
	AAP.QuestList.Greetings2FS1:SetFont(AS.Font, 20, "OUTLINE")
	AAP.QuestList.Greetings2FS2:SetFont(AS.Font, 14, "OUTLINE")
	AAP.QuestList.Greetings2FS221:SetFont(AS.Font, 14, "OUTLINE")
	AAP.QuestList.SugQuestFrameFS1:SetFont(AS.Font, 20, "OUTLINE")
	AAP.QuestList.SugQuestFrameFS2:SetFont(AS.Font, 15, "OUTLINE")
	AAP.QuestList.WarcampFS2:SetFont(AS.Font, 14, "OUTLINE")

	AS:SkinDropDownBox(AAP_DropDownList)
	AS:SkinDropDownBox(AAP_DropDown1)

	AS:SkinFrame(AAP_AFkFrames)
	AAP_AfkFrame.Fontstring:SetFont(AS.Font, 20, "OUTLINE")

	AS:SkinButton(AAP_ArrowActiveButton)

	AAP_ArrowFrame.Fontstring:SetFont(AS.Font, 8, "OUTLINE")
	AAP_ArrowFrame.Fontstring:SetWidth(AAP_ArrowFrame.Fontstring:GetStringWidth()+100)
	AAP_ArrowFrame.Button:SetWidth(AAP_ArrowFrame.Fontstring:GetStringWidth()+2)
	AAP_ArrowFrame.Button:SetScale(1)
	AAP_ArrowFrame.distance:SetFont(AS.Font, 10, "OUTLINE")

	AS:SkinFrame(AAP_BrutalFrames1)
	AS:SkinFrame(AAP_BrutalFrames2)

	AAP.BrutallCC.BrutallFrame.FrameName:SetPoint("TOP", AAP.BrutallCC.BrutallFrame.Frame, "TOP", -25, 27)

	for i = 1, 4 do
		AAP.BrutallCC.BrutallFrame["FS"..i]:SetFont(AS.Font, 16, "OUTLINE")
	end

	AS:SkinButton(AAP_SBX1)
	AS:SkinButton(AAP_SBX2)

	for _, Parent in pairs(AAP.QuestList2) do
		if Parent["AAP_Button"] then
			Parent["AAP_Button"]:SetPoint("LEFT", Parent, "RIGHT", 1, 0)
		end
	end

	AAP.Banners.BannersFrame.FrameFS1:SetFont(AS.Font, 8, "OUTLINE")
	AAP.Banners.BannersFrame.FrameFS2:SetFont(AS.Font, 10, "OUTLINE")

	AAP.Banners.BannersFrame.B1:SetPoint("TOP", AAP.Banners.BannersFrame.Frame, "BOTTOM", 0, -1)
	AAP.Banners.BannersFrame.B1.icon = AAP.Banners.BannersFrame.B1:GetNormalTexture()

	--AS:SkinIconButton(AAP_BannersFrames1B1)
	--for i = 1, 5 do
	--	AS:SkinFrame(_G["AAP_BannersFrames"..i])
	--	if i < 4 then
	--		AAP.Banners.BannersFrame["B"..i].icon = AAP.Banners.BannersFrame["B"..i]:GetNormalTexture()
	--		AS:SkinIconButton(_G["AAP_BannersFrames1B"..i])
	--	end
	--	if AAP.Banners.BannersFrame["FrameB2"..i] then
	--		AS:SkinFrame(_G["AAP_BannersFrames2B"..i], nil, true)
	--		AS:SkinTexture(_G["AAP_BannersFramesz2B"..i])
	--		AS:CreateBackdrop(_G["AAP_BannersFrames2B"..i])
	--		AAP.Banners.BannersFrame["FrameB2"..i]:SetWidth(29)
	--		AAP.Banners.BannersFrame["FrameB2"..i]:SetHeight(29)
	--	end
	--	if AAP.Banners.BannersFrame["FrameB3"..i] then
	--		AS:SkinFrame(_G["AAP_BannersFrames3B"..i], nil, true)
	--		AS:SkinTexture(_G["AAP_BannersFramesz3B"..i])
	--		AS:CreateBackdrop(_G["AAP_BannersFrames3B"..i])
	--		AAP.Banners.BannersFrame["FrameB3"..i]:SetWidth(29)
	--		AAP.Banners.BannersFrame["FrameB3"..i]:SetHeight(29)
	--	end
	--	if AAP.Banners.BannersFrame["FrameB4"..i] then
	--		AS:SkinFrame(_G["AAP_BannersFrames4B"..i], nil, true)
	--		AS:SkinTexture(_G["AAP_BannersFramesz4B"..i])
	--		AS:CreateBackdrop(_G["AAP_BannersFrames4B"..i])
	--		AAP.Banners.BannersFrame["FrameB4"..i]:SetWidth(29)
	--		AAP.Banners.BannersFrame["FrameB4"..i]:SetHeight(29)
	--	end
	--	--AAP.Banners.BannersFrame["Frame"..i]:Show()
	--	if 	AAP.Banners.BannersFrame["Frame"..i] then
	--		AAP.Banners.BannersFrame["Frame"..i]:SetPoint("TOPLEFT", AAP.Banners.BannersFrame, "TOPLEFT",-(33*i),0)
	--		AAP.Banners.BannersFrame["FrameB2"..i]:SetPoint("TOP", AAP.Banners.BannersFrame["Frame"..i], "BOTTOM", 0, -2)
	--		AAP.Banners.BannersFrame["FrameFS1"..i]:SetFont(AS.Font, 8, "OUTLINE")
	--		AAP.Banners.BannersFrame["FrameFSs"..i]:SetFont(AS.Font, 10, "OUTLINE")
	--	end
	--end
end

AS:RegisterSkin('Azeroth Auto Pilot', AS.AzerothAutoPilot)