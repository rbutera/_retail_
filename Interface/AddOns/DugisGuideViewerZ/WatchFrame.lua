local DGV = DugisGuideViewer
if not DGV then return end

local WF = DGV:RegisterModule("DugisWatchFrame")
WF.essential = true

local smallAndObjectiveFrameOneBkg = true

ObjectiveFrameDugiBkg = CreateFrame("Frame", "ObjectiveFrameDugiBkg", UIParent, "BackdropTemplate")
ObjectiveFrameDugiBkg:SetFrameStrata("BACKGROUND")
ObjectiveFrameDugiBkg:SetFrameLevel(8)
ObjectiveFrameDugiBkg:SetWidth(52)
ObjectiveFrameDugiBkg:SetHeight(52)
ObjectiveFrameDugiBkg:SetPoint("CENTER", 0, 220)
ObjectiveFrameDugiBkg:Hide()

ObjectiveFrameDugiBkg:EnableMouse(true)

--Variables to store Objective Tracker Frame position in floating mode.
WF.objectiveTrackerX, WF.objectiveTrackerY = nil ,nil

local function GetSmallFrame()
	if DugisGuideViewer.Modules.SmallFrame and DugisSmallFrameContainer and DugisGuideViewer.chardb.EssentialsMode ~= 1 then
		return DugisGuideViewer.Modules.SmallFrame
	end
end

function DGV.IsSmallFrameCollapsed()
	local SmallFrame = GetSmallFrame()
	if SmallFrame then 
		return SmallFrame.collapseHeader:IsShown() and SmallFrame.collapsed
	end
end

local function IsObjectiveTrackerVisible()
	return ObjectiveTrackerFrame.HeaderMenu:IsVisible()  and not  ObjectiveTrackerFrame.collapsed  and ObjectiveFrameDugiBkg.initialized
end

function DGV.GetMultibarMargin()
	local marginRight = 10
	if MultiBarLeft:IsVisible() then
		marginRight = MultiBarLeft:GetWidth() * 2
	else
		if MultiBarRight:IsVisible() then
			marginRight = MultiBarRight:GetWidth()
		end
	end

	if DugisGuideViewer.luiloaded then
		marginRight = 35
	end		

	if LuaUtils:IsElvUIInstalled() then
		marginRight = marginRight + 30
	end

	return marginRight
end

ObjectiveFrameDugiBkg:HookScript("OnMouseDown", function()
	--Todo: check if mouse is in ObjectiveTrackerFrame indeed and if ObjectiveTrackerFrame is shown
	local SmallFrame = GetSmallFrame()
	
	if DugisGuideViewer:UserSetting(DGV_MOVEWATCHFRAME) and not DugisGuideViewer:UserSetting(DGV_DISABLEWATCHFRAMEMOD) then
		if not DGV:IsGoldMode() or DGV:IsSmallFrameFloating() then
			local frame = ObjectiveTrackerFrame
			frame.startMouseX, frame.startMouseY = GetCursorPosition()
			frame.startFrameX, frame.startFrameY = GUIUtils:GetRealFeamePos(frame)
			frame.startHeaderFrameX, frame.startHeaderFrameY = GUIUtils:GetRealFeamePos(ObjectiveTrackerFrame.HeaderMenu)
			frame.isDragging = true
		else
			SmallFrame.OnDragStart()
		end
	end
end)

ObjectiveFrameDugiBkg:HookScript("OnMouseUp", function()
	local SmallFrame = GetSmallFrame()
	
	if not DGV:IsGoldMode() or DGV:IsSmallFrameFloating() then
		local frame = ObjectiveTrackerFrame
		frame.isDragging = false
	else
		local SmallFrame = GetSmallFrame()
		SmallFrame.OnDragStop()
	end
end)

local function ObjectiveFrameDugiBkgDrag()
	if DugisGuideViewer:UserSetting(DGV_DISABLEWATCHFRAMEMOD) or DGV:IncompatibleAddonLoaded() or DGV:ObjectiveTrackerOriginal() then return end

	local frame = ObjectiveTrackerFrame
	
	if frame.isDragging then
		if not IsMouseButtonDown("LeftButton") then
			frame.isDragging = false
		end
	end
	
	if frame.isDragging and not DGV:ObjectiveTrackerOriginal() then
		local SmallFrame = GetSmallFrame()
		if not DGV:IsGoldMode() or DGV:IsSmallFrameFloating() then
			local currentMouseX, currentMouseY = GetCursorPosition()
			local deltaMouseX, deltaMouseY = currentMouseX - frame.startMouseX, currentMouseY - frame.startMouseY
			local newBkgFrameX, newBkgFrameY = frame.startFrameX + deltaMouseX, frame.startFrameY + deltaMouseY
			local newHeaderFrameX, newHeaderFrameY = frame.startHeaderFrameX + deltaMouseX, frame.startHeaderFrameY + deltaMouseY

			if newBkgFrameX < 0 then  newBkgFrameX = 0 end
			if newBkgFrameY > 0 then  newBkgFrameY = 0 end
			if newBkgFrameX > (GetScreenWidth() - 200) then  newBkgFrameX = GetScreenWidth() - 200 end
			if newBkgFrameY < (-GetScreenHeight() + 200) then  newBkgFrameY = -GetScreenHeight() + 200 end
			
			ObjectiveTrackerFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", newBkgFrameX,  newBkgFrameY)
			ObjectiveTrackerFrame.HeaderMenu:ClearAllPoints()
			ObjectiveTrackerFrame.HeaderMenu:SetPoint("TOPLEFT", UIParent, "TOPLEFT", newHeaderFrameX,  newHeaderFrameY)
			
			WF.objectiveTrackerX, WF.objectiveTrackerY = GUIUtils:GetRealFeamePos(ObjectiveTrackerFrame)
		end
	end
end

local oldObjectiveTrackerOriginal

DGV.smallFrameExtendModeChanged = false
WF.OnFrameUpdate = function()
	if not WF.initialized then
		return
	end
	
	if oldObjectiveTrackerOriginal ~= nil 
	and oldObjectiveTrackerOriginal ~= DGV:ObjectiveTrackerOriginal()
	and DGV:ObjectiveTrackerOriginal() then
		WF:OnBeforeObjectiveTrackerOriginal()
	end
	oldObjectiveTrackerOriginal = DGV:ObjectiveTrackerOriginal()

	
	if not DGV:GuideOn() then
		ObjectiveFrameDugiBkg:Hide()
		if SmallFrameBkg then
			SmallFrameBkg:Hide()
			if DGV.SmallFrame.header then
				DGV.SmallFrame.header:Hide()
				DGV.SmallFrame.collapseHeader:Hide()
			end
		end
		return
	end
	
	local width = 300
	
	local SmallFrame = GetSmallFrame()
	
	if SmallFrame and DugisSmallFrameContainer and not DGV:IsGoldMode() then
		if DGV.SmallFrame.header then
			DGV.SmallFrame.header:Hide()
		end
		DugisSmallFrameContainer:Hide()
	end
	
	if SmallFrame and (
		(DugisSmallFrameContainer:GetTop() == nil and not DugisGuideViewer:UserSetting(DGV_SMALL_FRAME_EXTEND_UP))
		or 
		(DugisSmallFrameContainer:GetBottom() == nil and DugisGuideViewer:UserSetting(DGV_SMALL_FRAME_EXTEND_UP))
		or DGV.smallFrameExtendModeChanged) then
		local initialY = -200
		local initialX = GetScreenWidth() - 350

		DugisSmallFrameContainer:ClearAllPoints()
		if DugisGuideViewer:UserSetting(DGV_SMALL_FRAME_EXTEND_UP) then
			if GetScreenHeight() then
				local bottomY = GetScreenHeight() - (-initialY) - (DugisSmallFrameContainer:GetHeight() or 0)
				DugisSmallFrameContainer:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", initialX, bottomY)
			end
		else
			DugisSmallFrameContainer:SetPoint("TOPLEFT", UIParent, "TOPLEFT", initialX, initialY)
		end

		if DGV.UpdateSmallFrame then
			DGV.UpdateSmallFrame(false, true)
		end

		DGV.smallFrameExtendModeChanged = false
	end
	
	--Setting original Objective Tracker/small frame position (below minimap) in case SmallFrame/Objective frame is not floating
	if not DugisGuideViewer:UserSetting(DGV_MOVEWATCHFRAME) then
	
		--Checking space for action bars
		local marginRight = DGV.GetMultibarMargin() or 0
		local marginTop = 0

		if LuaUtils:IsElvUIInstalled() then
			marginTop = marginTop - 40
		end
		
		local top = MinimapCluster:GetHeight()
		
		if DugisGuideViewer.luiloaded then
			top = top  + 50
		end
		
		--Adjustment for Titan Panel addon Top bars 
		if Titan_Bar__Display_Bar2 and Titan_Bar__Display_Bar2:GetHeight() > 0 then
			marginTop = marginTop - 48
		elseif Titan_Bar__Display_Bar and Titan_Bar__Display_Bar:GetHeight() > 0 then
			marginTop = marginTop - 24				
		end		
		
		if not DGV:IsGoldMode() or DGV:IsSmallFrameFloating() then
			if not DGV:IncompatibleAddonLoaded() and not DGV:ObjectiveTrackerOriginal() then
				if DurabilityFrame and DurabilityFrame:IsVisible() then
					marginTop = -DurabilityFrame:GetHeight() - 10
				end
				
				if VehicleSeatIndicator and VehicleSeatIndicator:IsVisible() then
					marginTop = -VehicleSeatIndicator:GetHeight() - 10
				end
								
				if not DugisGuideViewer:UserSetting(DGV_WATCHFRAMEBORDER) then
					ObjectiveTrackerFrame:ClearAllPoints()
					if DugisGuideViewer:UserSetting(DGV_SMALL_FRAME_EXTEND_UP) then
						ObjectiveTrackerFrame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", GetScreenWidth() - width - marginRight - 1, 150)
					else
						ObjectiveTrackerFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", GetScreenWidth() - width - marginRight - 1, -top + marginTop)
					end
				end
			end
		else
			if DurabilityFrame and DurabilityFrame:IsVisible() then
				marginTop = -DurabilityFrame:GetHeight() + 5
			end
			
			if VehicleSeatIndicator and VehicleSeatIndicator:IsVisible() then
				marginTop = -VehicleSeatIndicator:GetHeight() + 5
			end
			
			if DugisGuideViewer:IsModuleRegistered("SmallFrame") then 
				
				if DugisGuideViewer:UserSetting(DGV_WATCHFRAMEBORDER) then
					if DugisGuideViewer:UserSetting(DGV_SMALL_FRAME_EXTEND_UP) then
						local dH = GetWorldQuestRealHeight()

						if DGV.GetBottomElement() == ObjectiveTrackerBlocksFrame then
							dH = 0
						end

						LuaUtils.ClearAndSetPoint(DugisSmallFrameContainer, "BOTTOMLEFT", UIParent, "BOTTOMLEFT"
						, GetScreenWidth() - DugisSmallFrameContainer:GetWidth() - marginRight - 5, 110 + dH) 
					else
						LuaUtils.ClearAndSetPoint(DugisSmallFrameContainer, "TOPLEFT", UIParent, "TOPLEFT", GetScreenWidth() - DugisSmallFrameContainer:GetWidth() - marginRight - 5, -top + marginTop + 15) 
					end
				else
					if DugisGuideViewer:UserSetting(DGV_SMALL_FRAME_EXTEND_UP) then
						LuaUtils.ClearAndSetPoint(DugisSmallFrameContainer, "BOTTOMLEFT", UIParent, "BOTTOMLEFT"
						, GetScreenWidth() - DugisSmallFrameContainer:GetWidth() - marginRight - 1, 350) 
					else
						LuaUtils.ClearAndSetPoint(DugisSmallFrameContainer, "TOPLEFT", UIParent, "TOPLEFT", GetScreenWidth() - DugisSmallFrameContainer:GetWidth() - marginRight - 1, -top + marginTop + 15) 
					end
				end				
			end
		end
	end
	
	local left, top = 0,0
	
	if DGV:IsGoldMode() and SmallFrame then
		 left, top = GUIUtils:GetRealFeamePos(DugisSmallFrameContainer)
	end
	
	local leftTracker, topTracker = GUIUtils:GetRealFeamePos(ObjectiveTrackerFrame)
	
	if not DGV:IncompatibleAddonLoaded() and not DGV:ObjectiveTrackerOriginal() then
		if not DGV:IsGoldMode() or DGV:IsSmallFrameFloating() then
			ObjectiveFrameDugiBkg:ClearAllPoints()

			if DugisGuideViewer:UserSetting(DGV_MOVEWATCHFRAME) and WF.objectiveTrackerX then
				ObjectiveTrackerFrame:ClearAllPoints()

				if WF.objectiveTrackerY > 0 then
					WF.objectiveTrackerY = -WF.objectiveTrackerY
				end

				if WF.objectiveTrackerX < 0 then
					WF.objectiveTrackerX = -WF.objectiveTrackerX
				end

				--Setting ObjectiveTrackerFrame to the current one (WF.objectiveTrackerX) for floating mode
				ObjectiveFrameDugiBkg:SetPoint("TOPLEFT", UIParent, "TOPLEFT", WF.objectiveTrackerX - 40,  WF.objectiveTrackerY + 15)
				ObjectiveTrackerFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", WF.objectiveTrackerX - 0,  WF.objectiveTrackerY)
			else
				--Setting ObjectiveTrackerFrame background position to be the same ObjectiveTrackerFrame
				WF:RestoreOriginalObjectiveTrackerPosition()
				--Storing current objective tracker frame position to be used in the future.
				WF.objectiveTrackerX, WF.objectiveTrackerY = leftTracker, topTracker
			end
			
			ObjectiveTrackerFrame:SetHeight(GetScreenHeight())
		else
			if SmallFrame then
                local height =  DugisSmallFrameContainer:GetHeight()
				ObjectiveFrameDugiBkg:ClearAllPoints()
				
                if DGV.shouldUpdateObjectiveTracker then 
					ObjectiveTrackerFrame:ClearAllPoints()

					local trackerTop = top - height
					local trackerLeft = left + 40

					if trackerTop > 0 then
						trackerTop = -trackerTop
					end

					if trackerLeft < 0 then
						trackerLeft = -trackerLeft
					end

                    ObjectiveTrackerFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", trackerLeft, trackerTop)
                    ObjectiveTrackerFrame:SetHeight(GetScreenHeight())
                end
                ObjectiveFrameDugiBkg:SetPoint("TOPLEFT", UIParent, "TOPLEFT", left,  top - height + 10)
			end
			--Storing current objective tracker frame position to be used the future - for example in the essential mode.
			WF.objectiveTrackerX, WF.objectiveTrackerY = GUIUtils:GetRealFeamePos(ObjectiveTrackerFrame)
            
		end
	end
	
	if DGV:IsGoldMode() and SmallFrame then
		width = DugisSmallFrameContainer:GetWidth()
	end
		
	if not DGV:IncompatibleAddonLoaded() and not DGV:ObjectiveTrackerOriginal() then
		ObjectiveFrameDugiBkg:SetWidth(width)
		
        local realH = GetWorldQuestRealHeight()
		if realH then
			ObjectiveFrameDugiBkg:SetHeight(realH + 30)
		end
	end
	
	ObjectiveFrameDugiBkg.initialized = true
	
	
	if DGV:IsGoldMode() and SmallFrame then
		--SmallFrameBkg
		SmallFrameBkg:SetPoint("TOPLEFT", UIParent, "TOPLEFT", left,  top)
		SmallFrameBkg:SetWidth(width)
		
		if  smallAndObjectiveFrameOneBkg and not DGV:IsSmallFrameFloating() then 
			local _, topTracker = GUIUtils:GetRealFeamePos(ObjectiveFrameDugiBkg)
			local heightTracker = ObjectiveFrameDugiBkg:GetHeight()
			local bottomTracker = topTracker - heightTracker
			local heightSharedBkg = 0
			
			if IsObjectiveTrackerVisible() then
				heightSharedBkg = top - bottomTracker
			else
				heightSharedBkg = DugisSmallFrameContainer:GetHeight()
			end
			
			SmallFrameBkg:SetHeight(heightSharedBkg)
		else
			SmallFrameBkg:SetHeight(DugisSmallFrameContainer:GetHeight())
		end
		
		--Visibility
		if DugisSmallFrameContainer:IsVisible() and not DGV.IsSmallFrameCollapsed() then
			SmallFrameBkg:Show()
		else
			SmallFrameBkg:Hide()
		end
	else
		if SmallFrameBkg then
			SmallFrameBkg:Hide()
		end
	end
	
	ObjectiveFrameDugiBkgDrag()
	
	if DGV:IsGoldMode() and SmallFrame and SmallFrame.header then
		--Updating small frame header positioning
		if DugisSmallFrameContainer:IsVisible() and not DGV.IsSmallFrameCollapsed() then
			SmallFrame.header:Show()

			if LuaUtils:IsElvUISkinEnabled("objectiveTracker") then
				SmallFrame.header.Background:Hide()
			else
				SmallFrame.header.Background:Show()
			end
			
			SmallFrame.header:SetPoint("TOPLEFT", UIParent, "TOPLEFT", left + 30,  top - 15)
			SmallFrame.header:EnableMouse(false)
			--SmallFrame.header.Text:EnableMouse(false)

		else
			SmallFrame.header:Hide()
		end
	end
	---
	if ObjectiveFrameDugiBkg and not DGV:IncompatibleAddonLoaded() and not DGV:ObjectiveTrackerOriginal() then
		local shouldBeHidden = not ObjectiveTrackerFrame.HeaderMenu:IsVisible()  or ObjectiveTrackerFrame.collapsed  or not ObjectiveFrameDugiBkg.initialized 
		
		if DGV.shouldUpdateObjectiveTracker then
			if shouldBeHidden then
				ObjectiveFrameDugiBkg:Hide()
			else
				ObjectiveFrameDugiBkg:Show()
			end
		end
		
		if shouldBeHidden
		or (smallAndObjectiveFrameOneBkg and (DGV:IsGoldMode() and not DGV:IsSmallFrameFloating()) )then 
			ObjectiveFrameDugiBkg:SetAlpha(0)
		else
			ObjectiveFrameDugiBkg:SetAlpha(1)
		end
	end
	
	--Updating header menu ( [V] button positon)
	if DGV.shouldUpdateObjectiveTracker then 
		if not DGV:IncompatibleAddonLoaded() and not DGV:ObjectiveTrackerOriginal() then
			ObjectiveTrackerFrame.HeaderMenu:ClearAllPoints()
			if not DGV:IsGoldMode() or DGV:IsSmallFrameFloating() then
				local width = ObjectiveFrameDugiBkg:GetWidth()
				if DugisGuideViewer:UserSetting(DGV_MOVEWATCHFRAME) then 
					ObjectiveTrackerFrame.HeaderMenu:SetPoint("TOPLEFT", UIParent, "TOPLEFT", leftTracker + width - 60,  topTracker)	
				else
					ObjectiveTrackerFrame.HeaderMenu:SetPoint("TOPLEFT", UIParent, "TOPLEFT", leftTracker + width - 65,  topTracker - 3)					
				end
			else
				ObjectiveTrackerFrame.HeaderMenu:SetPoint("TOPLEFT", UIParent, "TOPLEFT", left + width - 20,  top - 15)	
			end
		end
		
		if SmallFrameBkg then
			SmallFrameBkg:SetAlpha(1)
		end
	end
	
	-----Model viewer
	-- MV.Frame.moving
	if DugisGuideViewer.Modules.ModelViewer then
		local MV = DugisGuideViewer.Modules.ModelViewer
		if MV.Frame then
			local width = MV.Frame:GetWidth()
				if not InCombatLockdown() then
				     if not MV.moving then
                        if DGV.chardb.ModelViewer.areRelativeCoords then
                            if DGV.chardb.ModelViewer.pos_x == false then
                                DGV.chardb.ModelViewer.pos_x = 7
                            end
                            
                            MV.Frame:ClearAllPoints()
                            MV.Frame:SetPoint(DGV.chardb.ModelViewer.point or "TOPRIGHT",
                            SmallFrameBkg ,
                            DGV.chardb.ModelViewer.relativePoint or "TOPLEFT", 
                            DGV.chardb.ModelViewer.pos_x, 
                            DGV.chardb.ModelViewer.pos_y)
                        end
					end
				end
		end
	end
	
	--Checking if only small frame is visible. If that is the case then an extra header button should be shown
	if SmallFrame and SmallFrame.UpdateProgressBarPosition then
		SmallFrame.UpdateProgressBarPosition()
	end
end

function WF:OnBeforeEssentialModeActive(cancelButtonPressed)
	local SmallFrame = GetSmallFrame()
		
	if SmallFrame and not DGV:IsSmallFrameFloating() and not cancelButtonPressed then
		WF.objectiveTrackerX, WF.objectiveTrackerY = GUIUtils:GetRealFeamePos(DugisSmallFrameContainer)
		WF.objectiveTrackerX, WF.objectiveTrackerY = WF.objectiveTrackerX + 40 , WF.objectiveTrackerY - 15
	end
end

local lastTime = GetTime()
function WF:RestoreOriginalObjectiveTrackerPosition()
	if (GetTime() - lastTime) < 0.5 then
		return
	end

	lastTime = GetTime()

	local marginX = DGV.GetMultibarMargin()
	ObjectiveFrameDugiBkg:SetPoint("TOPLEFT", ObjectiveTrackerFrame, "TOPLEFT", -47, 10)

	local newX = -22 - marginX

	ObjectiveTrackerFrame:ClearAllPoints()
	
	ObjectiveTrackerFrame:SetPoint("TOPRIGHT", MinimapCluster, "BOTTOMRIGHT", newX, 3)
	ObjectiveTrackerFrame:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -10, 85)
end

function WF:OnBeforePluginOff()
	if not DGV:IncompatibleAddonLoaded() then
		WF:RestoreOriginalObjectiveTrackerPosition()
	end
end

function WF:OnBeforeObjectiveTrackerOriginal()
	WF:RestoreOriginalObjectiveTrackerPosition()
end

function WF:UpdateWatchFrameMovable()
	if DugisGuideViewer:UserSetting(DGV_DISABLEWATCHFRAMEMOD) then 
		ObjectiveFrameDugiBkg:EnableMouse(false)
	else 
		ObjectiveFrameDugiBkg:EnableMouse(true)
	end
		
	local SmallFrame = GetSmallFrame()
		
	if SmallFrame then
		DugisSmallFrameContainer:EnableMouse(not DugisGuideViewer:UserSetting(DGV_LOCKSMALLFRAME))
		SmallFrame.collapseHeader:EnableMouse(not DugisGuideViewer:UserSetting(DGV_LOCKSMALLFRAME))
		if DugisSmallFrameStatus1 then
			DugisSmallFrameStatus1:EnableMouse(not DugisGuideViewer:UserSetting(DGV_LOCKSMALLFRAME))
		end
	end
end   

function WF:Initialize()  
	if WF.initialized then return end
	WF.initialized = true
  
    function WF:ResetWatchFrameMovable()
        WF:DelayUpdate()
	end    
    

	local flashGroup, flash
	local L, RegisterFunctionReaction, RegisterMemberFunctionReaction = DugisLocals, DGV.RegisterFunctionReaction, DGV.RegisterMemberFunctionReaction
	
	function WF:ShouldModWatchFrame(forceLoaded)
		if forceLoaded then return true end
		return (WF.loaded or forceLoaded)
	end

	function WF:Reset()
	end
	
	function GetLastWorldQuestBlock()
		return WORLD_QUEST_TRACKER_MODULE.lastBlock
    end
    
	local function GetBottomElement()
		if GetNumTrackedAchievements() > 0 then 
			return ACHIEVEMENT_TRACKER_MODULE.lastBlock
		elseif C_Scenario.GetInfo() then 
            if ObjectiveTrackerBlocksFrame.QuestHeader.module.lastBlock == nil then
                return ACHIEVEMENT_TRACKER_MODULE.lastBlock
            end
			return ObjectiveTrackerBlocksFrame.QuestHeader.module.lastBlock
        elseif GetLastWorldQuestBlock() then
            return GetLastWorldQuestBlock()
        else
			local frame = BONUS_OBJECTIVE_TRACKER_MODULE.firstBlock or ObjectiveTrackerBlocksFrame.QuestHeader.module.lastBlock or ObjectiveTrackerBlocksFrame
			return BONUS_OBJECTIVE_TRACKER_MODULE.firstBlock or ObjectiveTrackerBlocksFrame.QuestHeader.module.lastBlock or ObjectiveTrackerBlocksFrame
		end
	end

	DGV.GetBottomElement = GetBottomElement
	
	function GetWorldQuestRealHeight()
		local lastBlock = GetBottomElement()
		if lastBlock then
			local height = lastBlock:GetHeight()

			local top = (GetScreenHeight()  - (lastBlock:GetTop() or 0))
			local ObjectiveTrackerFrame_top = (GetScreenHeight()  - (ObjectiveTrackerFrame:GetTop() or 0))
			local realHeight = top -  ObjectiveTrackerFrame_top + height
			return realHeight
		end
	end
	
	local firstTime = true
	function WF:DelayUpdate()
		if DugisGuideViewer:IsModuleRegistered("SmallFrame") then 
			DGV:OnWatchFrameUpdate() 
			if firstTime then
				LuaUtils:Delay(2, function()
					DGV:OnWatchFrameUpdate() 
				end)
			end
			firstTime = false
		else
			LuaUtils:Delay(2, function()
				if DugisGuideViewer:IsModuleRegistered("SmallFrame") then 
					DGV:OnWatchFrameUpdate() 
				end
			end)
		end
	end

	local objectiveTrackerUpdateReaction--, manageFramePositionsReaction
	function WF:Load()
		objectiveTrackerUpdateReaction = RegisterFunctionReaction("ObjectiveTracker_Update", nil, function()
			WF.DelayUpdate()
			if DugisGuideViewer.NamePlate and DugisGuideViewer.NamePlate.OnObjectiveTracker_Update then
				DugisGuideViewer.NamePlate:OnObjectiveTracker_Update()
			end
		end)
	end

	function WF:Unload()
		objectiveTrackerUpdateReaction:Dispose()
	end
	
	if IsAddOnLoaded("DBM-Core") and DugisGuideViewer:GuideOn() and DugisGuideViewer.chardb.EssentialsMode ~= 1 then 
		hooksecurefunc(DBM, "StartCombat", function()
			DGV:OnDBMUpdate()
		end)	
		hooksecurefunc(DBM, "EndCombat", function()
			DGV:OnDBMUpdate()
		end)		
	end
end