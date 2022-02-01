﻿-- Contributors: Bullseiify@Curse, Merathilis@Curse, staratnight@Curse

local _, addonTable = ...
local L = addonTable.L

-- Lua
local _G = getfenv(0)

if GetLocale() ~= "deDE" then return end

L["ANCHOR_FRAME_#"] = "Ankerrahmen #%d"
L["ANCHOR_FRAMES"] = "Ankerrahmen"
L["ANCHOR_RESET_DESC"] = "|cffffffffShift-Klick|r um die Position zurückzusetzen."
L["BORDER"] = "Rahmen"
L["COLORS"] = "Farben"
L["COORDS"] = "Koordinaten"
L["COPPER_THRESHOLD"] = "Kupferschwelle"
L["COPPER_THRESHOLD_DESC"] = "Minimale Anzahl Kupfer. Ab dieser Anzahl wird eine Benachrichtigung erstellt."
L["DEFAULT_VALUE"] = "Standartwert: |cffffd200%s|r"
L["DND"] = "DND"
L["DND_TOOLTIP"] = "Benachrichtigungen im DND-Modus werden nicht im Kampf angezeigt, sie werden jedoch in einer Warteschlange gesammelt. Sobald du den Kampf verlässt, werden sie auftauchen."
L["FADE_OUT_DELAY"] = "Ausblendungsverzögerung"
L["FLUSH_QUEUE"] = "Warteschlange"
L["FONTS"] = "Schriften"
L["GROWTH_DIR"] = "Ausbreitungsrichtung"
L["GROWTH_DIR_DOWN"] = "Nach unten"
L["GROWTH_DIR_LEFT"] = "Nach links"
L["GROWTH_DIR_RIGHT"] = "Nach rechts"
L["GROWTH_DIR_UP"] = "Nach oben"
L["ICON_BORDER"] = "Symbolrahmen"
L["NAME"] = "Name"
L["RARITY_THRESHOLD"] = "Schwellenwert der Seltenheit"
L["SCALE"] = "Skalierung"
L["SHOW_ILVL"] = "GS anzeigen"
L["SHOW_ILVL_DESC"] = "Zeigt die Gegenstandsstufe neben dem Gegenstandsnamen."
L["SHOW_QUEST_ITEMS"] = "Questgegenstände zeigen"
L["SHOW_QUEST_ITEMS_DESC"] = "Zeigt alle Questgegenstände, ungeachtet deren Qualität."
L["SIZE"] = "Größe"
L["SKIN"] = "Oberfläche"
L["STRATA"] = "Ebene"
L["TEST"] = "Test"
L["TEST_ALL"] = "Alle testen"
L["TOAST_NUM"] = "Anzahl der Benachrichtigungen"
L["TOAST_TYPES"] = "Benachrichtigungstypen"
L["TOGGLE_ANCHORS"] = "Ankerpunkte umschalten"
L["TRACK_LOSS"] = "Verlust Verfolgung"
L["TRACK_LOSS_DESC"] = "Diese Option ignoriert die Kupferschwelle."
L["TYPE_LOOT_GOLD"] = "Beute (Gold)"
L["X_OFFSET"] = "X-Versatz"
L["Y_OFFSET"] = "Y-Versatz"
L["YOU_LOST"] = "Ihr verliert"
L["YOU_RECEIVED"] = "Ihr erhaltet"

-- Retail
L["COLLECTIONS_TAINT_WARNING"] = "Diese Option kann Probleme verursachen, wenn das Sammlungsfenster während des Kampfes geöffnet wird."
--[[ L["CURRENCY_THRESHOLD_DESC"] = "Enter |cffffd200-1|r to ignore the currency, |cffffd2000|r to disable the filter, or |cffffd200any number above 0|r to set the threshold below which no toasts will be created." ]]
--[[ L["FILTERS"] = "Filters" ]]
L["HANDLE_LEFT_CLICK"] = "Linksklick behandeln"
--[[ L["NEW_CURRENCY_FILTER_DESC"] = "Enter a currency ID." ]]
L["OPEN_CONFIG"] = "Konfiguration öffnen"
--[[ L["THRESHOLD"] = "Threshold" ]]
L["TRANSMOG_ADDED"] = "Vorlage hinzugefügt"
L["TRANSMOG_REMOVED"] = "Vorlage entfernt"
L["TYPE_ACHIEVEMENT"] = "Erfolg"
L["TYPE_ARCHAEOLOGY"] = "Archäologie"
L["TYPE_CLASS_HALL"] = "Klassenhalle"
L["TYPE_COLLECTION"] = "Sammlung"
L["TYPE_COLLECTION_DESC"] = "Benachrichtigungen für erhaltene Reittiere, Haustiere und Spielzeuge."
L["TYPE_COVENANT"] = "Pakt"
L["TYPE_DUNGEON"] = "Dungeon"
L["TYPE_GARRISON"] = "Garnison"
L["TYPE_LOOT_COMMON"] = "Beute (Gewöhnlich)"
L["TYPE_LOOT_COMMON_DESC"] = "Benachrichtigungen, die von Chatereignissen ausgelöst werden wie grüne, blaue Gegenstände, manche epischen Gegenstände, alles was nicht von der Benachrichtigung für besondere Beute abgedeckt wird."
L["TYPE_LOOT_CURRENCY"] = "Beute (Abzeichen)"
L["TYPE_LOOT_SPECIAL"] = "Beute (Spezial)"
L["TYPE_LOOT_SPECIAL_DESC"] = "Benachrichtigungen, die von besonderen Beuteereignissen wie gewonnene Würfe, legendäre Gegenstände, persönliche Beute etc. ausgelöst werden."
L["TYPE_RECIPE"] = "Rezept"
L["TYPE_RUNECARVING"] = "Runenschnitzen"
L["TYPE_TRANSMOG"] = "Transmogrifikation"
L["TYPE_WAR_EFFORT"] = "Kriegsanstrengungen"
L["TYPE_WORLD_QUEST"] = "Weltquest"
