local DGV = DugisGuideViewer
local DGU
if not DGV then return end

------------
-- Config --
------------

--Scale
local objectiveIconSize = 1
--Y shift in px
local objectiveIconYPosition = -13
--Scale
local lootIconSize = 1.2
--Distance from main objective icon in px
local lootIconDistance = 7
--Scale
local itemIconSize = 1
--Distance from main objective icon in px
local itemIconDistance = 5
--X shift in px
local objectveTextXPosition = 0
--Objective text max width (right to the icon)
local maxTextWidth = 275

local NamePlate, L = DGV:RegisterModule("NamePlate"), DugisLocals


--Plate id 2 plate info map
local ActivePlates = {}

local PlateId2CostomizedFrames = {}
local DugiQuestPlateTooltip = CreateFrame('GameTooltip', 'DugiQuestPlateTooltip', nil, 'GameTooltipTemplate')

--todo: implement and test
function NamePlate:QUEST_ACCEPTED(questLogIndex, questID, ...)
end

--todo: implement and test
function NamePlate:QUEST_REMOVED(questID)
end

function NamePlate:OnNAME_PLATE_UNIT_ADDED(_, plateID)
	ActivePlates[plateID] = {
		frame = C_NamePlate.GetNamePlateForUnit(plateID), 
		unitName = UnitName(plateID), 
		unitGUID = UnitGUID(plateID), 
		plateID = plateID
	}
	
	if self.UpdateActivePlatesExtras then
		self:UpdateActivePlatesExtras(plateID)
	end
end

function NamePlate:ShouldLoad()
	return true
end

function NamePlate:Initialize()
	DGU = DugisGuideUser
	DGV.NamePlate = NamePlate
	
	function self:SetDugiNameplate(plateFrame, showIcon, text, iconSize, itemsCount, lootIcon, itemTexture_, objectIcon, questExists, questPartCompleted)

		if plateFrame.DugiIcon == nil then
			plateFrame.DugiIcon = CreateFrame("Frame", nil, plateFrame) 
			plateFrame.DugiIcon:Show()
			
			plateFrame.DugiIcon.Texture = plateFrame.DugiIcon:CreateTexture(nil, "OVERLAY")                                   
			plateFrame.DugiIcon.Texture:SetAllPoints()
			
			plateFrame.DugiIcon:SetFrameLevel(10)
			
			local DugiIconLoot = CreateFrame("Frame", nil, plateFrame) 
			DugiIconLoot:Show()
			
			DugiIconLoot.Texture = DugiIconLoot:CreateTexture(nil, "OVERLAY")                                   
			DugiIconLoot.Texture:SetAllPoints()
			DugiIconLoot:SetFrameLevel(11)
			plateFrame.DugiIcon.DugiIconLoot = DugiIconLoot
			
			local DugiIconItem = CreateFrame("Frame", nil, plateFrame) 
			DugiIconItem:Show()
			
			DugiIconItem.Texture = DugiIconItem:CreateTexture(nil, "OVERLAY")                                   
			DugiIconItem.Texture:SetAllPoints()
			DugiIconItem:SetFrameLevel(12)
			plateFrame.DugiIcon.DugiIconItem = DugiIconItem
			
			local ObjectiveText = plateFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
			ObjectiveText:SetFont("GameFontHighlightSmall", 20)
			ObjectiveText:SetJustifyH("LEFT")
			--ObjectiveText:SetPoint("LEFT", plateFrame.DugiIcon, "RIGHT", 5 + objectveTextXPosition, 0)
			ObjectiveText:SetWidth(maxTextWidth)
			ObjectiveText:SetWordWrap(false)
			ObjectiveText:SetText("")
			ObjectiveText:Show()
			plateFrame.DugiIcon.ObjectiveText = ObjectiveText
			
			local CounterText = plateFrame.DugiIcon:CreateFontString(nil, 'OVERLAY', 'SystemFont_Outline_Small')
			CounterText:SetPoint('CENTER', plateFrame.DugiIcon, 0.8, 0)
			CounterText:SetShadowOffset(1, -1)
			CounterText:SetTextColor(1,.82,0)
			CounterText:Show()
			plateFrame.DugiIcon.CounterText = CounterText
		end

		plateFrame.DugiIcon.CounterText:Hide()
		
		if DugisGuideViewer:GuideOn() and showIcon then
		
			plateFrame.DugiIcon:SetSize(30 * objectiveIconSize * iconSize, 30 * objectiveIconSize * iconSize)
			
			local iconSizeForLootAndItem = iconSize
			if iconSizeForLootAndItem > 1.4 then
				iconSizeForLootAndItem = 1.4
			end
			
			plateFrame.DugiIcon.DugiIconLoot:SetSize(15 * lootIconSize * iconSizeForLootAndItem, 15 * lootIconSize * iconSizeForLootAndItem)
			plateFrame.DugiIcon.DugiIconItem:SetSize(15 * itemIconSize * iconSizeForLootAndItem, 15 * itemIconSize * iconSizeForLootAndItem)
			
			local lootIconFinalDistance = 9 + itemIconDistance + iconSize * 8 - 8
			plateFrame.DugiIcon.DugiIconLoot:SetPoint("TOPLEFT", plateFrame.DugiIcon, "BOTTOMRIGHT", -lootIconFinalDistance, lootIconFinalDistance) 
			
			local itemIconFinalDistance = 5 + itemIconDistance + iconSize * 8 - 8
			plateFrame.DugiIcon.DugiIconItem:SetPoint("TOPRIGHT", plateFrame.DugiIcon, "BOTTOMLEFT", itemIconFinalDistance, itemIconFinalDistance)  			
			
			plateFrame.DugiIcon.ObjectiveText:Hide()
		
			if text and text ~= "" then
				--Icon + text
				local textSize = ((DugisGuideViewer:GetDB(DGV_NAMEPLATETEXTSIZE) or 5) / 10) * 12 + 10
				plateFrame.DugiIcon.ObjectiveText:SetFont(plateFrame.DugiIcon.ObjectiveText:GetFont(), textSize)
			
				plateFrame.DugiIcon.ObjectiveText:SetText(text)
				plateFrame.DugiIcon.ObjectiveText:Show()
				
				
				local TextW = plateFrame.DugiIcon.ObjectiveText:GetStringWidth()
				if TextW > maxTextWidth then
					TextW = maxTextWidth
				end
				
				local spaceX = 2
				local iconWidth = plateFrame.DugiIcon:GetWidth()
				local totalWidth = iconWidth + spaceX + TextW
				local iconX 
				
				plateFrame.DugiIcon:ClearAllPoints()
				plateFrame.DugiIcon.ObjectiveText:ClearAllPoints()
				
				if DugisGuideViewer:GetDB(DGV_NAMEPLATES_SHOW_TEXT) then
					iconX = -(totalWidth * 0.5) + plateFrame:GetWidth() * 0.5
				else
					iconX = plateFrame:GetWidth() * 0.5 - iconWidth * 0.5
				end
				
				if DugisGuideViewer:GetDB(DGV_NAMEPLATES_SHOW_ICON) then
					plateFrame.DugiIcon.ObjectiveText:SetPoint("LEFT", plateFrame.DugiIcon, "RIGHT", spaceX, 0)
					plateFrame.DugiIcon.ObjectiveText:SetJustifyH("LEFT")
				else
					plateFrame.DugiIcon.ObjectiveText:SetPoint("BOTTOM", plateFrame, "TOP", 0, 10)
					plateFrame.DugiIcon.ObjectiveText:SetJustifyH("CENTER")
				end
				
				plateFrame.DugiIcon:SetPoint("BOTTOMLEFT", plateFrame, "TOPLEFT", iconX, 15 + objectiveIconYPosition)
				
			else
				--Icon only
				plateFrame.DugiIcon:ClearAllPoints()
				plateFrame.DugiIcon:SetPoint("BOTTOM", plateFrame, "TOP", 0, 15 + objectiveIconYPosition)
			end
			
			if itemsCount and itemsCount > 0 then
				plateFrame.DugiIcon.CounterText:SetText(tostring(itemsCount))
				
				local iconTextSize = iconSize * 12
				
				if itemsCount > 9 then
					iconTextSize = iconTextSize * 0.8
				end
				
				plateFrame.DugiIcon.CounterText:SetFont(plateFrame.DugiIcon.CounterText:GetFont(), iconTextSize)
				plateFrame.DugiIcon.CounterText:Show()
			else
				plateFrame.DugiIcon.CounterText:Hide()
			end
			
			plateFrame.DugiIcon:Hide()
			if showIcon then
				if plateFrame.DugiIcon.CounterText:IsShown() or questExists or questPartCompleted then
					plateFrame.DugiIcon.Texture:SetTexture("Interface/QuestFrame/AutoQuest-Parts")
					plateFrame.DugiIcon.Texture:SetTexCoord(0.30273438, 0.41992188, 0.015625, 0.953125)
				else
					plateFrame.DugiIcon.Texture:SetTexture("Interface/AddOns/DugisGuideViewerZ/Artwork/accept.tga")
					plateFrame.DugiIcon.Texture:SetTexCoord(0,1,0,1)
				end

				plateFrame.DugiIcon:Show()
			end
			
			plateFrame.DugiIcon.DugiIconLoot:Hide()
			
			if lootIcon then
				plateFrame.DugiIcon.DugiIconLoot.Texture:SetTexture("Interface\\Minimap\\TRACKING\\Banker")
				plateFrame.DugiIcon.DugiIconLoot:Show()
			end
			
			if objectIcon then
				plateFrame.DugiIcon.DugiIconLoot.Texture:SetTexture("Interface\\AddOns\\DugisGuideViewerZ\\Artwork\\partial_cog.tga")
				plateFrame.DugiIcon.DugiIconLoot:Show()
			end

			plateFrame.DugiIcon.DugiIconItem:Hide()
			if itemTexture_ then
				plateFrame.DugiIcon.DugiIconItem.Texture:SetTexture(itemTexture_)
				plateFrame.DugiIcon.DugiIconItem.Texture:Show()
				plateFrame.DugiIcon.DugiIconItem:Show()
			end
			
			if not DugisGuideViewer:GetDB(DGV_NAMEPLATES_SHOW_ICON) then
				plateFrame.DugiIcon:Hide()
				plateFrame.DugiIcon.DugiIconItem:Hide()
				plateFrame.DugiIcon.DugiIconLoot:Hide()
			end		

			if not DugisGuideViewer:GetDB(DGV_NAMEPLATES_SHOW_TEXT) then
				plateFrame.DugiIcon.ObjectiveText:Hide()
			end				
		else
			plateFrame.DugiIcon.CounterText:Hide()
			plateFrame.DugiIcon.ObjectiveText:Hide()
			plateFrame.DugiIcon:Hide()
			plateFrame.DugiIcon.DugiIconItem:Hide()
			plateFrame.DugiIcon.DugiIconLoot:Hide()
		end
	end
	
	function self:CurrentSmallFrameStepsInfo()
		--local questIndex = DGU.CurrentQuestIndex or 1
	
		local npcId2firstQuestInfo = {}
		
		if not DGV.quests1L then
			return npcId2firstQuestInfo
		end
		
		--Checking all steps in  small frame
		for questIndex in DGV.IterateRelevantSteps do				
			local questTitle = DGV.quests1L[questIndex]
			
			if not questTitle then
				return npcId2firstQuestInfo
			end
			
			local completed = (DGV:GetQuestState(questIndex) == "C")
			
			if not completed then
				local npcIds = {DGV:ReturnTag("NPC", questIndex)}
				if npcIds then
					for _, npcId in pairs(npcIds) do
						npcId = tonumber(npcId)
						if npcId and not npcId2firstQuestInfo[npcId] then
							npcId2firstQuestInfo[npcId] = {
								questName = questTitle
							}
						end
					end
				end
			end
		end
		
		return npcId2firstQuestInfo
	end	

	function self:OnNAME_PLATE_UNIT_REMOVED(_, plateID)
		ActivePlates[plateID] = nil
	end	
	
	local QuestLogIndex = {}
	function CacheQuestIndexes()
		wipe(QuestLogIndex)
		for i = 1, C_QuestLog.GetNumQuestLogEntries() do
			local info = C_QuestLog.GetInfo(i)
			if not info.isHeader then
				QuestLogIndex[info.title] = i
			end
		end
		
		self:UpdateActivePlatesExtras()
	end

	local function GetQuestProgress(unitID)
		DugiQuestPlateTooltip:SetOwner(WorldFrame, 'ANCHOR_NONE')
		DugiQuestPlateTooltip:SetUnit(unitID)
		
		local questExists -- concatenated glob of quest text
		local objectiveCount = 0
		local questLogIndex -- should generally be set, index usable with questlog functions
		local questID
		local questPartCompleted = false
		for i = 3, DugiQuestPlateTooltip:NumLines() do
			local str = _G['DugiQuestPlateTooltipTextLeft' .. i]
		
			local objectiveText = str and str:GetText()
			
			if not objectiveText then return end

			local progressObjectivesLeft, progressObjectivesTotal = strmatch(objectiveText, '(%d+)/(%d+)(.*)')

			if progressObjectivesLeft then
				if (progressObjectivesTotal and progressObjectivesLeft ~= progressObjectivesTotal) then
					questExists = true
				end

				if progressObjectivesLeft == progressObjectivesTotal then
					questPartCompleted = true
				end
			else
				local index = QuestLogIndex[objectiveText]
				if index then
					questLogIndex = index
				end
			end

			if progressObjectivesLeft then 
				progressObjectivesLeft, progressObjectivesTotal = tonumber(progressObjectivesLeft), tonumber(progressObjectivesTotal)
				return questExists, (progressObjectivesLeft and progressObjectivesTotal) and (progressObjectivesTotal - progressObjectivesLeft) or nil, questLogIndex, questID, questPartCompleted, objectiveText
			end
		end
	end
	
	
	function self:NamePlateInfo2VisualizationData(info)
		if not DugisGuideViewer:GetDB(DGV_NAMEPLATES_TRACKING) 
		or ((not DugisGuideViewer:GetDB(DGV_NAMEPLATES_SHOW_ICON)) and (not DugisGuideViewer:GetDB(DGV_NAMEPLATES_SHOW_TEXT))) then
			return false
		end
	
		local showIcon =  false
		local text = nil
		local iconSize = ((DugisGuideViewer:GetDB(DGV_NAMEPLATEICONSIZE) or 5) / 10) * 1.5 + 0.5
		
		
		local lootIcon = false
		local objectIcon = false
		local itemTexture_ = nil
		
		local leftItems = 0
		
		--Active quest
		local questExists, objectiveCount, questLogIndex, questID, questPartCompleted, objectiveText =  GetQuestProgress(info.plateID)
		leftItems = objectiveCount

		text = objectiveText

		if questExists and (questLogIndex or questID) and QuestUtils_IsQuestWatched(C_QuestLog.GetInfo(questLogIndex).questID) then
				showIcon = true
				if questID then
					for i = 1, 10 do
						local text_, objectiveType, finished = GetQuestObjectiveInfo(questID, i, false)
						
						if not text_ then break end
						if not finished and (objectiveType == 'item' or objectiveType == 'object') then
							if  objectiveType == 'item' then
								lootIcon = true
							end
							
							if  objectiveType == 'object' then
								objectIcon = true
							end
						end
					end
				else
					local questID =  C_QuestLog.GetInfo(questLogIndex).questID
					for i = 1, GetNumQuestLeaderBoards(questLogIndex) or 0 do
						local _, objectiveType, finished = GetQuestObjectiveInfo(questID, i, false)
						if not finished and (objectiveType == 'item' or objectiveType == 'object') then
							if  objectiveType == 'item' then
								lootIcon = true
							end
							
							if  objectiveType == 'object' then
								objectIcon = true
							end
						end
					end
				end
				
				if questLogIndex then
					local link, itemTexture, _, _ = GetQuestLogSpecialItemInfo(questLogIndex)
					if link and itemTexture then
						itemTexture_ = itemTexture
					end
				end
		else

			local namePlateUnitId = DGV:GuidToNpcId(info.unitGUID)

			--Checking further quests in current guide
			local npcId2firstQuestInfo = self:CurrentSmallFrameStepsInfo()
			namePlateUnitId = tonumber(namePlateUnitId)
			
			if namePlateUnitId then
				local firstQuestInfo = npcId2firstQuestInfo[namePlateUnitId]
				if firstQuestInfo then
					showIcon = true
					--objective progress is needed
					--text = firstQuestInfo.questName
					leftItems = leftItems or 0
					lootIcon = false
					itemTexture_ = nil
					objectIcon = false
				end
			end
		end
			
		return  showIcon, text, iconSize, leftItems, lootIcon, itemTexture_, objectIcon, questExists, questPartCompleted
	end
	
	local UpdateActivePlatesExtras_lastTime
	function self:UpdateActivePlatesExtras(plateID)
		for _, info in pairs(ActivePlates) do
			if plateID == nil or plateID == info.plateID  then
				NamePlate:SetDugiNameplate(info.frame, self:NamePlateInfo2VisualizationData(info))
			end
		end
	end
	
	function self:QUEST_LOG_UPDATE()
		CacheQuestIndexes()
	end

	function self:UNIT_QUEST_LOG_CHANGED(unitID)
		if unitID == 'player' then
			CacheQuestIndexes()
		end
	end

	local lastAmountOfWatched = nil
	function self:OnObjectiveTracker_Update()
		if C_QuestLog.GetNumQuestWatches() ~= lastAmountOfWatched then
			NamePlate:UpdateActivePlatesExtras()
			lastAmountOfWatched = C_QuestLog.GetNumQuestWatches()
		end
	end

	function self:Load()
	end

	function self:Unload()
		NamePlate:UpdateActivePlatesExtras()
	end

	CacheQuestIndexes()
end

