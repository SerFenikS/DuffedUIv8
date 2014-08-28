local D, C, L = unpack(select(2, ...))

if D.client == "esES" or D.client == "esMX" then
	L["move"] = {
		["tooltip"] = "Move Tooltip",
		["minimap"] = "Move Minimap",
		["watchframe"] = "Move Quests",
		["gmframe"] = "Move Ticket",
		["buffs"] = "Move Player Buffs",
		["debuffs"] = "Move Player Debuffs",
		["shapeshift"] = "Move Shapeshift/Totem",
		["achievements"] = "Move Achievements",
		["roll"] = "Move Loot Roll Frame",
		["vehicle"] = "Move Vehicle Seat",
		["extrabutton"] = "Extra Button",
		["bar1"] = "Move Bar 1",
		["bar2"] = "Move Bar 2",
		["bar5"] = "Move Bar5",
		["bar5_1"] = "Move\nBar5",
		["pet"] = "Move\nPet",
		["player"] = "Move Playercastbar",
		["target"] = "Move Targetcastbar",
		["classbar"] = "Move Classbar",
		["raid"] = "Move RaidUtility",
		["rcd"] = "Move RaidCD",
		["spell"] = "Move SpellCooldowns",
	}

	L["afk"] = {
		["text4"] = "Mouseover minimap shows coords and locations",
		["text4"] = "Middle click the minimap for micromenu",
		["text4"] = "Right click the minimap for gatheringmenu",
		["text4"] = "By right-clicking on a quest or achievment at the objective tracker, you can retrieve the wowhead link.",
	}

	L["symbol"] = {
		["clear"] = "Clear",
		["skull"] = "Skull",
		["cross"] = "Cross",
		["square"] = "Square",
		["moon"] = "Moon",
		["triangle"] = "Triangle",
		["diamond"] = "Diamond",
		["circle"] = "Circle",
		["star"] = "Star",
	}

	L["ui"] = {
		["outdated"] = "Your version of DuffedUI is out of date. You can download the latest version from www.duffed.net",
		["welcome"] = "Hello |cffc41f3b".. D.myname.."!|r".."\n".."Thank you for using |cffc41f3bDuffedUI "..D.version.."|r. For detailed Information visit |cffc41f3bhttp://www.duffed.net|r.",
		["disableui"] = "DuffedUI doesn't work for this resolution, do you want to disable DuffedUI? (Cancel if you want to try another resolution)",
		["fix_ab"] = "There is something wrong with your action bar. Do you want to reloadui to fix it?",
	}

	L["bufftracker"] = {
		["10ap"] = "+10% Attack Power",
		["10as"] = "+10% Melee & Ranged Attack Speed",
		["10sp"] = "+10% Spell Power",
		["5sh"] = "+5% Spell Haste",
		["5csc"] = "+5% Critical Strike Chance",
		["3kmr"] = "+3000 Mastery Rating",
		["5sai"] = "+5% Strength, Agility, Intellect",
		["10s"] = "+10% Stamina",
		["error"] = "ERROR",
	}

	L["binds"] = {
		["c2c_title"] = "Mouse Bindings",
		["combat"] = "You can't bind keys in combat",
		["saved"] = "All keybindings have been saved",
		["discard"] = "All newly set keybindings have been discarded.",
		["text"] = "Hover your mouse over any actionbutton to bind it. Press the escape key or right click to clear the current actionbuttons keybinding.",
		["save"] = "Save bindings",
		["discardbind"] = "Discard bindings",
	}

	L["loot"] = {
		["tt_count"] = "Count",
		["fish"] = "Fishy Loot",
		["random"] = "Random Player",
		["self"] = "Self Loot",
		["repairmoney"] = "You don't have enough money to repair!",
		["repaircost"] = "Your items have been repaired for",
		["trash"] = "Your vendor trash has been sold and you earned",
	}

	L["buttons"] = {
		["ses_reload"] = "Reloads the entire UI",
		["ses_move"] = "Unlock the frames for moving",
		["ses_kb"] = "Set your keybindings",
	}

	L["errors"] = {
		["noerror"] = "No error yet."
	}

	L["uf"] = {
		["offline"] = "Offline",
		["dead"] = "|cffff0000[DEAD]|r",
		["ghost"] = "GHOST",
		["lowmana"] = "LOW MANA",
		["threat1"] = "Threat on current target:",
		["wrath"] = "Wrath",
		["starfire"] = "Starfire",
	}

	L["group"] = {
		["autoinv_enable"] = "Autoinvite ON: invite",
		["autoinv_enable_custom"] = "Autoinvite ON: ",
		["autoinv_disable"] = "Autoinvite OFF",
		["disband"] = "Disbanding group?",
	}

	L["boss"] = {
		["title"] = "World Boss(s):",
		["galleon"] = "Galleon", 
		["sha"] = "Sha of Anger", 
		["oondasta"] = "Oondasta", 
		["nalak"] = "Nalak",
		["celestials"] = "Celestials", 
		["ordos"] = "Ordos",
		["defeated"] = "Defeated", 
		["undefeated"] = "Undefeated",
	}

	-- chat
	L.chat_INSTANCE_CHAT = "I"
	L.chat_INSTANCE_CHAT_LEADER = "IL"
	L.chat_BN_WHISPER_GET = "De"
	L.chat_GUILD_GET = "G"
	L.chat_OFFICER_GET = "O"
	L.chat_PARTY_GET = "P"
	L.chat_PARTY_GUIDE_GET = "P"
	L.chat_PARTY_LEADER_GET = "P"
	L.chat_RAID_GET = "R"
	L.chat_RAID_LEADER_GET = "R"
	L.chat_RAID_WARNING_GET = "RW"
	L.chat_WHISPER_GET = "De"
	L.chat_FLAG_AFK = "[AUS]"
	L.chat_FLAG_DND = "[DND]"
	L.chat_FLAG_GM = "[GM]"
	L.chat_ERR_FRIEND_ONLINE_SS = "is now |cff298F00online|r"
	L.chat_ERR_FRIEND_OFFLINE_S = "is now |cffff0000offline|r"
	L.chat_PET_BATTLE_COMBAT_LOG = "Pet Battle"
	
	L.chat_general = "General"
	L.chat_trade = "Comercio"
	L.chat_defense = "DefensaLocal"
	L.chat_recrutment = "ReclutamientoHermandad"
	L.chat_lfg = "BuscandoGrupo"
	
	L.datatext_notalents ="Sin Talentos"
	L.datatext_download = "Descarga: "
	L.datatext_bandwidth = "Ancho de banda: "
	L.datatext_inc = "Incoming"
	L.datatext_out = "Outgoing"
	L.datatext_home = "Home Latency:"
	L.datatext_world = "World Latency:"
	L.datatext_global = "Global Latency:"
	L.datatext_guild = "Hermandad"
	L.datatext_noguild = "Sin Hermandad"
	L.datatext_bags = "Mochila: "
	L.datatext_friends = "Amigos"
	L.datatext_online = "Conectados: "
	L.datatext_armor = "Armadura"
	L.datatext_earned = "Ganado:"
	L.datatext_spent = "Gastado:"
	L.datatext_deficit = "Balance:"
	L.datatext_profit = "Beneficios:"
	L.datatext_timeto = "Tiempo para:"
	L.datatext_friendlist = "Lista de Amigos:"
	L.datatext_playersp = "PH"
	L.datatext_playerap = "PA"
	L.datatext_playerhaste = "Celeridad"
	L.datatext_dps = "Dps"
	L.datatext_hps = "Sps"
	L.datatext_playerarp = "ArP"
	L.datatext_session = "Sesión: "
	L.datatext_character = "Personaje: "
	L.datatext_server = "Reino: "
	L.datatext_totalgold = "Total: "
	L.gametooltip_gold_a = "Archaeology: "
	L.gametooltip_gold_c = "Cooking: "
	L.gametooltip_gold_jc = "Jewelcrafting: "
	L.gametooltip_gold_dr = "Dungeon & Raids: "
	L.currencyWeekly = "Semanal: "
	L.datatext_savedraid = "Mazmorras Registradas"
	L.datatext_currency = "Monedas:"
	L.datatext_fps = " fps & "
	L.datatext_ms = " ms"
	L.datatext_playercrit = " crit"
	L.datatext_playerheal = " Sanación"
	L.datatext_avoidancebreakdown = "Desglose de Evasión"
	L.datatext_lvl = "nivel"
	L.datatext_boss = "Jefe"
	L.datatext_miss = "Fallo"
	L.datatext_dodge = "Esquiva"
	L.datatext_block = "Bloqueo"
	L.datatext_parry = "Parada"
	L.datatext_playeravd = "avd: "
	L.datatext_servertime = "Hora del servidor: "
	L.datatext_localtime = "Hora Local: "
	L.datatext_mitigation = "Mitigación por Nivel: "
	L.datatext_healing = "Sanación : "
	L.datatext_damage = "Daño : "
	L.datatext_honor = "Honor : "
	L.datatext_killingblows = "Golpes de Gracia: "
	L.datatext_ttstatsfor = "Estadísticas para "
	L.datatext_ttkillingblows = "Golpes de Gracia:"
	L.datatext_tthonorkills = "Golpes de Gracia con Honor:"
	L.datatext_ttdeaths = "Muertes :"
	L.datatext_tthonorgain = "Honor Ganado:"
	L.datatext_ttdmgdone = "Daño Realizado:"
	L.datatext_tthealdone = "Sanación Realizada :"
	L.datatext_basesassaulted = "Bases Asaltadas:"
	L.datatext_basesdefended = "Bases Defendidas:"
	L.datatext_towersassaulted = "Torres Asaltadas:"
	L.datatext_towersdefended = "Torres Defendidas:"
	L.datatext_flagscaptured = "Banderas Capturadas:"
	L.datatext_flagsreturned = "Banderas Devueltas:"
	L.datatext_graveyardsassaulted = "Cementerios Asaltados:"
	L.datatext_graveyardsdefended = "Cementerios Defendidos:"
	L.datatext_demolishersdestroyed = "Catapultas Destruidas:"
	L.datatext_gatesdestroyed = "Puertas Destruidas:"
	L.datatext_totalmemusage = "Total de Memoria Usada:"
	L.datatext_control = "Controlado por:"
	L.datatext_cta_allunavailable = "No se puede obtener información del Llamamiento a las Armas."
	L.datatext_cta_nodungeons = "Actualmente no hay mazmorras ofreciendo el Llamamiento a las Armas."
	L.datatext_carts_controlled = "Vagonetas Controladas:"
	L.datatext_victory_points = "Puntos de Victoria:"
	L.datatext_orb_possessions = "Orbes en Posesión:"
 
	L.Slots = {
		[1] = {1, "Cabeza", 1000},
		[2] = {3, "Hombro", 1000},
		[3] = {5, "Pecho", 1000},
		[4] = {6, "Cintura", 1000},
		[5] = {9, "Muñeca", 1000},
		[6] = {10, "Manos", 1000},
		[7] = {7, "Piernas", 1000},
		[8] = {8, "Pies", 1000},
		[9] = {16, "Mano Derecha", 1000},
		[10] = {17, "Mano Izquierda", 1000},
		[11] = {18, "A Distancia", 1000}
	}
 
	-- tuto and install
	L.install_header_1 = "Bienvenido/a"
	L.install_header_2 = "1. Esencial"
	L.install_header_3 = "2. Marcos de Unidad"
	L.install_header_4 = "3. Características"
	L.install_header_5 = "4. ¡Cosas que deberías saber!"
	L.install_header_6 = "5. Comandos"
	L.install_header_7 = "6. Finalizado"
	L.install_header_8 = "1. Configuración esencial"
	L.install_header_9 = "2. Social"
	L.install_header_10= "3. Marcos"
	L.install_header_11= "4. ¡Listo!"
	L.install_init_line_1 = "¡Gracias por escoger DuffedUI!"
	L.install_init_line_2 = "Se te guiará a través de un proceso de instalación en simples pasos. En cada uno de ellos podrás decidir qué quieres y que no quieres aplicar o saltar ese paso."
	L.install_init_line_3 = "También se te da la posibilidad de mostrarte un breve tutorial con algunas de las características de DuffedUI."
	L.install_init_line_4 = "Pulsa el botón 'Tutorial' para ser guiado/a a través de esta pequeña introducción, o pulsa 'Instalar' para saltar este paso."
	L.tutorial_step_1_line_1 = "Este rápido tutorial te mostrara algunas de las características de DuffedUI."
	L.tutorial_step_1_line_2 = "Primero, lo más básico que debes conocer antes de poder jugar usando esta UI."
	L.tutorial_step_1_line_3 = "Este instalador es parcialmente específico para cada clase. Algunas de las opciones son aplicadas a todos tus personajes pero necesitaras usar el script de instalación en cada nuevo personaje que utilice DuffedUI. El script se muestra automáticamente en cada personaje nuevo que se conecta por primera vez con DuffedUI. Además, las opciones se pueden encontrar en /DuffedUI/config/config.lua para usuarios avanzados escribiendo /duffedui  en el chat del juego para usuarios casuales."
	L.tutorial_step_1_line_4 = "Un usuario avanzado es un usuario de un ordenador que tiene la habilidad de usar características avanzadas (ej: edición de Lua) las cuales están por encima de las habilidades de los usuarios comunes. Un usuario casual es un usuario normal y no necesariamente capaz de programar. Se recomienda para ellos que usen nuestra herramienta de configuración en el juego (/duffedui) para configurar DuffedUI a su gusto."
	L.tutorial_step_2_line_1 = "DuffedUI incluye una versión incrustada de oUF creada por Trond (Haste) A Ejseth. Esto se encarga de manejar todos los marcos de unidad, los beneficios y perjuicios y los elementos específicos de clase."
	L.tutorial_step_2_line_2 = "Puedes visitar wowinterface.com y buscar oUF para obtener más información a cerca de esta herramienta."
	L.tutorial_step_2_line_3 = "Si juegas como sanador o sanador de banda, puedes activar los marcos de unidad de sanador. Estos muestran más información acerca de tu banda. (/heal) Un dps o tanque debería usar nuestra interfaz simple de banda. (/dps) Si no quieres usar ninguna de las dos o usar otra diferente, puedes desactivarlo en el administrador de addons en la pantalla de selección de personajes."
	L.tutorial_step_2_line_4 = "Para cambiar fácilmente la posición de los marcos de unidad, escribe simplemente /moveui."
	L.tutorial_step_3_line_1 = "DuffedUI es un rediseño de la interfaz de Blizzard. Nada menos, ni nada más. Aproximadamente todas las características que puedes ver en la interfaz por defecto las puedes encontrar en DuffedUI. Las únicas características no disponibles en la interfaz por defecto son aquellas automatizadas que no son realmente visibles en pantalla, como por ejemplo vender automáticamente los objetos grises al visitar a un vendedor o, otro ejemplo, ordenar automáticamente tus objetos en las bolsas."
	L.tutorial_step_3_line_2 = "Porque no a todo el mundo le gustan cosas como los medidores de DPS, mods de Jefes, medidores de Amenaza, etc, nosotros juzgamos que es la mejor cosa que hacer. DuffedUI esta hecha con la idea de encajar al máximo con todas las clases, roles, funciones, tipos de juego, gustos de usuarios, etc. Es por eso que DuffedUI es una de las UIs más populares en este momento. Se ajusta al juego de todos y es extremadamente configurable. Esta también diseñada para ser un buen comienzo para todos los que quieran hacerse su propia UI sin depender de addons. Montones de usuarios desde 2009 esta usando DuffedUI como base para su propia UI. ¡Hecha un vistazo dentro de nuestra sección `Editet Packages` en nuestro sitio web!"
	L.tutorial_step_3_line_3 = "Los usuarios quizá quieran visitar nuestra sección de modificaciones extra (AddOns) en nuestra web o visitando http://www.wowinterface.com para instalar características adicionales o mods."
	L.tutorial_step_3_line_4 = ""
	L.tutorial_step_4_line_1 = "Para determinar cuantas barras quieres, pasa el ratón sobre la derecha o izquierda del fondo de la barra de acción de abajo. Haz lo mismo en la derecha a través de los botones de arriba y abajo. Para copiar texto del chat, haz click en el botón mostrar pasando el ratón por la esquina derecha del chat."
	L.tutorial_step_4_line_2 = "El borde del Mini mapa cambia de color. Se pone verde cuando tienes un nuevo correo, rojo cuando tienes una invitación nueva en el calendario, y naranja cuando tienes ambas."
	L.tutorial_step_4_line_3 = "Puedes hacer click izquierdo en un 80% de los textos de datos para mostrar varios paneles de Blizzard. Los de Amigos y Hermandad tienen funciones con click derecho también."
	L.tutorial_step_4_line_4 = "Hay un menú desplegable disponible. Haciendo click derecho en el botón [X] (Cerrar) de la bolsa abrirá un menú desplegable para mostrar las bolsas, organizar objetos, mostrar llavero, etc. Haciendo click con la rueda del ratón en el Mini mapa mostrará el micro menú."
	L.tutorial_step_5_line_1 = "Finalmente, DuffedUI incluye diversos comandos utiles. Debajo hay una lista."
	L.tutorial_step_5_line_2 = "/moveui te permite mover un montón de marcos por toda la pantalla. /enable y /disable se usan para activar o desactivar rápidamente los addons. /rl recarga la interfaz. /heal activa los marcos de banda de sanador y /dps activa los de dps/tanque."
	L.tutorial_step_5_line_3 = "/tt te permite susurrar a tu objetivo. /rc inicia una comprobación de disponibilidad (Listos). /rd deshace el grupo o banda. /bags muestra algunas de las caracteristicas disponibles a través de línea de comandos. /ainv activa la invitación automática cuando te susurren. (/ainv off) lo desactiva."
	L.tutorial_step_5_line_4 = "/gm muestra el marco de Ayuda. /install, /reset o /tutorial cargan el instalador. /frame escribe el nombre y anclaje del marco bajo el cursor con información adicional."
	L.tutorial_step_6_line_1 = "Se ha completado el tutorial. Puedes escoger consultarlo de nuevo en cualquier momento escribiendo /tutorial."
	L.tutorial_step_6_line_2 = "Sugiero que eches un vistazo en config/config.lua o escribas /duffedui para adaptar la interfaz a tus necesidades."
	L.tutorial_step_6_line_3 = "¡Puedes continuar instalando la IU si aún no está hecho o si quieres déjala como viene por defecto!"
	L.tutorial_step_6_line_4 = ""
	L.install_step_1_line_1 = "Estos pasos aplicaran la correcta configuración de CVar para DuffedUI."
	L.install_step_1_line_2 = "El primer paso aplica la configuración primordial."
	L.install_step_1_line_3 = "Esto se recomienda para cualquier usuario, a menos que desees aplicar únicamente una parte de la configuración."
	L.install_step_1_line_4 = "Haz click en 'Continuar' para aplicar la configuración, o haz click en 'Saltar' si quieres saltar este paso."
	L.install_step_2_line_0 = "Se ha encontrado otro addon para el chat. Ignoraremos este paso. Por favor pulsa saltar para continuar la instalación."
	L.install_step_2_line_1 = "El segundo paso aplica la correcta configuración del chat."
	L.install_step_2_line_2 = "Si eres un usuario nuevo, se recomienda este paso. Si ya eres un usuario de DuffedUI, quizá quieras saltar este paso."
	L.install_step_2_line_3 = "Es normal que la fuente del chat aparezca demasiado grande al aplicar esta configuración. Volverá a ser normal al final de la instalación."
	L.install_step_2_line_4 = "Haz click en 'Continuar' para aplicar la configuración, o haz click en 'Saltar' si quieres saltar este paso."
	L.install_step_3_line_1 = "El tercero y final paso aplica la posición por defecto de los marcos."
	L.install_step_3_line_2 = "Este paso se recomienda para cualquier usuario nuevo."
	L.install_step_3_line_3 = ""
	L.install_step_3_line_4 = "Haz click en 'Continuar' para aplicar la configuración, o haz click en 'Saltar' si quieres saltar este paso."
	L.install_step_4_line_1 = "Se ha completado la instalación"
	L.install_step_4_line_2 = "Por favor, haz click en 'Finalizar' para recargar la IU."
	L.install_step_4_line_3 = ""
	L.install_step_4_line_4 = "¡Disfruta de DuffedUI! ¡Visítanos en http://www.duffed.net!"
	L.install_button_tutorial = "Tutorial"
	L.install_button_install = "Instalar"
	L.install_button_next = "Siguiente"
	L.install_button_skip = "Saltar"
	L.install_button_continue = "Continuar"
	L.install_button_finish = "Finalizar"
	L.install_button_close = "Cerrar"
end
