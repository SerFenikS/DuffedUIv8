﻿if GetLocale() == "zhCN" then

	--[[General]]--
	DuffedUIConfigUILocalization.general = "综合"
	DuffedUIConfigUILocalization.generalautoscale = "UI自动缩放"
	DuffedUIConfigUILocalization.generaluiscale = "UI缩放 (仅在UI自动缩放关闭的时候启用)"
	DuffedUIConfigUILocalization.generalbackdropcolor = "设置默认的面板背景色"
	DuffedUIConfigUILocalization.generalbordercolor = "设置默认的面板边框颜色"
	DuffedUIConfigUILocalization.generalclasscolor = "启用文本按职业着色显示设定"
	DuffedUIConfigUILocalization.generalblizzardreskin = "重设暴雪框体材质以适应DuffedUI"
	DuffedUIConfigUILocalization.generalcalendarevent = "禁用行事历事件特殊材质显示"
	DuffedUIConfigUILocalization.generalautoaccept = "启用自动接受邀请(好友或公会成员)"

	--[[Font]]--
	DuffedUIConfigUILocalization.font = "字体"
	DuffedUIConfigUILocalization.fontduffeduisize = " DuffedUI字体大小(默认 = 11)"
	DuffedUIConfigUILocalization.fontduffedui_altsize = "DuffedUI另类字体(Alternativ)大小(默认 = 12)"
	DuffedUIConfigUILocalization.fontpixelfontsize = "Pixel像素字大小  (默认 = 12)"
	DuffedUIConfigUILocalization.fontactionbars = "快捷栏文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另类字体(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontauras = "光环文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另类字体(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontclasstimer = "职业定时器文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另类字体(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontses = "自动切换器文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另类字体(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontdatatext = "信息栏文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另类字体(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontunitframes = "头像单位框体文字(Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另类字体(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontscd = "法术冷却文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另类字体(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontrcd = "团队冷却文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另类字体(Alternativ)|r, |cffC41F3BPixel像素字|r)"
	DuffedUIConfigUILocalization.fontexperience = "经验条文字 (Values: |cffC41F3BDuffedUI|r, |cffC41F3BDuffedUI 另类字体(Alternativ)|r, |cffC41F3BPixel像素字|r)"

	--[[Unit Frames]]--
	DuffedUIConfigUILocalization.unitframes = "单位框体"
	DuffedUIConfigUILocalization.unitframesenable = "启用Duffed Ui头像框体"
	DuffedUIConfigUILocalization.unitframeslayout = "设置人物头象样式 (1, 2, 3 or 4, 默认 = 1)"
	DuffedUIConfigUILocalization.unitframespercent = "启用生命百分比显示于玩家&目标旁边"
	DuffedUIConfigUILocalization.unitframesshowsmooth = "启用状态条平滑显示效果"
	DuffedUIConfigUILocalization.unitframesunicolor = "启用特别颜色主题(灰色生命条)"
	DuffedUIConfigUILocalization.unitframeshealthbarcolor = "设定生命血条颜色"
	DuffedUIConfigUILocalization.unitframesdeficitcolor = "设定生命血量不足颜色"
	DuffedUIConfigUILocalization.unitframesColorGradient = "启用生命条颜色渐变功能(随血量变化)"
	DuffedUIConfigUILocalization.unitframescharportrait = "为自身和目标启用头像显示"
	DuffedUIConfigUILocalization.unitframesweakenedsoulbar = "启用灵魂虚弱指示 (牧师)"
	DuffedUIConfigUILocalization.unitframesclassbar = "启用职业条"
	DuffedUIConfigUILocalization.unitframesruneofpower = "启用秘法符能能量条（法师）"
	DuffedUIConfigUILocalization.unitframestargetauras = "启用目标光环"
	DuffedUIConfigUILocalization.unitframesonlyselfdebuffs = "只在目标框体上显示你释放的DEBUFF"
	DuffedUIConfigUILocalization.unitframescombatfeedback = "在玩家和目标框体上显示战斗信息"
	DuffedUIConfigUILocalization.unitframeshealcomm = "启用预估治疗"
	DuffedUIConfigUILocalization.unitframesplayeraggro = "在自身头像上启用仇恨显示"
	DuffedUIConfigUILocalization.unitframestotdebuffs = "启用目标的目标的DEBUFF显示 (仅限高分辨率)"
	DuffedUIConfigUILocalization.unitframestotdbsize = "设置目标的目标减益光环大小"
	DuffedUIConfigUILocalization.unitframesfocusdebuffs = "启用焦点目标Debuff"
	DuffedUIConfigUILocalization.unitframesfocusbutton = "在玩家/焦点目标框体上启用焦点按钮"
	DuffedUIConfigUILocalization.unitframesattached = "职业条依附在头像框体上"
	DuffedUIConfigUILocalization.unitframesoocHide = "脱离战斗隐藏职业条"
	DuffedUIConfigUILocalization.unitframesplayermodel = "设定头像显示类型(职业图标 or 3D头像, 默认 => 3D头像)"
	DuffedUIConfigUILocalization.unitframesbuffsize = "设定目标框体增益光环大小"
	DuffedUIConfigUILocalization.unitframesdebuffsize = "设定目标框体减益光环大小"
	DuffedUIConfigUILocalization.unitframesDruidMana = "Enable the display for Mana if shapeshifted"
	DuffedUIConfigUILocalization.unitframesAnticipationBar = "Enable Anticipationbar if skill is learned"

	--[[Chat]]--
	DuffedUIConfigUILocalization.chat = "聊天框体"
	DuffedUIConfigUILocalization.chatenable = "启用DuffedUI的聊天框架"
	DuffedUIConfigUILocalization.chatwhispersound = "在收到密语时播放提示音"
	DuffedUIConfigUILocalization.chatlbackground = "启用左侧聊天框体背景板"
	DuffedUIConfigUILocalization.chatrbackground = "启用右侧聊天框体背景板"
	DuffedUIConfigUILocalization.chatfading = "启用聊天信息渐隐"
	DuffedUIConfigUILocalization.chattextright = "右下方聊天框文字向右对齐"

	--[[Castbar]]--
	DuffedUIConfigUILocalization.castbar = "施法条"
	DuffedUIConfigUILocalization.castbarenable = "启用施法条"
	DuffedUIConfigUILocalization.castbarpetenable = "启用宠物施法条"
	DuffedUIConfigUILocalization.castbarcbicons = "启用施放技能图示"
	DuffedUIConfigUILocalization.castbarcblatency = "启用施法条延迟时间显示"
	DuffedUIConfigUILocalization.castbarspark = "启用施法条闪烁"
	DuffedUIConfigUILocalization.castbarcolor = "设定施法条颜色"
	DuffedUIConfigUILocalization.castbarclasscolor = "启用施法条按职业颜色着着色"
	DuffedUIConfigUILocalization.castbarcbticks = "启用施法条取消技能施放提示音"
	DuffedUIConfigUILocalization.castbarplayerwidth = "设定玩家施法条宽度"

	--[[Nameplate]]--
	DuffedUIConfigUILocalization.nameplate = "姓名版"
	DuffedUIConfigUILocalization.nameplateactive = "启用姓名版"
	DuffedUIConfigUILocalization.nameplatedebuffs = "启用姓名板debuff显示"
	DuffedUIConfigUILocalization.nameplateplatewidth = "设置姓名板宽度 (默认 = 110)"
	DuffedUIConfigUILocalization.nameplateplateheight = "设置姓名板高度 (默认 = 7)"
	DuffedUIConfigUILocalization.nameplateauraswidth = "设置Debuff图标宽度"
	DuffedUIConfigUILocalization.nameplateaurasheight = "设置Debuff图标高度"
	DuffedUIConfigUILocalization.nameplateMaxDebuffs = "设置最大Debuff显示数量 (默认 = 5)"
	DuffedUIConfigUILocalization.nameplatethreat = "启用仇恨着色"
	DuffedUIConfigUILocalization.nameplatethreat_badcolor = "高仇恨着色,根据你的职业Tank or dps/heal而改变"
	DuffedUIConfigUILocalization.nameplatethreat_goodcolor = "低仇恨着色,根据你的职业Tank or dps/heal而改变"
	DuffedUIConfigUILocalization.nameplatethreat_transitioncolor = "失去/获得仇恨颜色"
	DuffedUIConfigUILocalization.nameplatePercent = "启用数字百分比显示"
	DuffedUIConfigUILocalization.nameplateNonTargetAlpha = "设定非当前目标的姓名板透明度"

	--[[Actionbars]]--
	DuffedUIConfigUILocalization.actionbar = "快捷栏"
	DuffedUIConfigUILocalization.actionbarenable = "启用 DuffedUI 快捷栏"
	DuffedUIConfigUILocalization.actionbarrightbarvertical = "设定右边快捷栏横向显示"
	DuffedUIConfigUILocalization.actionbarrightbarsmouseover = "右快捷栏鼠标划过显示"
	DuffedUIConfigUILocalization.actionbarpetbarhorizontal = "设定宠物快捷栏横向显示模式"
	DuffedUIConfigUILocalization.actionbarpetbaralwaysvisible = "宠物条永久可视"
	DuffedUIConfigUILocalization.actionbarverticalshapeshift = "姿态条纵向显示"
	DuffedUIConfigUILocalization.actionbarhotkey = "显示快速键名称"
	DuffedUIConfigUILocalization.actionbarmacro = "在快捷栏上显示宏名称"
	DuffedUIConfigUILocalization.actionbarbuttonsize = "主快捷栏按钮大小"
	DuffedUIConfigUILocalization.actionbarbuttonspacing = "快捷栏按钮间距"
	DuffedUIConfigUILocalization.actionbarshapeshiftborder = "启用姿态条边框"
	DuffedUIConfigUILocalization.actionbarshapeshiftmouseover = "姿态条鼠标划过显示"
	DuffedUIConfigUILocalization.actionbarborderhighlight = "启用快捷栏触发特效高亮模式(默认 = 关闭)"
	DuffedUIConfigUILocalization.actionbarpetbuttonsize = "宠物或姿态栏按钮大小"
	DuffedUIConfigUILocalization.actionbarLeftsidebars = "启用鼠标划过显示左边聊天框体上的快捷栏"
	DuffedUIConfigUILocalization.actionbarRightsidebars = "启用鼠标划过显示右边聊天框体上的快捷栏"
	DuffedUIConfigUILocalization.actionbarSidebarButtonsize = "Set size of buttons for sidebars on chat (only when vertical)"

	--[[Raid Frames]]--
	DuffedUIConfigUILocalization.raid = "团队框体"
	DuffedUIConfigUILocalization.raidenable = "启用团队框体"
	DuffedUIConfigUILocalization.raidshowboss = "启用Boss头像框体"
	DuffedUIConfigUILocalization.raidarena = "启用竞技场框体"
	DuffedUIConfigUILocalization.raidmaintank = "启用主坦克框体"
	DuffedUIConfigUILocalization.raidmainassist = "启用主助攻框体"
	DuffedUIConfigUILocalization.raidshowrange = "启用队伍/团队距离透明度显示"
	DuffedUIConfigUILocalization.raidraidalphaoor = "队伍/团队超出距离透明度"
	DuffedUIConfigUILocalization.raidshowsymbols = "显示小队/团队标记"
	DuffedUIConfigUILocalization.raidaggro = "在小队/团队中启用仇恨显示"
	DuffedUIConfigUILocalization.raidraidunitdebuffwatch = "启用PVE光环检测 (只能在GRIG模式下)"
	DuffedUIConfigUILocalization.raidshowraidpets = "Duffed团队框架中显示宠物框体"
	DuffedUIConfigUILocalization.raidshowplayerinparty = "在队伍中显示你自己"
	DuffedUIConfigUILocalization.raidframewidth = "设定框体宽度"
	DuffedUIConfigUILocalization.raidframeheight = "设定框体高度"
	DuffedUIConfigUILocalization.raidlayout = "设定队伍布局样式(默认 = heal, 数值为: |cffC41F3Bheal|r 或 |cffC41F3Bdps|r)"

	--[[DataText]]--
	DuffedUIConfigUILocalization.datatext = "信息栏信息"
	DuffedUIConfigUILocalization.datatextarmor = "护甲值 (输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextavd = "免伤 (输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextbags = "背包 (输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextbattleground = "启用战场状态信息栏"
	DuffedUIConfigUILocalization.datatextblock = "格挡率(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextbonusarmor = "额外护甲值 (输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextcalltoarms = "战斗/地城召唤 (输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextcrit = "爆击率(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextdodge = "躲闪率(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextdur = "装备耐久度(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextfriends = "好友(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextgold = "金币(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextguild = "公会信息(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatexthaste = "急速(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatexthonor = "荣誉(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatexthonorablekills = "荣誉击杀(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextleech = "吸血(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextmastery = "精通(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextmicromenu = "微型系统菜单(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextmulstistrike = "双击率(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextparry = "格挡率(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextpower = "能量(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextprofession = "专业(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextsmf = "系统信息(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatexttalent = "天赋(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextversatility = "临机应变(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatextwowtime = "时间"
	DuffedUIConfigUILocalization.datatextgarrison = "要塞(输入0关闭显示)"
	DuffedUIConfigUILocalization.datatexttime24 = "启用24小时制"
	DuffedUIConfigUILocalization.datatextlocaltime = "使用本地时间取代服务器时间"
	DuffedUIConfigUILocalization.datatextfontsize = "信息字体大小"
	DuffedUIConfigUILocalization.datatextShowInCombat = "战斗中显示信息栏光标信息"

	--[[Cooldowns]]--
	DuffedUIConfigUILocalization.cooldown = "冷却计时"
	DuffedUIConfigUILocalization.cooldownenable = "启用按钮冷却计时数字"
	DuffedUIConfigUILocalization.cooldowntreshold = "在X秒以后以红色显示冷却时间"
	DuffedUIConfigUILocalization.cooldownicdenable = "启用物品冷却计时"
	DuffedUIConfigUILocalization.cooldownrcdenable = "启用团队技能冷却计时"
	DuffedUIConfigUILocalization.cooldownrcdraid = "启用团队冷却计时公告"
	DuffedUIConfigUILocalization.cooldownrcdparty = "启用小队冷却计时公告"
	DuffedUIConfigUILocalization.cooldownrcdarena = "启用竞技场冷却计时公告"
	DuffedUIConfigUILocalization.cooldownscdenable = "启用法术冷却增强插件"
	DuffedUIConfigUILocalization.cooldownscdfsize = "设定字体大小"
	DuffedUIConfigUILocalization.cooldownscdsize = "设定图标大小 (默认 = 28)"
	DuffedUIConfigUILocalization.cooldownscdspacing = "设定图标间距 (默认 = 10)"
	DuffedUIConfigUILocalization.cooldownscdfade = "设定渐隐效果 (数值: 0 为单一颜色, 1 为由绿转红, 2 为由红转绿)"

	--[[ClassTimer]]--
	DuffedUIConfigUILocalization.classtimer = "职业法术计时条"
	DuffedUIConfigUILocalization.classtimerenable = "启用职业法术计时条"
	DuffedUIConfigUILocalization.classtimerspark = "启用闪烁"
	DuffedUIConfigUILocalization.classtimertargetdebuff = "Enable Debuff display above target frame instead of player frame"
	DuffedUIConfigUILocalization.classtimerplayercolor = "设置玩家计时条颜色"
	DuffedUIConfigUILocalization.classtimertargetbuffcolor = "设置目标计时条Buff颜色"
	DuffedUIConfigUILocalization.classtimertargetdebuffcolor = "设置目标计时条DeBuff颜色"
	DuffedUIConfigUILocalization.classtimertrinketcolor = "设置饰品计时条颜色"
	DuffedUIConfigUILocalization.classtimerheight = "设置计时条高度"
	DuffedUIConfigUILocalization.classtimerspacing = "设置计时条间距"
	DuffedUIConfigUILocalization.classtimerseparator = "启用不同法术分离计时效果"
	DuffedUIConfigUILocalization.classtimerseparatorcolor = "设置分离器显示颜色"
	DuffedUIConfigUILocalization.classtimerdebuffsenable = "Enable Debuff display on classtimer"

	--[[Buffs]]--
	DuffedUIConfigUILocalization.auras = "光环"
	DuffedUIConfigUILocalization.aurasplayer = "启用DuffedUI Buff/Debuff 光环框体"
	DuffedUIConfigUILocalization.aurasconsolidate = "启用Buffs强化显示模式"
	DuffedUIConfigUILocalization.aurasflash = "启用光环持续时间低于30秒闪烁动画"
	DuffedUIConfigUILocalization.aurasclassictimer = "传统模式显示玩家光环"
	DuffedUIConfigUILocalization.aurasbuffnotice = "启用光环缺失提示"
	DuffedUIConfigUILocalization.auraswarning = "启用提示音提醒光环缺失"
	DuffedUIConfigUILocalization.aurasbufftracker = "启用光环追踪增强插件"
	DuffedUIConfigUILocalization.auraswrap = "设定(小地图旁)单行Buff显示数量(默认 = 18)"

	--[[Bags]]--
	DuffedUIConfigUILocalization.bags = "背包"
	DuffedUIConfigUILocalization.bagsenable = "开启背包整合"
	DuffedUIConfigUILocalization.bagsbpr = "设定背包每行显示按钮"
	DuffedUIConfigUILocalization.bagsmovable = "使背包可移动"
	DuffedUIConfigUILocalization.bagsscale = "设置背包/银行框体缩放大小"
	DuffedUIConfigUILocalization.bagsspacing = "设置包内物品显示间距"
	DuffedUIConfigUILocalization.bagsbuttonsize = "设置筛选器(搜索框)大小"
	DuffedUIConfigUILocalization.bagsBounce = "启用获得新物品跳跃动画"
	DuffedUIConfigUILocalization.bagsSortingButton = "Enable the sorting button on bags and bank"

	--[[Misc]]--
	DuffedUIConfigUILocalization.misc = "杂项"
	DuffedUIConfigUILocalization.miscgold = "启用聊天框体中获取金钱名称缩写功能"
	DuffedUIConfigUILocalization.miscsesenable = "启用天赋快捷切换程序"
	DuffedUIConfigUILocalization.miscsesenablegear = "启用装备设定按钮（系统装备设定外置显示）"
	DuffedUIConfigUILocalization.miscsesgearswap = "启用切换天赋时自动切换装备功能"
	DuffedUIConfigUILocalization.miscsesset1 = "为主天赋设置装备序号 (必须是1-10之间的序号)"
	DuffedUIConfigUILocalization.miscsesset2 = "为副天赋设置装备序号 (必须是1-10之间的序号)"
	DuffedUIConfigUILocalization.misccombatanimation = "启用进战/脱战动画提示"
	DuffedUIConfigUILocalization.miscflightpoint = "启用飞行点列表"
	DuffedUIConfigUILocalization.miscilvlcharacter = "启用人物面板显示装备等级"
	DuffedUIConfigUILocalization.miscloc = "禁用快捷栏<角色失去控制>功能"
	DuffedUIConfigUILocalization.miscacm_screen = "启用成就自动截图功能"
	DuffedUIConfigUILocalization.miscclickcast = "启用点击施法增强功能(Click2Cast-plugin)"
	DuffedUIConfigUILocalization.miscAFKCamera = "启用暂离镜头效果"
	DuffedUIConfigUILocalization.miscXPBar = "启用经验条"
	DuffedUIConfigUILocalization.miscXPBarWidth = "设置经验条宽度"

	--[[Duffed]]--
	DuffedUIConfigUILocalization.duffed = "Duffed特色功能"
	DuffedUIConfigUILocalization.duffeddrinkannouncement = "启用吃喝通告(PVP)"
	DuffedUIConfigUILocalization.duffedsayinterrupt = "启用打断通告"
	DuffedUIConfigUILocalization.duffedannouncechannel = "设置通告频道 (设定值为:|cffC41F3BSAY|r, |cffC41F3BPARTY|r, |cffC41F3BRAID|r or |cffC41F3BINSTANCE_CHAT|r)"
	DuffedUIConfigUILocalization.duffeddispelannouncement = "启用驱散通告"
	DuffedUIConfigUILocalization.duffedspellannounce = "启用光环通告"

	--[[Loot]]--
	DuffedUIConfigUILocalization.loot = "拾取"
	DuffedUIConfigUILocalization.lootlootframe = "启用拾取窗口"
	DuffedUIConfigUILocalization.lootrolllootframe = "启用物品Roll窗口"

	--[[Tooltip]]--
	DuffedUIConfigUILocalization.tooltip = "鼠标提示"
	DuffedUIConfigUILocalization.tooltipenable = "启用鼠标提示"
	DuffedUIConfigUILocalization.tooltiphidecombat = "战斗中隐藏鼠标提示"
	DuffedUIConfigUILocalization.tooltiphidebuttons = "隐藏快捷栏按钮鼠标提示"
	DuffedUIConfigUILocalization.tooltiphideuf = "隐藏头像框体鼠标提示"
	DuffedUIConfigUILocalization.tooltipids = "在物品提示上显示法术/物品ID"
	DuffedUIConfigUILocalization.tooltipilvl = "启用物品等级显示提示"
	DuffedUIConfigUILocalization.tooltipenablecaster = "启用Buff/DeBuff施法者名称提示"
	DuffedUIConfigUILocalization.tooltipMouse = "启用鼠标跟随模式"

	--[[Merchant]]--
	DuffedUIConfigUILocalization.merchant = "商人"
	DuffedUIConfigUILocalization.merchantsellgrays = "自动售卖灰色物品"
	DuffedUIConfigUILocalization.merchantautorepair = "自动修理物品"
	DuffedUIConfigUILocalization.merchantsellmisc = "自动贩卖特定物品(非灰色等级的指定物品)"
	DuffedUIConfigUILocalization.merchantautoguildrepair = "启用公会修理物品设定"

	--[[Error]]--
	DuffedUIConfigUILocalization.error = "错误信息提示"
	DuffedUIConfigUILocalization.errorenable = "隐藏屏幕中部的错误信息提示"

	--[[Buttons]]--
	DuffedUIConfigUILocalization.option_button_reset = "重置设定"
	DuffedUIConfigUILocalization.option_button_load = "应用设定"
	DuffedUIConfigUILocalization.option_button_close = "关闭"
	DuffedUIConfigUILocalization.option_setsavedsetttings = "为每个游戏角色设置独立的设定"
	DuffedUIConfigUILocalization.option_resetchar = "你确定要重置这个游戏角色的设定为你的默认设置吗?"
	DuffedUIConfigUILocalization.option_resetall = "你确定要重置所有的设置为默认值么?"
	DuffedUIConfigUILocalization.option_perchar = "你确定要启用或者关闭“为单一角色设定”么?"
	DuffedUIConfigUILocalization.option_makeselection = "在你继续设置之前你必须要做出一个选择。"
end
