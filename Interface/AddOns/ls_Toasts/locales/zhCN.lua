﻿-- Contributors: y368413@Curse, dxlmike@Curse, vk1103ing@Curse

local _, addonTable = ...
local L = addonTable.L

-- Lua
local _G = getfenv(0)

if GetLocale() ~= "zhCN" then return end

L["ANCHOR_FRAME_#"] = "锚点框架#%d"
L["ANCHOR_FRAMES"] = "锚点框架"
L["ANCHOR_RESET_DESC"] = "|cffffffffShift-点击左键|r 重置位置。"
L["BORDER"] = "边框"
L["COLORS"] = "着色"
L["COORDS"] = "方位"
L["COPPER_THRESHOLD"] = "拾取最小值(铜)"
L["COPPER_THRESHOLD_DESC"] = "至少要多少銅才会显示拾取提示面板。"
L["DEFAULT_VALUE"] = "默认参数：|cffffd200%s|r"
L["DND"] = "勿扰"
L["DND_TOOLTIP"] = "提示处于勿扰模式将不会在战斗中显示，但仍在后台队列，一旦你离开战斗，就会开始弹出提示。"
L["FADE_OUT_DELAY"] = "淡出延迟"
L["FLUSH_QUEUE"] = "刷新分组"
L["FONTS"] = "字体"
L["GROWTH_DIR"] = "延伸方向"
L["GROWTH_DIR_DOWN"] = "下"
L["GROWTH_DIR_LEFT"] = "左"
L["GROWTH_DIR_RIGHT"] = "右"
L["GROWTH_DIR_UP"] = "上"
L["ICON_BORDER"] = "图标边框"
L["NAME"] = "名称"
L["RARITY_THRESHOLD"] = "品质限定"
L["SCALE"] = "缩放"
L["SHOW_ILVL"] = "显示装等"
L["SHOW_ILVL_DESC"] = "在装备名称前显示装备等级"
L["SHOW_QUEST_ITEMS"] = "显示任务物品"
L["SHOW_QUEST_ITEMS_DESC"] = "显示任务物品拾取提示框。"
L["SIZE"] = "大小"
L["SKIN"] = "皮肤"
L["STRATA"] = "层级"
L["TEST"] = "测试"
L["TEST_ALL"] = "测试全部"
L["TOAST_NUM"] = "提示框数量"
L["TOAST_TYPES"] = "提示框类型"
L["TOGGLE_ANCHORS"] = "移动位置"
L["TRACK_LOSS"] = "追踪损失"
L["TRACK_LOSS_DESC"] = "开启该选项后将忽略 拾取最小值 设置。"
L["TYPE_LOOT_GOLD"] = "拾取(金币)"
L["X_OFFSET"] = "水平偏移量"
L["Y_OFFSET"] = "垂直偏移量"
L["YOU_LOST"] = "你损失了"
L["YOU_RECEIVED"] = "你获得了"

-- Retail
L["COLLECTIONS_TAINT_WARNING"] = "战斗中打开收藏(包括坐骑、宠物和玩具)界面，会引起Blz内置插件报错(污染)。"
--[[ L["CURRENCY_THRESHOLD_DESC"] = "Enter |cffffd200-1|r to ignore the currency, |cffffd2000|r to disable the filter, or |cffffd200any number above 0|r to set the threshold below which no toasts will be created." ]]
--[[ L["FILTERS"] = "Filters" ]]
L["HANDLE_LEFT_CLICK"] = "支持左键点击"
--[[ L["NEW_CURRENCY_FILTER_DESC"] = "Enter a currency ID." ]]
L["OPEN_CONFIG"] = "打开设置"
--[[ L["THRESHOLD"] = "Threshold" ]]
L["TRANSMOG_ADDED"] = "幻化外观已添加"
L["TRANSMOG_REMOVED"] = "幻化外观已移除"
L["TYPE_ACHIEVEMENT"] = "成就"
L["TYPE_ARCHAEOLOGY"] = "考古"
L["TYPE_CLASS_HALL"] = "职业大厅"
L["TYPE_COLLECTION"] = "藏品"
L["TYPE_COLLECTION_DESC"] = "对获取到的坐骑、宠物和玩具进行提示。"
--[[ L["TYPE_COVENANT"] = "Covenant" ]]
L["TYPE_DUNGEON"] = "地下城"
L["TYPE_GARRISON"] = "要塞"
L["TYPE_LOOT_COMMON"] = "拾取(一般)"
L["TYPE_LOOT_COMMON_DESC"] = "由聊天事件触发的通知，例如：绿色、蓝色或某些紫色装备，一切其他不属于特殊战利品的拾取。"
L["TYPE_LOOT_CURRENCY"] = "拾取(货币)"
L["TYPE_LOOT_SPECIAL"] = "拾取(特殊)"
L["TYPE_LOOT_SPECIAL_DESC"] = "由特殊战利品触发的通知，例如：贏得Roll、橙装、个人拾取..等等。"
L["TYPE_RECIPE"] = "专业图纸"
L["TYPE_RUNECARVING"] = "符文铭刻"
L["TYPE_TRANSMOG"] = "幻化收藏"
L["TYPE_WAR_EFFORT"] = "前线战役"
L["TYPE_WORLD_QUEST"] = "世界任务"