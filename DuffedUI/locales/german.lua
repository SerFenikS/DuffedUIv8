local D, C, L = unpack(select(2, ...))

if D.Client == "deDE" then
	L["move"] = {
		["tooltip"] = "Bewege Tooltip",
		["minimap"] = "Bewege Minimap",
		["watchframe"] = "Bewege Quests",
		["gmframe"] = "Bewege Tickets",
		["buffs"] = "Bewege Stärkungszauber (Spieler)",
		["debuffs"] = "Bewege Schwächungszauber (Spieler)",
		["shapeshift"] = "Bewege Haltungsleiste",
		["achievements"] = "Bewege Erfolge",
		["roll"] = "Bewege Würfelfenster",
		["vehicle"] = "Bewege Fahrzeuganzeige",
		["extrabutton"] = "Bewege Extrabutton",
		["bar1"] = "Bewege Leiste 1",
		["bar2"] = "Bewege Leiste 2",
		["bar5"] = "Bewege Leiste 5",
		["bar5_1"] = "Bewege\nLeiste 5",
		["pet"] = "Bewege\nBegleiterleiste",
		["player"] = "Bewege Zauberleiste (Spieler)",
		["target"] = "Bewege Zauberleiste (Ziel)",
		["classbar"] = "Bewege Klassenleiste",
		["raid"] = "Bewege RaidUtility",
		["rcd"] = "Bewege RaidCD",
		["spell"] = "Bewege SpellCooldowns",
	}

	L["afk"] = {
		["text1"] = "Mouseover über die Minimap zeigt Koordinaten und die aktuelle Zone an.",
		["text2"] = "Mausradklick in die Minimap zeigt das Mikromenü an.",
		["text3"] = "Rechtsklick in die Minimap zeigt das Aufspürmenü.",
		["text4"] = "Rechtsklick auf Quests, oder Erfolge, ermöglicht es einen direkten Link zu 'WoWHead' zu kopieren.",
		["text5"] = "Du kannst /moveui eingeben um die UI-Elemente zu verschieben.",
		["text6"] = "Du kannst /uihelp eingeben um ein Tutorial anzuzeigen."
	}

	L["symbol"] = {
		["clear"] = "Kein Zeichen",
		["skull"] = "Totenkopf",
		["cross"] = "Kreuz",
		["square"] = "Quadrat",
		["moon"] = "Mond",
		["triangle"] = "Dreieck",
		["diamond"] = "Diamant",
		["circle"] = "Kreis",
		["star"] = "Stern",
	}

	L["ui"] = {
		["outdated"] = "Deine Version von DuffedUI ist veraltet. Du kannst die neuste Version auf |cffc41f3http://www.duffed.net|r herunter laden.",
		["welcome"] = "Hallo |cffc41f3b".. D.MyName.."!|r".."\n".."Danke das Du Dich für |cffc41f3bDuffedUI "..D.Version.."|r entschieden hast. Um detailierte Informationen zu erhalten, besuche uns im Netz unter: |cffc41f3bhttp://www.duffed.net|r.",
		["disableui"] = "DuffedUI funktioniert mit Deiner Auflösung nicht. Möchtest Du DuffedUI deaktivieren? (Abbrechen, wenn Du es mit einer anderen Auflösung probieren möchtest)",
		["fix_ab"] = "Etwas stimmt nicht mit den Aktionsleisten. Möchtest Du das UI neu laden um diesen Fehler zu beheben?",
	}

	L["install"] = {
		["header01"] = "Willkommen",
		["header02"] = "1. Grundlegendes",
		["header03"] = "2. Einheitenfenster",
		["header04"] = "3. Features",
		["header05"] = "4. Dinge die man wissen sollte!",
		["header06"] = "5. Chatbefehle",
		["header07"] = "6. Beendet",
		["header08"] = "1. Grundlegende Einstellungen",
		["header09"] = "2. Soziales",
		["header10"] = "3. Fenster",
		["header11"] = "4. Erfolg!",

		["continue_skip"] = "Klicke auf 'Weiter' um die Einstellungen zu übernehmen, oder 'Überspringen', wenn Du diesen Schritt überspringen möchtest.",
		["initline1"] = "Danke das Du DuffedUI gewählt hast!",
		["initline2"] = "Du wirst mit einigen wenigen Schritten durch den Installationsprozess begleitet. Bei jedem Schritt kannst Du entscheiden, ob Du die angegebenen Einstellungen übernehmen, oder überspringen möchtest.",
		["initline3"] = "Du hast ebenfalls die Möglichkeit Dir ein Tutorial anzeigen zu lassen, welches Dir die Features von DuffedUI aufzeigt.",
		["initline4"] = "Drücke auf 'Tutorial' um Dir diese kleine Einleitung anzeigen zu lassen, oder drücke 'Installieren', um diesen Schritt zu überspringen.",

		["step1line1"] = "Dieser Schritt fügt die korrekten CVar-Einstellungen für DuffedUI hinzu.",
		["step1line2"] = "Der erste Schritt fügt grundlegende Einstellungen hinzu.",
		["step1line3"] = "Das wird für alle Benutzer des DuffedUI |cffff0000empfohlen|r, es sei denn Du möchtest nur bestimmte Einstellungen anwenden.",

		["step2line0"] = "Ein anderes Chat-Addon wurde gefunden. Dieser Schritt wird ignoriert! Bitte klicke auf 'Überspringen'.",
		["step2line1"] = "Der zweite Schritt wendet die korrekten Chateinstellungen an.",
		["step2line2"] = "Wenn Du ein neuer Benutzer des DuffedUI bist, wird dieser Schritt empfohlen. Bist du bereits Benutzer des DuffedUI, kannst Du auch diesen Schritt überspringen.",
		["step2line3"] = "Es ist normal, wenn die Schrift im Chat zu groß erscheint, bevor alle Einstellungen übernommen wurden.  Die Schrift kehrt zum normalen Aussehen zurück, sobald die Installation abgeschlossen ist.",

		["step3line1"] = "Der dritte und letzte Schritt positioniert alle Elemente korrekt.",
		["step3line2"] = "Dieser Schritt wird für alle neuen Benutzer des DuffedUI |cffff0000empfohlen|r.",
		["step3line3"] = "",

		["step4line1"] = "Die Installation wurde erfolgreich abgeschlossen.",
		["step4line2"] = "Bitte klicke auf den Button 'Beenden' um das UI neu zu laden.",
		["step4line3"] = "",
		["step4line4"] = "Geniesse Dein DuffedUI! Und besuche uns doch mal auf |cffc41f3http://www.duffed.net|r!",
	}

	L["tutorial"] = {
		["step1line1"] = "Diese kurze Anleitung zeigt Dir einige Features des DuffedUI.",
		["step1line2"] = "Zuerst kommen die Grundlagen, die man wissen sollte, bevor Du mit der UI loslegst.",
		["step1line3"] = "Die Installation ist teilweise charakterspezfisch. Während einige der Einstellungen Accountweit sind, muss die Installation bei jedem neuen Charakter erneut durchgeführt werden. Die Optionen sind einmal in config/config.lua (erfahrene Benutzer) oder mit /duffedui (normale Benutzer) zu finden.",
		["step1line4"] = "Ein erfahrener Benutzer ist jemand der sich bereits damit auskennt Lua-Dateien zu bearbeiten und ein normaler Benutzer ist jemand der sich damit nicht auskennt. Es wird empfohlen die Konfigurationsmöglichkeit durch /duffedui zu benutzen um das Interface einzustellen.",

		["step2line1"] = "DuffedUI behinhaltet eine eingebette Version von oUF (oUFDUffedUI) welches von Haste erstellt wurde. Das steuert alle Einheitenfenster, die man sehen kann, sowie Stärkungs- und Schwächungszauber, sowie alle klassenspezifischen Anzeigen.",
		["step2line2"] = "Du kannst gern http://www.wowinterface besuchen um mehr über das Tool oUF zu erfahren.",
		["step2line3"] = "Man kann die Postionen der Einheitenfenster einfach mit /moveui verändern.",

		["step3line1"] = "DuffedUI ist ein neugestaltetes BlizzardUI. Nicht mehr und nichts weniger. Alle Funktionen, die man auch im StandardUI findet, hat man ebenfalls in DuffedUI. Zusätzlich bringt DuffedUI einige automatische Funktionen mit, die man in der StandardUI vermisst. (Z.B. die Taschensortierung, das Verkaufen von grauen Gegenständen, usw.).",
		["step3line2"] = "DuffedUI wurde entworfen um das bestmöglichste Spielerlebnis zu erreichen, egal welche Spielweise, Klasse und Geschmack. DuffedUI ist für jeden individuell kinderleicht anpassbar. Das ist auch der Grund wieso DuffedUI eines der populärsten UIs in der Geschichte von World of Warcraft™ ist. Ausserdem wurde es so entworfen, dass man mit wenigen Mausklicks sofort loslegen kann, ohne sich noch irgendwelche sonstigen AddOns herunterzuladen zu müssen. Seit 2010 haben viele Spieler aufgrund von DuffedUI, ihr eigenes, auf DuffedUI basiertes Interface erstellt.",
		["step3line3"] = "Für weitere Addons schaue bitte im Forum nach, oder besuche http://www.wowinterface.com.",

		["step4line1"] = "Du kannst 80% der Datenfelder linksklicken, um verschiedene Fenster von Blizzard zu öffnen. Die Datenfelder `Freunde` und `Gilde` haben auch eine Funktion bei Rechtsklick. Um festzulegen, wieviele Aktionsleisten Du möchtest, öffne per ESC und klick auf 'DuffedUI' das Konfigurationsmenü. UNter dem Menüpunkt Aktionsleisten kannst Du die Anzahl der Leisten auswählen und vieles mehr. Um beliebigen Text aus dem Chat zu kopieren, klicke den kleinen Knopf mit dem Textsymbol, am jeweiligen Chatrand.",
		["step4line2"] = "Die Minimap enthält wichtige Anzeigen. Z.B. das Briefsymbol, wenn du neue Post erhalten hast, oder die Uhrzeit färbt sich rot, wenn Du eine Kalendareinladung erhalten hast. Die LFG-Anzeige findest Du dort und vieles mehr. Ein Klick mit dem Mausrad auf die Miniaturkarte, öffnet das Mikromenü.",
		["step4line3"] = "Hier findest Du einige Aufklappmenüs. Bei Rechtsklick auf das kleine '[X]', am oberen rechten Rand der Tasche, kannst Du Deine Taschen anzeigen lassen.",

		["step5line1"] = "Zu guter Letzt, beinhaltet DuffedUI eine Reihe nützlicher Chat Eingabebefehle.",
		["step5line2"] = "/moveui erlaubt einen Großteil aller UI Elemente zu verschieben. Der Befehl /rl lädt das komplette UI neu.",
		["step5line3"] = "Benutze /tt im Chat um mit dem Ziel zu flüstern. /rc Startet einen Bereitschaftscheck. /rd Löst die Gruppe, oder den Schlachtzug auf. /ainv Aktiviert das Einladen per flüstern. /ainv off Schaltet das automatische Einladen ab.",
		["step5line4"] = "/install , oder /tutorial startet die Installation erneut. ",

		["step6line1"] = "Die Einführung ist abgeschlossen. Du kannst sie jeder Zeit wieder starten, indem Du im Chat /tutorial eingibst.",
		["step6line2"] = "Ich schlage vor, Du wirfst mal einen Blick auf die Datei DuffedUI/config/config.lua, oder gibst /duffedui ein, um das Interface Deinen Bedürfnissen anzupassen.",
		["step6line3"] = "Du kannst nun mit der Installation des Interface fortfahren, sofern sie noch nicht abgeschlossen war, oder Du das Interface auf seine Standardeinstellungen zurücksetzen möchtest.",
	}

	L["bufftracker"] = {
		["10ap"] = "+10% Angriffskraft",
		["10as"] = "+10% Angriffsgeschwindigkeit",
		["10sp"] = "+10% Zaubermacht",
		["5sh"] = "+5% Zaubergeschwindigkeit",
		["5csc"] = "+5% Chance auf kritische Treffer",
		["3kmr"] = "+3000 Meisterschaft",
		["5sai"] = "+5% Werte",
		["10s"] = "+10% Ausdauer",
		["error"] = "FEHLER",
	}

	L["binds"] = {
		["c2c_title"] = "Mausbelegung",
		["combat"] = "Während eines Kampfes kannst Du keine Tasten belegen",
		["saved"] = "Alle Tastenbelegungen wurden gespeichert",
		["discard"] = "Alle neuen Tastenbelegungen wurden verworfen.",
		["text"] = "Bewege die Maus über jeden beliebigen Aktionsbutton um ihn zu belegen. Drücke ESC, oder die rechte Maustaste, um die Belegung zu verwerfen.",
		["save"] = "Belegung speichern",
		["discardbind"] = "Belegung verwerfen",
	}

	L["loot"] = {
		["tt_count"] = "Anzahl",
		["fish"] = "Schräger Loot",
		["random"] = "Zufälliger Spieler",
		["self"] = "Eigene Beute",
		["repairmoney"] = "Dir fehlt ds nötige Kleingeld um alles zu reparieren!",
		["repaircost"] = "Alle Gegenstände wurden repariert für einen Gesamtpreis von",
		["trash"] = "Alle grauen Gegenstände wurden verkauft. Deine Einnahmen belaufen sich auf",
	}

	L["buttons"] = {
		["ses_reload"] = "Das gesamte UI neu laden",
		["ses_move"] = "Fenster entsperren um sie zu bewegen",
		["ses_kb"] = "Tastenbelegung einstellen",
		["tutorial"] = "Tutorial",
		["install"] = "Installieren",
		["next"] = "Nächste",
		["skip"] = "Überspringen",
		["continue"] = "Weiter",
		["finish"] = "Beenden",
		["close"] = "Schliessen",
	}

	L["errors"] = {
		["noerror"] = "Derzeit keine Fehler."
	}

	L["uf"] = {
		["offline"] = "Offline",
		["dead"] = "|cffff0000[TOT]|r",
		["ghost"] = "GEIST",
		["lowmana"] = "Wenig Mana",
		["threat1"] = "Bedrohung auf aktuellem Ziel:",
		["wrath"] = "Zorn",
		["starfire"] = "Sternenfeuer",
	}

	L["group"] = {
		["autoinv_enable"] = "Automatische Einladung AN: invite",
		["autoinv_enable_custom"] = "Automatische Einladung: ",
		["autoinv_disable"] = "Automatische Einladung AUS",
		["disband"] = "Gruppe auflösen?",
	}

	L["boss"] = {
		["title"] = "Weltboss(e):",
		["galleon"] = "Galleon", 
		["sha"] = "Sha des Zorns", 
		["oondasta"] = "Oondasta", 
		["nalak"] = "Nalak",
		["celestials"] = "Erhabene", 
		["ordos"] = "Ordos",
		["defeated"] = "besiegt", 
		["undefeated"] = "unbesiegt",
	}

	L["chat"] = {
		["instance_chat"] = "I",
		["instance_chat_leader"] = "IL",
		["guild"] = "G",
		["officer"] = "O",
		["party"] = "P",
		["party_leader"] = "P",
		["raid"] = "R",
		["raid_leader"] = "RL",
		["raid_warning"] = "RW",
		["flag_afk"] = "[AFK]",
		["flag_dnd"] = "[DND]",
		["petbattle"] = "Haustierkampf",
		["defense"] = "LokaleVerteidigung",
		["recruitment"] = "GuildRecruitment",
		["lfg"] = "SucheNachGruppe",
	}

	L["dt"] = {
		["talents"] ="Keine Talente",
		["download"] = "Download: ",
		["bandwith"] = "Bandbreite: ",
		["inc"] = "Eingehend:",
		["out"] = "Ausgehend:",
		["home"] = "Heimlatenz:",
		["world"] = "Serverlatenz:",
		["global"] = "Globale Latenz:",
		["noguild"] = "Keine Gilde",
		["earned"] = "Verdient",
		["spent"] = "Ausgegeben:",
		["deficit"] = "Unterschied:",
		["profit"] = "Gewinn:",
		["timeto"] = "Zeit bis",
		["sp"] = "ZM",
		["ap"] = "AK",
		["session"] = "Sitzung: ",
		["character"] = "Charakter: ",
		["server"] = "Server: ",
		["dr"] = "Instanzen & Schlachtzüge: ",
		["raid"] = "SchlachtzugsID(s)",
		["crit"] = " Krit",
		["avoidance"] = "Vermeidungsaufschlüsselung",
		["lvl"] = "lvl",
		["avd"] = "vdg: ",
		["server_time"] = "Server Zeit: ",
		["local_time"] = "Lokale Zeit: ",
		["mitigation"] = "Milderung durch Level: ",
		["stats"] = "Werte für ",
		["dmgdone"] = "Schaden gemacht:",
		["healdone"] = "Gewirkte Heilung:",
		["basesassaulted"] = "Basen angegriffen:",
		["basesdefended"] = "Basen verteidigt:",
		["towersassaulted"] = "Türme angegriffen:",
		["towersdefended"] = "Trüme verteidigt:",
		["flagscaptured"] = "Flaggen eingenommen:",
		["flagsreturned"] = "Flaggen zurückgebracht:",
		["graveyardsassaulted"] = "Friedhöfe angegriffen:",
		["graveyardsdefended"] = "Friedhöfe verteidigt:",
		["demolishersdestroyed"] = "Verwüster zerstört:",
		["gatesdestroyed"] = "Tore zerstört:",
		["totalmemusage"] = "Total benutzter Speicher:",
		["control"] = "Kontrolliert von:",
		["cta_allunavailable"] = "Kann keine Daten für 'Ruf zu den Waffen' erhalten.",
		["cta_nodungeons"] = "Keine Instanz bietet derzeit eine 'Ruf zu den Waffen' Belohnung an.",
		["carts_controlled"] = "Wagen kontrolliert:",
		["victory_points"] = "Siegpunkte:",
		["orb_possessions"] = "Orbbesitz:",
		["goldbagsopen"] = "|cffC41F3BTaschen: Linksklick|r",
		["goldcurrency"] = "|cffC41F3BWährungsmenü: Rechtsklick|r",
		["goldreset"] = "|cffC41F3BDaten zurücksetzen: Shift halten + Rechtsklick|r",
		["notalents"] = "Keine Talente",
	}

	L["Slots"] = {
		[1] = {1, "Head", 1000},
		[2] = {3, "Shoulder", 1000},
		[3] = {5, "Chest", 1000},
		[4] = {6, "Waist", 1000},
		[5] = {9, "Wrist", 1000},
		[6] = {10, "Hands", 1000},
		[7] = {7, "Legs", 1000},
		[8] = {8, "Feet", 1000},
		[9] = {16, "Main Hand", 1000},
		[10] = {17, "Off Hand", 1000},
		[11] = {18, "Ranged", 1000}
	}
end