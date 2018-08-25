local D, C, L = unpack(select(2, ...))

local function LoadCommandBarSkin()	
	-- OrderHall CommandBar
	OrderHallCommandBar:StripTextures()
	OrderHallCommandBar:SetTemplate('Transparent')
	OrderHallCommandBar:ClearAllPoints()
	OrderHallCommandBar:SetPoint('TOPLEFT', UIParent, 'TOPLEFT', 5, -5)
	OrderHallCommandBar:SetWidth(D['ScreenWidth'] / 2)
	OrderHallCommandBar.ClassIcon:SetTexture('Interface\\TargetingFrame\\UI-Classes-Circles')
	OrderHallCommandBar.ClassIcon:SetSize(46, 20)
	OrderHallCommandBar.CurrencyIcon:SetAtlas('legionmission-icon-currency', false)
	OrderHallCommandBar.AreaName:ClearAllPoints()
	OrderHallCommandBar.AreaName:SetPoint('LEFT', OrderHallCommandBar.CurrencyIcon, 'RIGHT', 10, 0)
	OrderHallCommandBar.WorldMapButton:ClearAllPoints()
	OrderHallCommandBar.WorldMapButton:SetPoint('RIGHT', OrderHallCommandBar, -5, -2)

	-- TalentFrame
	OrderHallTalentFrame:StripTextures()
	OrderHallTalentFrame:SetTemplate('Transparent')
	OrderHallTalentFrameCloseButton:SkinCloseButton()
	ClassHallTalentInset:StripTextures()
end
	
local function LoadOrderHallSkin()	
	-- MissionFrame
	OrderHallMissionFrame:StripTextures()
	OrderHallMissionFrame:CreateBackdrop('Transparent')
	OrderHallMissionFrame.backdrop:SetOutside(OrderHallMissionFrame.BorderFrame)
	OrderHallMissionFrame.CloseButton:SkinCloseButton()
	for i = 1, 2 do _G['OrderHallMissionFrameTab' .. i]:SkinTab() end
	OrderHallMissionFrame.GarrCorners:StripTextures()
	OrderHallMissionFrameMissions:StripTextures()
	OrderHallMissionFrameMissionsListScrollFrameScrollBar:SkinScrollBar()
	OrderHallMissionFrameMissions.CombatAllyUI:StripTextures()
	OrderHallMissionFrameMissions.CombatAllyUI.InProgress.Unassign:SkinButton()
	OrderHallMissionFrameMissions.MaterialFrame:StripTextures()
	OrderHallMissionFrame.MissionTab:StripTextures()
	OrderHallMissionFrame.MissionTab.ZoneSupportMissionPage:StripTextures()
	OrderHallMissionFrame.MissionTab.ZoneSupportMissionPage.CloseButton:SkinCloseButton()
	OrderHallMissionFrame.MissionTab.ZoneSupportMissionPage.StartMissionButton:SkinButton()
	OrderHallMissionFrame.ClassHallIcon:Hide()

	for i = 1, 2 do
		_G['OrderHallMissionFrameMissionsTab' .. i]:StripTextures()
		_G['OrderHallMissionFrameMissionsTab' .. i]:SkinButton()
		_G['OrderHallMissionFrameMissionsTab' .. i]:Height(_G['GarrisonMissionFrameMissionsTab' .. i]:GetHeight() - 10)
	end

	for i, v in ipairs(OrderHallMissionFrame.MissionTab.MissionList.listScroll.buttons) do
		local Button = _G['OrderHallMissionFrameMissionsListScrollFrameButton' .. i]
		if Button and not Button.skinned then
			Button:StripTextures()
			Button:SetTemplate()
			Button:SkinButton()
			Button:SetBackdropBorderColor(0, 0, 0, 0)
			Button:HideInsets()
			Button.LocBG:Hide()
			for i = 1, #Button.Rewards do
				local Texture = Button.Rewards[i].Icon:GetTexture()

				Button.Rewards[i]:StripTextures()
				Button.Rewards[i]:StyleButton()
				Button.Rewards[i]:CreateBackdrop()
				Button.Rewards[i].Icon:SetTexture(Texture)
				Button.Rewards[i].backdrop:ClearAllPoints()
				Button.Rewards[i].backdrop:SetOutside(Button.Rewards[i].Icon)
				Button.Rewards[i].Icon:SetTexCoord(unpack(D['IconCoord']))
			end
			Button.isSkinned = true
		end
	end
	
	-- MissionTab
	local Follower = OrderHallMissionFrameFollowers
	Follower:StripTextures()
	Follower.SearchBox:SkinEditBox()
	Follower.MaterialFrame:StripTextures()
	OrderHallMissionFrameFollowersListScrollFrameScrollBar:SkinScrollBar()
	OrderHallMissionFrame.MissionTab.MissionPage:StripTextures()
	OrderHallMissionFrame.MissionTab.MissionPage.CloseButton:SkinCloseButton()
	OrderHallMissionFrame.MissionTab.MissionPage.StartMissionButton:SkinButton()
	
	-- FollowerTab
	local FollowerList = OrderHallMissionFrame.FollowerTab
	FollowerList:StripTextures()
	FollowerList.Class:SetSize(50, 43)
	FollowerList.XPBar:StripTextures()
	FollowerList.XPBar:SetStatusBarTexture(C['media']['normTex'])
	FollowerList.XPBar:CreateBackdrop()
	
	-- MissionStage
	local Mission = OrderHallMissionFrameMissions
	Mission.CompleteDialog:StripTextures()
	Mission.CompleteDialog:SetTemplate('Transparent')
	Mission.CompleteDialog.BorderFrame.ViewButton:SkinButton()
	OrderHallMissionFrame.MissionComplete.NextMissionButton:SkinButton()

	-- Scouting Map - Zonechoice
	AdventureMapQuestChoiceDialog:StripTextures()	
	AdventureMapQuestChoiceDialog:SetTemplate('Transparent')
	AdventureMapQuestChoiceDialog.CloseButton:SkinCloseButton()
	AdventureMapQuestChoiceDialog.Portrait:Hide()
	AdventureMapQuestChoiceDialog.Details.Child.TitleHeader:SetTextColor(1, 1, 0)
	AdventureMapQuestChoiceDialog.Details.Child.DescriptionText:SetTextColor(1, 1, 1)
	AdventureMapQuestChoiceDialog.Details.Child.ObjectivesHeader:SetTextColor(1, 1, 0)
	AdventureMapQuestChoiceDialog.Details.Child.ObjectivesText:SetTextColor(1, 1, 1)
	AdventureMapQuestChoiceDialog.AcceptButton:StripTextures()
	AdventureMapQuestChoiceDialog.AcceptButton:SkinButton()
	AdventureMapQuestChoiceDialog.DeclineButton:StripTextures()
	AdventureMapQuestChoiceDialog.DeclineButton:SkinButton()
end

local function LoadBFAMissionSkin()
	-- MissionFrame
	BFAMissionFrame:StripTextures()
	BFAMissionFrame:CreateBackdrop('Transparent')
	BFAMissionFrame.backdrop:SetOutside(BFAMissionFrame.BorderFrame)
	BFAMissionFrame.CloseButton:SkinCloseButton()
	for i = 1, 2 do _G['BFAMissionFrameTab' .. i]:SkinTab() end
	BFAMissionFrame.GarrCorners:StripTextures()
	BFAMissionFrame.MissionTab:StripTextures()

	for i = 1, 2 do
		_G['BFAMissionFrameMissionsTab' .. i]:StripTextures()
		_G['BFAMissionFrameMissionsTab' .. i]:SkinButton()
		_G['BFAMissionFrameMissionsTab' .. i]:Height(_G['GarrisonMissionFrameMissionsTab' .. i]:GetHeight() - 10)
	end

	for i, v in ipairs(BFAMissionFrame.MissionTab.MissionList.listScroll.buttons) do
		local Button = _G['BFAMissionFrameMissionsListScrollFrameButton' .. i]
		if Button and not Button.skinned then
			Button:StripTextures()
			Button:SetTemplate()
			Button:SkinButton()
			Button:SetBackdropBorderColor(0, 0, 0, 0)
			Button:HideInsets()
			Button.LocBG:Hide()
			for i = 1, #Button.Rewards do
				local Texture = Button.Rewards[i].Icon:GetTexture()

				Button.Rewards[i]:StripTextures()
				Button.Rewards[i]:StyleButton()
				Button.Rewards[i]:CreateBackdrop()
				Button.Rewards[i].Icon:SetTexture(Texture)
				Button.Rewards[i].backdrop:ClearAllPoints()
				Button.Rewards[i].backdrop:SetOutside(Button.Rewards[i].Icon)
				Button.Rewards[i].Icon:SetTexCoord(unpack(D['IconCoord']))
			end
			Button.isSkinned = true
		end
	end
	
	-- MissionTab
	local Follower = BFAMissionFrameFollowers
	Follower:StripTextures()
	Follower.SearchBox:SkinEditBox()
	Follower.MaterialFrame:StripTextures()
	BFAMissionFrameFollowersListScrollFrameScrollBar:SkinScrollBar()
	BFAMissionFrame.MissionTab.MissionPage:StripTextures()
	BFAMissionFrame.MissionTab.MissionPage.CloseButton:SkinCloseButton()
	BFAMissionFrame.MissionTab.MissionPage.StartMissionButton:SkinButton()
	
	-- FollowerTab
	local FollowerList = BFAMissionFrame.FollowerTab
	FollowerList:StripTextures()
	FollowerList.Class:SetSize(50, 43)
	FollowerList.XPBar:StripTextures()
	FollowerList.XPBar:SetStatusBarTexture(C['media']['normTex'])
	FollowerList.XPBar:CreateBackdrop()
	
	-- MissionStage
	local Mission = BFAMissionFrameMissions
	Mission.CompleteDialog:StripTextures()
	Mission.CompleteDialog:SetTemplate('Transparent')
	Mission.CompleteDialog.BorderFrame.ViewButton:SkinButton()
	BFAMissionFrame.MissionComplete.NextMissionButton:SkinButton()
end

D['SkinFuncs']['Blizzard_OrderHallUI'] = LoadCommandBarSkin
D['SkinFuncs']['Blizzard_GarrisonUI'] = LoadOrderHallSkin
D['SkinFuncs']['Blizzard_GarrisonUI'] = LoadBFAMissionSkin