﻿-- Contributors: ls-@GitHub, BLizzatron@Curse

local _, addonTable = ...
local L = addonTable.L

-- Lua
local _G = getfenv(0)

if GetLocale() ~= "ruRU" then return end

L["ANCHOR_FRAME_#"] = "Фрейм крепления #%d"
L["ANCHOR_FRAMES"] = "Фреймы крепления"
L["ANCHOR_RESET_DESC"] = "|cffffffffЗажмите Shift и щелкните|r, чтобы сбросить позицию."
L["BORDER"] = "Рамка"
L["COLORS"] = "Цвета"
L["COORDS"] = "Координаты"
L["COPPER_THRESHOLD"] = "Порог меди"
L["COPPER_THRESHOLD_DESC"] = "Наименьшее количество медных монет, для которого будет отображено уведомление."
L["DEFAULT_VALUE"] = "Значение по умолчанию: |cffffd200%s|r"
L["DND"] = "Не беспокоить"
L["DND_TOOLTIP"] = "Уведомления в режиме \"Не беспокоить\" не будут отображаться в бою, но будут добавлены в очередь. Они начнут появляться на Вашем экране, как только Вы покинете бой."
L["FADE_OUT_DELAY"] = "Задержка исчезновения"
L["FLUSH_QUEUE"] = "Очистить очередь"
L["FONTS"] = "Шрифты"
L["GROWTH_DIR"] = "Направление роста"
L["GROWTH_DIR_DOWN"] = "Вниз"
L["GROWTH_DIR_LEFT"] = "Влево"
L["GROWTH_DIR_RIGHT"] = "Вправо"
L["GROWTH_DIR_UP"] = "Вверх"
L["ICON_BORDER"] = "Рамка иконки"
L["NAME"] = "Название"
L["RARITY_THRESHOLD"] = "Порог редкости"
L["SCALE"] = "Масштаб"
L["SHOW_ILVL"] = "Показывать ур. пр."
L["SHOW_ILVL_DESC"] = "Показывать уровень предмета рядом с его названием."
L["SHOW_QUEST_ITEMS"] = "Показывать кв. пр."
L["SHOW_QUEST_ITEMS_DESC"] = "Показывать квестовые предметы независимо от их качества."
L["SIZE"] = "Размер"
L["SKIN"] = "Обложка"
L["STRATA"] = "Слой"
L["TEST"] = "Тест"
L["TEST_ALL"] = "Тестировать всё"
L["TOAST_NUM"] = "Количество уведомлений"
L["TOAST_TYPES"] = "Типы уведомлений"
L["TOGGLE_ANCHORS"] = "Показать/скрыть фреймы крепления"
L["TRACK_LOSS"] = "Отслеживать потерю"
L["TRACK_LOSS_DESC"] = "Эта настройка игнорирует установленный порог меди."
L["TYPE_LOOT_GOLD"] = "Добыча (Золото)"
L["X_OFFSET"] = "Смещение по X"
L["Y_OFFSET"] = "Смещение по Y"
L["YOU_LOST"] = "Вы потеряли"
L["YOU_RECEIVED"] = "Вы получили"

-- Retail
L["COLLECTIONS_TAINT_WARNING"] = "Включение данной настройки может вызвать ошибки при открытии панели \"Коллекции\" в бою."
L["CURRENCY_THRESHOLD_DESC"] = "Введите |cffffd200-1|r, чтобы игнорировать валюту, |cffffd2000|r, чтобы отключить фильтр, или |cffffd200любое число больше 0|r, чтобы установить порог, ниже которого уведомления не будут показываться."
L["FILTERS"] = "Фильтры"
L["HANDLE_LEFT_CLICK"] = "Обрабатывать левый щелчок"
L["NEW_CURRENCY_FILTER_DESC"] = "Введите ID валюты."
L["OPEN_CONFIG"] = "Открыть настройки"
L["THRESHOLD"] = "Порог"
L["TRANSMOG_ADDED"] = "Модель добавлена"
L["TRANSMOG_REMOVED"] = "Модель удалена"
L["TYPE_ACHIEVEMENT"] = "Достижение"
L["TYPE_ARCHAEOLOGY"] = "Археология"
L["TYPE_CLASS_HALL"] = "Оплот класса"
L["TYPE_COLLECTION"] = "Коллекция"
L["TYPE_COLLECTION_DESC"] = "Уведомления для недавно добавленных средств передвижений, питомцев и игрушек."
L["TYPE_COVENANT"] = "Ковенант"
L["TYPE_DUNGEON"] = "Подземелье"
L["TYPE_GARRISON"] = "Гарнизон"
L["TYPE_LOOT_COMMON"] = "Добыча (Обычная)"
L["TYPE_LOOT_COMMON_DESC"] = "Уведомления, вызванные событиями чата, например: необычные, редкие, некоторые эпические предметы, все то, что не показывается посредством уведомлений об особой добыче."
L["TYPE_LOOT_CURRENCY"] = "Добыча (Валюта)"
L["TYPE_LOOT_SPECIAL"] = "Добыча (Особая)"
L["TYPE_LOOT_SPECIAL_DESC"] = "Уведомления, вызванные специальными событиями добычи, например: выигранный розыгрыш добычи, легендарная или персональная добыча, и т. д."
L["TYPE_RECIPE"] = "Рецепт"
L["TYPE_RUNECARVING"] = "Вырезание рун"
L["TYPE_TRANSMOG"] = "Трансмогрификация"
L["TYPE_WAR_EFFORT"] = "Военная кампания"
L["TYPE_WORLD_QUEST"] = "Локальное задание"
