﻿-- Contributors: vabatta@GitHub

local _, addonTable = ...
local L = addonTable.L

-- Lua
local _G = getfenv(0)

if GetLocale() ~= "itIT" then return end

--[[ L["ANCHOR_FRAME_#"] = "Anchor Frame #%d" ]]
--[[ L["ANCHOR_FRAMES"] = "Anchor Frames" ]]
L["ANCHOR_RESET_DESC"] = "|cffffffffSHIFT-Clicca|r per reimpostare la posizione."
L["BORDER"] = "Bordo"
L["COLORS"] = "Colori"
L["COORDS"] = "Coordinate"
L["COPPER_THRESHOLD"] = "Soglia rame"
L["COPPER_THRESHOLD_DESC"] = "Minimo ammontare di rame per creare un toast."
L["DEFAULT_VALUE"] = "Valore predefinito: |cffffd200%s|r"
L["DND"] = "ND"
L["DND_TOOLTIP"] = "I toast in modalità ND non verranno mostrati in combattimento, ma verranno messi in coda nel sistema. Una volta uscito dal combattimento, verranno mostrate."
L["FADE_OUT_DELAY"] = "Ritardo dissolvenza in uscita"
L["FLUSH_QUEUE"] = "Azzera coda"
--[[ L["FONTS"] = "Fonts" ]]
L["GROWTH_DIR"] = "Direzione crescita"
L["GROWTH_DIR_DOWN"] = "Giù"
L["GROWTH_DIR_LEFT"] = "Sinistra"
L["GROWTH_DIR_RIGHT"] = "Destra"
L["GROWTH_DIR_UP"] = "Su"
L["ICON_BORDER"] = "Bordo icone"
L["NAME"] = "Nome"
L["RARITY_THRESHOLD"] = "Soglia rarità"
L["SCALE"] = "Scala"
L["SHOW_ILVL"] = "Mostra iLvl"
L["SHOW_ILVL_DESC"] = "Mostra livello oggetto vicino al suo nome."
L["SHOW_QUEST_ITEMS"] = "Mostra oggetti missioni"
L["SHOW_QUEST_ITEMS_DESC"] = "Mostra oggetti missioni indipendentemente dalla qualità."
L["SIZE"] = "Dimensione"
--[[ L["SKIN"] = "Skin" ]]
--[[ L["STRATA"] = "Strata" ]]
L["TEST"] = "Prova"
L["TEST_ALL"] = "Prova tutte"
L["TOAST_NUM"] = "Numero di toast"
L["TOAST_TYPES"] = "Tipi toast"
L["TOGGLE_ANCHORS"] = "Attiva / Disattiva Anchors"
L["TRACK_LOSS"] = "Ignora soglia"
L["TRACK_LOSS_DESC"] = "Con questa opzione ignori la soglia di rame."
L["TYPE_LOOT_GOLD"] = "Bottino (Oro)"
--[[ L["X_OFFSET"] = "xOffset" ]]
--[[ L["Y_OFFSET"] = "yOffset" ]]
L["YOU_LOST"] = "Hai perso"
L["YOU_RECEIVED"] = "Hai ricevuto"

-- Retail
L["COLLECTIONS_TAINT_WARNING"] = "Abilitare questa opziona può causare errori durante l'apertura del pannello \"Collezioni\" durante il combattimento."
L["CURRENCY_THRESHOLD_DESC"] = "Inserisci |cffffd200-1|r per ignorare la valuta, |cffffd2000|r per disabilitare il filtro, o |cffffd200un qualsiasi numero sopra 0|r per impostare una soglia sotto la quale i toast non verranno creati."
L["FILTERS"] = "Filtri"
L["HANDLE_LEFT_CLICK"] = "Gestisci click sinistro"
L["NEW_CURRENCY_FILTER_DESC"] = "Inserici l'ID della valuta."
L["OPEN_CONFIG"] = "Apri configurazione"
L["THRESHOLD"] = "Soglia"
L["TRANSMOG_ADDED"] = "Aspetto aggiunto"
L["TRANSMOG_REMOVED"] = "Aspetto rimosso"
L["TYPE_ACHIEVEMENT"] = "Imprese"
L["TYPE_ARCHAEOLOGY"] = "Archeologia"
L["TYPE_CLASS_HALL"] = "Enclave di classe"
L["TYPE_COLLECTION"] = "Collezione"
L["TYPE_COLLECTION_DESC"] = "Toast per nuove cavalcature, mascotte e giocattoli."
--[[ L["TYPE_COVENANT"] = "Covenant" ]]
L["TYPE_DUNGEON"] = "Spedizioni"
L["TYPE_GARRISON"] = "Missioni comandante"
L["TYPE_LOOT_COMMON"] = "Bottino (Comune)"
L["TYPE_LOOT_COMMON_DESC"] = "Toast innescati da eventi chat, e.g. verdi, blu, alcuni epici, qualsiasi cosa che non é gestita da eventi speciali di bottino."
L["TYPE_LOOT_CURRENCY"] = "Bottino (Valute)"
L["TYPE_LOOT_SPECIAL"] = "Bottino (Speciali)"
L["TYPE_LOOT_SPECIAL_DESC"] = "Toast innescati da eventi speciali di bottino, e.g. bottini vinti, bottini leggendari, bottino personale, etc."
L["TYPE_RECIPE"] = "Ricette"
L["TYPE_RUNECARVING"] = "Incisione runica"
L["TYPE_TRANSMOG"] = "Trasmogrificazione"
L["TYPE_WAR_EFFORT"] = "Fronti di Guerra"
L["TYPE_WORLD_QUEST"] = "Missioni mondali"
