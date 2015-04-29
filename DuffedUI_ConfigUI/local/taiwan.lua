﻿if GetLocale() == "zhTW" then
	--[[General]]--
	DuffedUIConfigUILocalization.general = "綜合"
	DuffedUIConfigUILocalization.generalautoscale = "UI自動縮放"
	DuffedUIConfigUILocalization.generaluiscale = "UI縮放 (僅在UI自動縮放關閉的時候啟用)"
	DuffedUIConfigUILocalization.generalbackdropcolor = "設置默認的面板背景色"
	DuffedUIConfigUILocalization.generalbordercolor = "設置默認的面板邊框顏色"
	DuffedUIConfigUILocalization.generalclasscolor = "啟用文本按職業著色顯示設定"
	DuffedUIConfigUILocalization.generalblizzardreskin = "重設暴雪框體材質以適應DuffedUI"
	DuffedUIConfigUILocalization.generalcalendarevent = "禁用行事歷事件特殊材質顯示"
	DuffedUIConfigUILocalization.generalautoaccept = "啟用自動接受邀請(好友或公會成員)"

	--[[Font]]--
	DuffedUIConfigUILocalization.font = "字體"
	DuffedUIConfigUILocalization.fontduffeduisize = " DuffedUI字體大小(默認 = 11)"
	DuffedUIConfigUILocalization.fontduffedui_altsize = "DuffedUI另類字體(Alternativ)大小(默認 = 12)"
	DuffedUIConfigUILocalization.fontpixelfontsize = "Pixel像素字大小  (默認 = 12)"
	DuffedUIConfigUILocalization.fontactionbars = "快捷欄文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另類字體(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontauras = "光環文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另類字體(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontclasstimer = "職業計時器文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另類字體(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontses = "自動切換器文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另類字體(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontdatatext = "信息欄文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另類字體(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontunitframes = "頭像單位框體文字(Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另類字體(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontscd = "法術冷卻文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另類字體(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontrcd = "團隊冷卻文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另類字體(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontexperience = "經驗條文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另類字體(Alternativ)|r, |cffC41F3BPixel像素字|r)"

	--[[Unit Frames]]--
	DuffedUIConfigUILocalization.unitframes = "單位框體"
	DuffedUIConfigUILocalization.unitframesenable = "啟用Duffed Ui頭像框體"
	DuffedUIConfigUILocalization.unitframeslayout = "設置人物頭像樣式 (1, 2, 3 or 4, 默認 = 1)"
	DuffedUIConfigUILocalization.unitframespercent = "啟用生命百分比顯示於玩家&目標旁邊"
	DuffedUIConfigUILocalization.unitframesshowsmooth = "啟用狀態條平滑顯示效果"
	DuffedUIConfigUILocalization.unitframesunicolor = "啟用特別顏色主題(灰色生命條)"
	DuffedUIConfigUILocalization.unitframeshealthbarcolor = "設定生命血條顏色"
	DuffedUIConfigUILocalization.unitframesdeficitcolor = "設定生命血量不足顏色"
	DuffedUIConfigUILocalization.unitframesColorGradient = "啟用生命條顏色漸變功能(隨血量變化)"
	DuffedUIConfigUILocalization.unitframescharportrait = "為自身和目標啟用頭像顯示"
	DuffedUIConfigUILocalization.unitframesweakenedsoulbar = "啟用靈魂虛弱指示 (牧師)"
	DuffedUIConfigUILocalization.unitframesclassbar = "啟用職業條"
	DuffedUIConfigUILocalization.unitframesruneofpower = "啟用秘法符能能量條（法師）"
	DuffedUIConfigUILocalization.unitframestargetauras = "啟用目標光環"
	DuffedUIConfigUILocalization.unitframesonlyselfdebuffs = "只在目標框體上顯示你釋放的DEBUFF"
	DuffedUIConfigUILocalization.unitframescombatfeedback = "在玩家和目標框體上顯示戰鬥資訊"
	DuffedUIConfigUILocalization.unitframeshealcomm = "啟用預估治療"
	DuffedUIConfigUILocalization.unitframesplayeraggro = "在自身頭像上啟用仇恨顯示"
	DuffedUIConfigUILocalization.unitframestotdebuffs = "啟用目標的目標的DEBUFF顯示 (僅限高解析度)"
	DuffedUIConfigUILocalization.unitframestotdbsize = "設置目標的目標減益光環大小"
	DuffedUIConfigUILocalization.unitframesfocusdebuffs = "啟用焦點目標Debuff"
	DuffedUIConfigUILocalization.unitframesfocusbutton = "在玩家/焦點目標框體上啟用焦點按鈕"
	DuffedUIConfigUILocalization.unitframesattached = "職業條依附在頭像框體上"
	DuffedUIConfigUILocalization.unitframesoocHide = "脫離戰鬥隱藏職業條"
	DuffedUIConfigUILocalization.unitframesplayermodel = "設定頭像顯示類型(職業圖標 or 3D頭像, 默認 => 3D頭像)"
	DuffedUIConfigUILocalization.unitframesbuffsize = "設定目標框體增益光環大小"
	DuffedUIConfigUILocalization.unitframesdebuffsize = "設定目標框體減益光環大小"
	DuffedUIConfigUILocalization.unitframesDruidMana = "Enable the display for Mana if shapeshifted"
	DuffedUIConfigUILocalization.unitframesAnticipationBar = "Enable Anticipationbar if skill is learned"

	--[[Chat]]--
	DuffedUIConfigUILocalization.chat = "聊天框體"
	DuffedUIConfigUILocalization.chatenable = "啟用DuffedUI的聊天框架"
	DuffedUIConfigUILocalization.chatwhispersound = "在收到密語時播放提示音"
	DuffedUIConfigUILocalization.chatlbackground = "啟用左側聊天框體背景板"
	DuffedUIConfigUILocalization.chatrbackground = "啟用右側聊天框體背景板"
	DuffedUIConfigUILocalization.chatfading = "啟用聊天信息漸隱"
	DuffedUIConfigUILocalization.chattextright = "右下方聊天框文字向右對齊"

	--[[Castbar]]--
	DuffedUIConfigUILocalization.castbar = "施法條"
	DuffedUIConfigUILocalization.castbarenable = "啟用施法條"
	DuffedUIConfigUILocalization.castbarpetenable = "啟用寵物施法條"
	DuffedUIConfigUILocalization.castbarcbicons = "啟用施放技能圖示"
	DuffedUIConfigUILocalization.castbarcblatency = "啟用施法條延遲時間顯示"
	DuffedUIConfigUILocalization.castbarspark = "啟用施法條閃爍"
	DuffedUIConfigUILocalization.castbarcolor = "設定施法條顏色"
	DuffedUIConfigUILocalization.castbarclasscolor = "啟用施法條按職業顏色著著色"
	DuffedUIConfigUILocalization.castbarcbticks = "啟用施法條取消技能施放提示音"
	DuffedUIConfigUILocalization.castbarplayerwidth = "設定玩家施法條寬度"

	--[[Nameplate]]--
	DuffedUIConfigUILocalization.nameplate = "姓名版"
	DuffedUIConfigUILocalization.nameplateactive = "啟用姓名版"
	DuffedUIConfigUILocalization.nameplatedebuffs = "啟用姓名板debuff顯示"
	DuffedUIConfigUILocalization.nameplateplatewidth = "設置姓名板寬度 (默認 = 110)"
	DuffedUIConfigUILocalization.nameplateplateheight = "設置姓名板高度 (默認 = 7)"
	DuffedUIConfigUILocalization.nameplateauraswidth = "設置Debuff圖標寬度"
	DuffedUIConfigUILocalization.nameplateaurasheight = "設置Debuff圖標高度"
	DuffedUIConfigUILocalization.nameplateMaxDebuffs = "設置最大Debuff顯示數量 (默認 = 5)"
	DuffedUIConfigUILocalization.nameplatethreat = "啟用仇恨著色"
	DuffedUIConfigUILocalization.nameplatethreat_badcolor = "高仇恨著色,根據你的職業Tank or dps/heal而改變"
	DuffedUIConfigUILocalization.nameplatethreat_goodcolor = "低仇恨著色,根據你的職業Tank or dps/heal而改變"
	DuffedUIConfigUILocalization.nameplatethreat_transitioncolor = "失去/獲得仇恨顏色"
	DuffedUIConfigUILocalization.nameplatePercent = "啟用數字百分比顯示"
	DuffedUIConfigUILocalization.nameplateNonTargetAlpha = "設定非當前目標的姓名板透明度"
	DuffedUIConfigUILocalization.nameplatePvP = "禁用PVP中無目標時姓名板透明降低"
	DuffedUIConfigUILocalization.nameplateBlackBackground = "啟用姓名板黑色背景(當仇恨著色功能啟用時)"
	DuffedUIConfigUILocalization.nameplatePercentInside = "生命條中顯示百分比"

	--[[Actionbars]]--
	DuffedUIConfigUILocalization.actionbar = "快捷欄"
	DuffedUIConfigUILocalization.actionbarenable = "啟用 DuffedUI 快捷欄"
	DuffedUIConfigUILocalization.actionbarrightbarvertical = "設定右邊快捷欄橫向顯示"
	DuffedUIConfigUILocalization.actionbarrightbarsmouseover = "右快捷欄滑鼠劃過顯示"
	DuffedUIConfigUILocalization.actionbarpetbarhorizontal = "設定寵物快捷欄橫向顯示模式"
	DuffedUIConfigUILocalization.actionbarpetbaralwaysvisible = "寵物條永久可視"
	DuffedUIConfigUILocalization.actionbarverticalshapeshift = "姿態條縱向顯示"
	DuffedUIConfigUILocalization.actionbarhotkey = "顯示快速鍵名稱"
	DuffedUIConfigUILocalization.actionbarmacro = "在快捷欄上顯示巨集名稱"
	DuffedUIConfigUILocalization.actionbarbuttonsize = "主快捷欄按鈕大小"
	DuffedUIConfigUILocalization.actionbarbuttonspacing = "快捷欄按鈕間距"
	DuffedUIConfigUILocalization.actionbarshapeshiftborder = "啟用姿態條邊框"
	DuffedUIConfigUILocalization.actionbarshapeshiftmouseover = "姿態條滑鼠劃過顯示"
	DuffedUIConfigUILocalization.actionbarborderhighlight = "啟用快捷欄觸發特效高亮模式(默認 = 關閉)"
	DuffedUIConfigUILocalization.actionbarpetbuttonsize = "寵物或姿態欄按鈕大小"
	DuffedUIConfigUILocalization.actionbarLeftsidebars = "啟用滑鼠劃過顯示左邊聊天框體上的快捷欄"
	DuffedUIConfigUILocalization.actionbarRightsidebars = "啟用滑鼠劃過顯示右邊聊天框體上的快捷欄"
	DuffedUIConfigUILocalization.actionbarLeftsidebarshorizontal = "設定左邊快捷欄水平顯示"
	DuffedUIConfigUILocalization.actionbarRightsidebarshorizontal = "設定右邊快捷欄水平顯示"
	DuffedUIConfigUILocalization.actionbarSidebarButtonsize = "Set size of buttons for sidebars on chat (only when vertical)"

	--[[Raid Frames]]--
	DuffedUIConfigUILocalization.raid = "團隊框體"
	DuffedUIConfigUILocalization.raidenable = "啟用團隊框體"
	DuffedUIConfigUILocalization.raidshowboss = "啟用Boss頭像框體"
	DuffedUIConfigUILocalization.raidarena = "啟用競技場框體"
	DuffedUIConfigUILocalization.raidmaintank = "啟用主坦克框體"
	DuffedUIConfigUILocalization.raidmainassist = "啟用主助攻框體"
	DuffedUIConfigUILocalization.raidshowrange = "啟用隊伍/團隊距離透明度顯示"
	DuffedUIConfigUILocalization.raidraidalphaoor = "隊伍/團隊超出距離透明度"
	DuffedUIConfigUILocalization.raidshowsymbols = "顯示小隊/團隊標記"
	DuffedUIConfigUILocalization.raidaggro = "在小隊/團隊中啟用仇恨顯示"
	DuffedUIConfigUILocalization.raidraidunitdebuffwatch = "啟用PVE光環檢測 (只能在GRIG模式下)"
	DuffedUIConfigUILocalization.raidshowraidpets = "Duffed團隊框架中顯示寵物框體"
	DuffedUIConfigUILocalization.raidshowplayerinparty = "在隊伍中顯示你自己"
	DuffedUIConfigUILocalization.raidframewidth = "設定框體寬度"
	DuffedUIConfigUILocalization.raidframeheight = "設定框體高度"
	DuffedUIConfigUILocalization.raidlayout = "設定隊伍佈局樣式(默認 = heal, 數值為: |cffC41F3Bheal|r 或 |cffC41F3Bdps|r)"
	DuffedUIConfigUILocalization.raidcenter = "治療佈局設定為界面中部"
	DuffedUIConfigUILocalization.raidHidePower = "顯示DPS職業能量條(僅適用於dps佈局)"
	DuffedUIConfigUILocalization.raidNameOutside = "玩家姓名外置(僅適用於dps佈局)"
	DuffedUIConfigUILocalization.raidMaxGroup = "啟用團隊界面隊伍數量最大顯示"
	DuffedUIConfigUILocalization.raidRoleIcons = "啟用默認的團隊角色職能(tank,dps,heal)圖標(彩色方塊)"

	--[[DataText]]--
	DuffedUIConfigUILocalization.datatext = "信息欄資訊"
	DuffedUIConfigUILocalization.datatextarmor = "護甲值 (輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextavd = "免傷 (輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextbags = "背包 (輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextbattleground = "啟用戰場狀態信息欄"
	DuffedUIConfigUILocalization.datatextblock = "格擋率(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextbonusarmor = "額外護甲值 (輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextcalltoarms = "戰鬥/地城召喚 (輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextcrit = "爆擊率(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextdodge = "躲閃率(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextdur = "裝備耐久度(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextfriends = "好友(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextgold = "金幣(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextguild = "公會信息(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatexthaste = "急速(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatexthonor = "榮譽(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatexthonorablekills = "榮譽擊殺(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextleech = "吸血(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextmastery = "精通(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextmicromenu = "微型系統菜單(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextmulstistrike = "雙擊率(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextparry = "格擋率(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextpower = "能量(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextprofession = "專業(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextsmf = "系統信息(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatexttalent = "天賦(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextversatility = "臨機應變(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatextwowtime = "時間"
	DuffedUIConfigUILocalization.datatextgarrison = "要塞(輸入0關閉顯示)"
	DuffedUIConfigUILocalization.datatexttime24 = "啟用24小時制"
	DuffedUIConfigUILocalization.datatextlocaltime = "使用本地時間取代伺服器時間"
	DuffedUIConfigUILocalization.datatextfontsize = "資訊字體大小"
	DuffedUIConfigUILocalization.datatextShowInCombat = "戰鬥中顯示信息欄游標信息"

	--[[Cooldowns]]--
	DuffedUIConfigUILocalization.cooldown = "冷卻計時"
	DuffedUIConfigUILocalization.cooldownenable = "啟用按鈕冷卻計時數字"
	DuffedUIConfigUILocalization.cooldowntreshold = "在X秒以後以紅色顯示冷卻時間"
	DuffedUIConfigUILocalization.cooldownicdenable = "啟用物品冷卻計時"
	DuffedUIConfigUILocalization.cooldownrcdenable = "啟用團隊技能冷卻計時"
	DuffedUIConfigUILocalization.cooldownrcdraid = "啟用團隊冷卻計時公告"
	DuffedUIConfigUILocalization.cooldownrcdparty = "啟用小隊冷卻計時公告"
	DuffedUIConfigUILocalization.cooldownrcdarena = "啟用競技場冷卻計時公告"
	DuffedUIConfigUILocalization.cooldownscdenable = "啟用法術冷卻增強插件"
	DuffedUIConfigUILocalization.cooldownscdfsize = "設定字體大小"
	DuffedUIConfigUILocalization.cooldownscdsize = "設定圖標大小 (默認 = 28)"
	DuffedUIConfigUILocalization.cooldownscdspacing = "設定圖標間距 (默認 = 10)"
	DuffedUIConfigUILocalization.cooldownscdfade = "設定漸隱效果 (數值: 0 為單一顏色, 1 為由綠轉紅, 2 為由紅轉綠)"

	--[[ClassTimer]]--
	DuffedUIConfigUILocalization.classtimer = "職業法術計時條"
	DuffedUIConfigUILocalization.classtimerenable = "啟用職業法術計時條"
	DuffedUIConfigUILocalization.classtimerspark = "啟用閃爍"
	DuffedUIConfigUILocalization.classtimertargetdebuff = "Enable Debuff display above target frame instead of player frame"
	DuffedUIConfigUILocalization.classtimerplayercolor = "設置玩家計時條顏色"
	DuffedUIConfigUILocalization.classtimertargetbuffcolor = "設置目標計時條Buff顏色"
	DuffedUIConfigUILocalization.classtimertargetdebuffcolor = "設置目標計時條DeBuff顏色"
	DuffedUIConfigUILocalization.classtimertrinketcolor = "設置飾品計時條顏色"
	DuffedUIConfigUILocalization.classtimerheight = "設置計時條高度"
	DuffedUIConfigUILocalization.classtimerspacing = "設置計時條間距"
	DuffedUIConfigUILocalization.classtimerseparator = "啟用不同法術分離計時效果"
	DuffedUIConfigUILocalization.classtimerseparatorcolor = "設置分離器顯示顏色"
	DuffedUIConfigUILocalization.classtimerdebuffsenable = "Enable Debuff display on classtimer"

	--[[Buffs]]--
	DuffedUIConfigUILocalization.auras = "光環"
	DuffedUIConfigUILocalization.aurasplayer = "啟用DuffedUI Buff/Debuff 光環框體"
	DuffedUIConfigUILocalization.aurasconsolidate = "啟用Buffs強化顯示模式"
	DuffedUIConfigUILocalization.aurasflash = "啟用光環持續時間低於30秒閃爍動畫"
	DuffedUIConfigUILocalization.aurasclassictimer = "傳統模式顯示玩家光環"
	DuffedUIConfigUILocalization.aurasbuffnotice = "啟用光環缺失提示"
	DuffedUIConfigUILocalization.auraswarning = "啟用提示音提醒光環缺失"
	DuffedUIConfigUILocalization.aurasbufftracker = "啟用光環追踪增強插件"
	DuffedUIConfigUILocalization.auraswrap = "設定(小地圖旁)單行Buff顯示數量(默認 = 18)"
	DuffedUIConfigUILocalization.aurasInside = "設定持續時間在光環內顯示"

	--[[Bags]]--
	DuffedUIConfigUILocalization.bags = "背包"
	DuffedUIConfigUILocalization.bagsenable = "開啟背包整合"
	DuffedUIConfigUILocalization.bagsbpr = "設定背包每行顯示按鈕"
	DuffedUIConfigUILocalization.bagsmovable = "使背包可移動"
	DuffedUIConfigUILocalization.bagsscale = "設置背包/銀行框體縮放大小"
	DuffedUIConfigUILocalization.bagsspacing = "設置包內物品顯示間距"
	DuffedUIConfigUILocalization.bagsbuttonsize = "設置篩選器(搜索框)大小"
	DuffedUIConfigUILocalization.bagsBounce = "啟用獲得新物品跳躍動畫"
	DuffedUIConfigUILocalization.bagsSortBlizzard = "啟用遊戲自帶的排序功能"
	DuffedUIConfigUILocalization.bagsSortingButton = "Enable the sorting button on bags and bank"

	--[[Misc]]--
	DuffedUIConfigUILocalization.misc = "雜項"
	DuffedUIConfigUILocalization.miscgold = "啟用聊天框體中獲取金錢名稱縮寫功能"
	DuffedUIConfigUILocalization.miscsesenable = "啟用天賦快捷切換程式"
	DuffedUIConfigUILocalization.miscsesenablegear = "啟用裝備設定按鈕（系統裝備設定外置顯示）"
	DuffedUIConfigUILocalization.miscsesgearswap = "啟用切換天賦時自動切換裝備功能"
	DuffedUIConfigUILocalization.miscsesset1 = "為主天賦設置裝備序號 (必須是1-10之間的序號)"
	DuffedUIConfigUILocalization.miscsesset2 = "為副天賦設置裝備序號 (必須是1-10之間的序號)"
	DuffedUIConfigUILocalization.misccombatanimation = "啟用進戰/脫戰動畫提示"
	DuffedUIConfigUILocalization.miscflightpoint = "啟用飛行點列表"
	DuffedUIConfigUILocalization.miscilvlcharacter = "啟用人物面板顯示裝備等級"
	DuffedUIConfigUILocalization.miscloc = "禁用快捷欄<角色失去控制>功能"
	DuffedUIConfigUILocalization.miscacm_screen = "啟用成就自動截圖功能"
	DuffedUIConfigUILocalization.miscclickcast = "啟用點擊施法增強功能(Click2Cast-plugin)"
	DuffedUIConfigUILocalization.miscAFKCamera = "啟用暫離鏡頭效果"
	DuffedUIConfigUILocalization.miscXPBar = "啟用經驗條"
	DuffedUIConfigUILocalization.miscXPBarWidth = "設置經驗條寬度"
	DuffedUIConfigUILocalization.miscQuestLevel = "啟用任務等級顯示"

	--[[Duffed]]--
	DuffedUIConfigUILocalization.duffed = "Duffed特色功能"
	DuffedUIConfigUILocalization.duffeddrinkannouncement = "啟用吃喝通告(PVP)"
	DuffedUIConfigUILocalization.duffedsayinterrupt = "啟用打斷通告"
	DuffedUIConfigUILocalization.duffedannouncechannel = "設置通告頻道 (設定值為:|cffC41F3BSAY|r, |cffC41F3BPARTY|r, |cffC41F3BRAID|r or |cffC41F3BINSTANCE_CHAT|r)"
	DuffedUIConfigUILocalization.duffeddispelannouncement = "啟用驅散通告"
	DuffedUIConfigUILocalization.duffedspellannounce = "啟用光環通告"
	DuffedUIConfigUILocalization.duffederrorfilter = "隱藏屏幕中部的錯誤信息提示"

	--[[Loot]]--
	DuffedUIConfigUILocalization.loot = "拾取"
	DuffedUIConfigUILocalization.lootlootframe = "啟用拾取窗口"
	DuffedUIConfigUILocalization.lootrolllootframe = "啟用物品Roll窗口"

	--[[Tooltip]]--
	DuffedUIConfigUILocalization.tooltip = "滑鼠提示"
	DuffedUIConfigUILocalization.tooltipenable = "啟用滑鼠提示"
	DuffedUIConfigUILocalization.tooltiphidecombat = "戰鬥中隱藏滑鼠提示"
	DuffedUIConfigUILocalization.tooltiphidebuttons = "隱藏快捷欄按鈕滑鼠提示"
	DuffedUIConfigUILocalization.tooltiphideuf = "隱藏頭像框體滑鼠提示"
	DuffedUIConfigUILocalization.tooltipids = "在物品提示上顯示法術/物品ID"
	DuffedUIConfigUILocalization.tooltipilvl = "啟用物品等級顯示提示"
	DuffedUIConfigUILocalization.tooltipenablecaster = "啟用Buff/DeBuff施法者名稱提示"
	DuffedUIConfigUILocalization.tooltipMouse = "啟用滑鼠跟隨模式"

	--[[Merchant]]--
	DuffedUIConfigUILocalization.merchant = "商人"
	DuffedUIConfigUILocalization.merchantsellgrays = "自動售賣灰色物品"
	DuffedUIConfigUILocalization.merchantautorepair = "自動修理物品"
	DuffedUIConfigUILocalization.merchantsellmisc = "自動販賣特定物品(非灰色等級的指定物品)"
	DuffedUIConfigUILocalization.merchantautoguildrepair = "啟用公會修理物品設定"

	--[[Buttons]]--
	DuffedUIConfigUILocalization.option_button_reset = "重置設定"
	DuffedUIConfigUILocalization.option_button_load = "應用設定"
	DuffedUIConfigUILocalization.option_button_close = "關閉"
	DuffedUIConfigUILocalization.option_setsavedsetttings = "為每個遊戲角色設置獨立的設定"
	DuffedUIConfigUILocalization.option_resetchar = "你確定要重置這個遊戲角色的設定為你的默認設置嗎?"
	DuffedUIConfigUILocalization.option_resetall = "你確定要重置所有的設置為預設值麼?"
	DuffedUIConfigUILocalization.option_perchar = "你確定要啟用或者關閉“為單一角色設定”麼?"
	DuffedUIConfigUILocalization.option_makeselection = "在你繼續設置之前你必須要做出一個選擇。"
end