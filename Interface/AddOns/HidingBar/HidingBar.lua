local addon, L = ...
local config, UIParent = _G[addon.."ConfigAddon"], UIParent
local hidingBar = CreateFrame("FRAME", addon.."Addon")
local cover = CreateFrame("FRAME")
cover:Hide()
cover:EnableMouse(true)
local fTimer = CreateFrame("FRAME")
local btnSettingsMeta = {__index = function(self, key)
	self[key] = {tstmp = 0}
	return self[key]
end}
hidingBar.createdButtons, hidingBar.minimapButtons, hidingBar.mixedButtons = {}, {}, {}
hidingBar.bars, hidingBar.barByName = {}, {}
local createdButtonsByName, btnSettings = {}, {}
local matchName = addon.."%d+$"
hidingBar.cb = LibStub("CallbackHandler-1.0"):New(hidingBar, "on", "off")
local ldb = LibStub("LibDataBroker-1.1")
local ldbi, ldbi_ver = LibStub("LibDBIcon-1.0")
local MSQ = LibStub("Masque", true)


local ignoreFrameList = {
	["GameTimeFrame"] = true,
	["QueueStatusMinimapButton"] = true,
	["HelpOpenTicketButton"] = true,
	["HelpOpenWebTicketButton"] = true,
	["MinimapBackdrop"] = true,
	["GarrisonLandingPageMinimapButton"] = true,
	["MinimapZoomIn"] = true,
	["MinimapZoomOut"] = true,
	["MiniMapWorldMapButton"] = true,
	["MiniMapMailFrame"] = true,
	["MiniMapTracking"] = true,
}


local function void() end
local function enter(btn)
	local bar = btn:GetParent()
	if bar:IsShown() then
		bar.isMouse = true
		bar:enter()
	end
end
local function leave(btn)
	local bar = btn:GetParent()
	if bar:IsShown() then
		bar.isMouse = false
		bar:leave()
	end
end


if MSQ then
	hidingBar.MSQ_Button = MSQ:Group(addon, L["DataBroker Buttons"], "DataBroker")
	hidingBar.MSQ_Button:SetCallback(function()
		for btn in pairs(hidingBar.MSQ_Button.Buttons) do
			hidingBar:MSQ_CoordUpdate(btn)
		end
		for _, bar in ipairs(hidingBar.bars) do
			bar:enter()
			bar:leave(math.max(1.5, bar.config.hideDelay))
		end
	end)


	hidingBar.MSQ_Button_Data = {}
	hidingBar.MSQ_MButton = MSQ:Group(addon, L["Minimap Buttons"], "MinimapButtons")
	hidingBar.MSQ_MButton:SetCallback(function()
		for btn in pairs(hidingBar.MSQ_MButton.Buttons) do
			hidingBar:MSQ_Button_Update(btn)
			hidingBar:MSQ_CoordUpdate(btn)
		end
		for _, bar in ipairs(hidingBar.bars) do
			bar:enter()
			bar:leave(math.max(1.5, bar.config.hideDelay))
		end
	end)


	hidingBar.MSQ_CGButton = MSQ:Group(addon, L["Manually Grabbed Buttons"], "CGButtons")
	hidingBar.MSQ_CGButton:SetCallback(function()
		for btn in pairs(hidingBar.MSQ_CGButton.Buttons) do
			hidingBar:MSQ_Button_Update(btn)
			hidingBar:MSQ_CoordUpdate(btn)
		end
		for _, bar in ipairs(hidingBar.bars) do
			bar:enter()
			bar:leave(math.max(1.5, bar.config.hideDelay))
		end
	end)


	local prevCoord, curCoord, MSQ_Coord = {}, {}, {}
	function hidingBar:MSQ_CoordUpdate(btn)
		local icon = btn.__MSQ_Icon
		if not icon then return end
		if not MSQ_Coord[icon] then MSQ_Coord[icon] = {} end
		for i = 1, 8 do
			MSQ_Coord[icon][i] = curCoord[icon][i]
		end
		if prevCoord[icon] then
			icon:SetTexCoord(unpack(prevCoord[icon]))
		else
			curCoord[icon] = nil
		end
	end


	function hidingBar:setTexCurCoord(icon, ULx, ULy, LLx, LLy, URx, URy, LRx, LRy)
		if not LRy then
			ULy, LLx, URx, URy, LRx, LRy = LLx, ULx, ULy, LLx, ULy, LLy
		end
		if curCoord[icon] then
			if not prevCoord[icon] then prevCoord[icon] = {} end
			for i = 1, 8 do
				prevCoord[icon][i] = curCoord[icon][i]
			end
		else
			curCoord[icon] = {}
		end
		curCoord[icon][1] = ULx
		curCoord[icon][2] = ULy
		curCoord[icon][3] = LLx
		curCoord[icon][4] = LLy
		curCoord[icon][5] = URx
		curCoord[icon][6] = URy
		curCoord[icon][7] = LRx
		curCoord[icon][8] = LRy
		return ULx, ULy, LLx, LLy, URx, URy, LRx, LRy
	end


	hidingBar.setTexCoord = function(self, ...)
		local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy = hidingBar:setTexCurCoord(self, ...)

		if MSQ_Coord[self] then
			local mULx, mULy, mLLx, mLLy, mURx, mURy, mLRx, mLRy = unpack(MSQ_Coord[self])
			local top = URx - ULx
			local right = LRy - URy
			local bottom = LRx - LLx
			local left = LLy - ULy
			ULx = ULx + mULx * top
			ULy = ULy + mULy * left
			LLx = LLx + mLLx * bottom
			LLy = ULy + mLLy * left
			URx = ULx + mURx * top
			URy = URy + mURy * right
			LRx = LLx + mLRx * bottom
			LRy = URy + mLRy * right
		end

		config.noIcon.SetTexCoord(self, ULx, ULy, LLx, LLy, URx, URy, LRx, LRy)
	end


	function hidingBar:MSQ_Button_Update(btn)
		if not btn.__MSQ_Enabled then return end
		local data = self.MSQ_Button_Data[btn]
		if data then
			if data._Border then
				data._Border:Hide()
			end
			if data._Background then
				data._Background:Hide()
			end
			if data._Normal then
				data._Normal.SetAtlas = function(_, atlas)
					data._Icon:SetAtlas(atlas)
				end
				data._Normal.SetTexture = function(_, texture)
					if texture then
						data._Icon:SetTexture(texture)
					end
				end
				data._Normal.SetTexCoord = function(_, ...)
					data._Icon:SetTexCoord(...)
				end
				data._Normal = nil
			end
			if data._Pushed then
				data._Pushed:SetAlpha(0)
				data._Pushed:SetTexture()
				data._Pushed.SetAlpha = void
				data._Pushed.SetAtlas = void
				data._Pushed.SetTexture = void
			end
		end
	end


	function hidingBar:setMButtonRegions(btn, iconCoords, MSQ_Group)
		local name, texture, tIsString, layer, border, background, icon, highlight, normal

		for _, region in ipairs({btn:GetRegions()}) do
			if region:GetObjectType() == "Texture" then
				name = region:GetDebugName():lower()
				texture = region:GetTexture()
				tIsString = type(texture) == "string"
				if tIsString then texture = texture:lower() end
				layer = region:GetDrawLayer()
				if texture == 136430 or tIsString and texture:find("minimap-trackingborder", 1, true) then
					border = region
				end
				if texture == 136467 or tIsString and texture:find("ui-minimap-background", 1, true) or name:find("background", 1, true) then
					background = region
				end
				if name:find("icon", 1, true) or not icon and tIsString and texture:find("icon", 1, true) then
					icon = region
				end
				if layer == "HIGHLIGHT" or not highlight and name:find("highlight", 1, true) then
					highlight = region
				end
			end
		end

		normal = btn:GetNormalTexture()
		if normal and (not icon or icon ~= btn.icon) then
			icon = btn:CreateTexture(nil, "BACKGROUND")
			local atlas = normal:GetAtlas()
			if atlas then
				icon:SetAtlas(atlas)
			else
				icon:SetTexture(normal:GetTexture())
				icon:SetTexCoord(normal:GetTexCoord())
			end
			icon:SetVertexColor(normal:GetVertexColor())
			icon:SetSize(normal:GetSize())
			for i = 1, normal:GetNumPoints() do
				icon:SetPoint(normal:GetPoint(i))
			end
			self.HookScript(btn, "OnMouseDown", function() icon:SetScale(.9) end)
			self.HookScript(btn, "OnMouseUp", function() icon:SetScale(1) end)
		else
			normal = nil
		end

		if not highlight then
			btn:SetHighlightTexture(" ")
			highlight = btn:GetHighlightTexture()
			highlight:SetTexture()
		end

		if icon then
			if iconCoords then
				self:setTexCurCoord(icon, unpack(iconCoords))
			else
				self:setTexCurCoord(icon, icon:GetTexCoord())
			end
			icon.SetTexCoord = self.setTexCoord
		else
			background = nil
		end

		local pushed = btn:GetPushedTexture()
		if border or background or pushed or normal then
			self.MSQ_Button_Data[btn] = {
				_Border = border,
				_Background = background,
				_Pushed = pushed,
			}
			if normal then
				self.MSQ_Button_Data[btn]._Normal = normal
				self.MSQ_Button_Data[btn]._Icon = icon
			end
		end

		local data = {
			Icon = icon,
			Highlight = highlight,
		}
		(MSQ_Group or self.MSQ_MButton):AddButton(btn, data, "Legacy", true)
		self:MSQ_Button_Update(btn)
		self:MSQ_CoordUpdate(btn)
	end
end


hidingBar:SetScript("OnEvent", function(self, event, ...) self[event](self, ...) end)
hidingBar:RegisterEvent("ADDON_LOADED")


function hidingBar:ADDON_LOADED(addonName)
	if addonName == addon then
		self:UnregisterEvent("ADDON_LOADED")
		self.ADDON_LOADED = nil

		HidingBarDBChar = HidingBarDBChar or {}
		self.charDB = HidingBarDBChar
		HidingBarDB = HidingBarDB or {}
		self.db = HidingBarDB
		self.db.profiles = self.db.profiles or {
			{name = L["Profile"].." 1", isDefault = true},
		}
		self.profiles = self.db.profiles

		local config = self.profiles[1].config

		for i = 1, #self.profiles do
			self:checkProfile(self.profiles[i])
		end

		if self.db.config then
			if not config then
				local keys = {
					ignoreMBtn = true,
					btnSettings = true,
					mbtnSettings = true,
					grabDefMinimap = true,
					grabMinimap = true,
					grabMinimapAfter = true,
					grabMinimapAfterN = true,
					grabMinimapWithoutName = true,
				}

				local profile1config = self.profiles[1].config
				for k in pairs(keys) do
					profile1config[k] = self.db.config[k]
				end

				local bar1config = self.profiles[1].bars[1].config
				for k, v in pairs(self.db.config) do
					if not keys[k] then
						bar1config[k] = v
					end
				end
			end

			self.db.config = nil
		end

		C_Timer.After(0, function() self:setProfile() end)
	end
end


function hidingBar:checkProfile(profile)
	profile.config = profile.config or {}
	if profile.config.addFromDataBroker == nil then
		profile.config.addFromDataBroker = true
	end
	if profile.config.grabMinimap == nil then
		profile.config.grabMinimap = true
	end
	profile.config.ignoreMBtn = profile.config.ignoreMBtn or {"GatherMatePin"}
	profile.config.grabMinimapAfterN = profile.config.grabMinimapAfterN or 1
	profile.config.customGrabList = profile.config.customGrabList or {}
	profile.config.btnSettings = setmetatable(profile.config.btnSettings or {}, btnSettingsMeta)
	profile.config.mbtnSettings = setmetatable(profile.config.mbtnSettings or {}, btnSettingsMeta)

	profile.bars = profile.bars or {
		{name = L["Bar"].." 1", isDefault = true},
	}

	for i = 1, #profile.bars do
		local bar = profile.bars[i]
		bar.config = bar.config or {}
		bar.config.orientation = bar.config.orientation or 0
		bar.config.expand = bar.config.expand or 2
		bar.config.frameStrata = bar.config.frameStrata or 2
		bar.config.fadeOpacity = bar.config.fadeOpacity or .2
		bar.config.lineWidth = bar.config.lineWidth or 4
		bar.config.showHandler = bar.config.showHandler or 2
		bar.config.showDelay = bar.config.showDelay or 0
		bar.config.hideDelay = bar.config.hideDelay or .75
		bar.config.size = bar.config.size or 10
		bar.config.barOffset = bar.config.barOffset or 2
		bar.config.buttonDirection = bar.config.buttonDirection or {V = 0, H = 0}
		bar.config.buttonSize = bar.config.buttonSize or 31
		bar.config.rangeBetweenBtns = bar.config.rangeBetweenBtns or 0
		bar.config.anchor = bar.config.anchor or "top"
		bar.config.barTypePosition = bar.config.barTypePosition or 0
		bar.config.mbtnPosition = bar.config.mbtnPosition or 2
		bar.config.bgColor = bar.config.bgColor or {.1, .1, .1, .7}
		bar.config.lineColor = bar.config.lineColor or {.8, .6, 0}
		bar.config.omb = bar.config.omb or {}
		if bar.config.omb.hide == nil then
			bar.config.omb.hide = true
		end
		bar.config.omb.anchor = bar.config.omb.anchor or "right"
		bar.config.omb.size = bar.config.omb.size or 31
	end
end


function hidingBar:UI_SCALE_CHANGED()
	for _, bar in ipairs(self.bars) do
		bar:setBarTypePosition()
	end
end


function hidingBar:ignoreCheck(name)
	if not name then return self.pConfig.grabMinimapWithoutName end
	if name:match(matchName) then return end
	for i = 1, #self.pConfig.ignoreMBtn do
		if name:match(self.pConfig.ignoreMBtn[i]) then return end
	end
	return true
end


function hidingBar:init()
	if self.pConfig.addFromDataBroker then
		for name, data in ldb:DataObjectIterator() do
			self:ldb_add(nil, name, data)
		end
		ldb.RegisterCallback(self, "LibDataBroker_DataObjectCreated", "ldb_add")
		ldb.RegisterCallback(self, "LibDataBroker_AttributeChanged__icon", "ldb_attrChange")
		ldb.RegisterCallback(self, "LibDataBroker_AttributeChanged__iconCoords", "ldb_attrChange")
		ldb.RegisterCallback(self, "LibDataBroker_AttributeChanged__iconR", "ldb_attrChange")
		ldb.RegisterCallback(self, "LibDataBroker_AttributeChanged__iconG", "ldb_attrChange")
		ldb.RegisterCallback(self, "LibDataBroker_AttributeChanged__iconB", "ldb_attrChange")
		ldb.RegisterCallback(self, "LibDataBroker_AttributeChanged__iconDesaturated", "ldb_attrChange")
	end

	if self.pConfig.grabMinimap then
		if ldbi and ldbi_ver >= 39 then
			local ldbiTbl = ldbi:GetButtonList()
			for i = 1, #ldbiTbl do
				local button = ldbi:GetMinimapButton(ldbiTbl[i])
				if self:ignoreCheck(button:GetName()) then
					self.minimapButtons[button[0]] = button
					self:setHooks(button)
				end
			end
		end

		self:grabMinimapAddonsButtons(Minimap)
		self:grabMinimapAddonsButtons(MinimapBackdrop)
		ldbi.RegisterCallback(self, "LibDBIcon_IconCreated", "ldbi_add")

		if self.pConfig.grabMinimapAfter then
			C_Timer.After(tonumber(self.pConfig.grabMinimapAfterN) or 1, function()
				local oldNumButtons = #self.minimapButtons

				self:grabMinimapAddonsButtons(Minimap)
				self:grabMinimapAddonsButtons(MinimapBackdrop)

				if oldNumButtons ~= #self.minimapButtons then
					for _, btn in ipairs(self.minimapButtons) do
						self:setMBtnSettings(btn)
						self:setBtnParent(btn)
					end
					self:sort()
					for _, bar in ipairs(self.bars) do
						bar:setButtonSize()
					end
					self.cb:Fire("MBUTTONS_UPDATED")
				end
			end)
		end
	end

	for i = 1, #self.pConfig.customGrabList do
		self:addCustomGrabButton(self.pConfig.customGrabList[i])
	end

	if self.pConfig.grabDefMinimap then
		-- CALENDAR BUTTON
		if self:ignoreCheck("GameTimeFrame") then
			local GameTimeFrame = GameTimeFrame
			local normalTexture = GameTimeFrame:GetNormalTexture()
			normalTexture:SetTexCoord(0, .375, 0, .75)
			local pushedTexture = GameTimeFrame:GetPushedTexture()
			pushedTexture:SetTexCoord(.5, .875, 0, .75)
			local highlightTexture = GameTimeFrame:GetHighlightTexture()
			highlightTexture:SetTexCoord(0, 1, 0, .9375)
			local text = GameTimeFrame:GetFontString()
			text:SetPoint("CENTER", 0, -1)
			GameTimeFrame:SetNormalFontObject("GameFontBlackMedium")
			GameTimeCalendarInvitesTexture:SetPoint("CENTER")
			GameTimeCalendarInvitesGlow.Show = void
			GameTimeCalendarInvitesGlow:Hide()
			self:setHooks(GameTimeFrame)

			if self.MSQ_MButton then
				self:setMButtonRegions(GameTimeFrame, {.0859375, .296875, .156255, .59375})
			end

			self.SetAlpha(GameTimeFrame, 1)
			self.SetHitRectInsets(GameTimeFrame, 0, 0, 0, 0)
			self.SetIgnoreParentScale(GameTimeFrame, false)
			self.SetScript(GameTimeFrame, "OnUpdate", nil)
			self.HookScript(GameTimeFrame, "OnEnter", enter)
			self.HookScript(GameTimeFrame, "OnLeave", leave)
			tinsert(self.minimapButtons, GameTimeFrame)
			tinsert(self.mixedButtons, GameTimeFrame)
		end

		-- TRACKING BUTTON
		if self:ignoreCheck("MiniMapTracking") then
			local MiniMapTracking = MiniMapTracking
			local icon = MiniMapTrackingIcon
			icon:ClearAllPoints()
			icon:SetPoint("CENTER")
			hooksecurefunc(icon, "SetPoint", function(icon)
				icon:ClearAllPoints()
				self.SetPoint(icon, "CENTER")
			end)
			self:setHooks(MiniMapTracking)

			if self.MSQ_MButton then
				self.MSQ_Button_Data[MiniMapTrackingButton] = {
					_Border = MiniMapTrackingButtonBorder,
					_Background = MiniMapTrackingBackground,
				}
				self:setTexCurCoord(icon, icon:GetTexCoord())
				icon.SetTexCoord = self.setTexCoord
				local data = {
					Icon = icon,
					Highlight = MiniMapTrackingButton:GetHighlightTexture(),
				}
				self.MSQ_MButton:AddButton(MiniMapTrackingButton, data, "Legacy", true)
				self:MSQ_Button_Update(MiniMapTrackingButton)
				self:MSQ_CoordUpdate(MiniMapTrackingButton)
			end

			self.SetAlpha(MiniMapTracking, 1)
			self.SetHitRectInsets(MiniMapTracking, 0, 0, 0, 0)
			self.SetIgnoreParentScale(MiniMapTracking, false)
			self.SetScript(MiniMapTracking, "OnUpdate", nil)
			MiniMapTrackingButton:HookScript("OnMouseDown", function()
				icon:SetScale(.9)
			end)
			MiniMapTrackingButton:HookScript("OnMouseUp", function()
				icon:SetScale(1)
			end)
			MiniMapTrackingButton:HookScript("OnEnter", function() enter(MiniMapTracking) end)
			MiniMapTrackingButton:HookScript("OnLeave", function() leave(MiniMapTracking) end)
			tinsert(self.minimapButtons, MiniMapTracking)
			tinsert(self.mixedButtons, MiniMapTracking)
		end

		-- GARRISON BUTTON
		if self:ignoreCheck("GarrisonLandingPageMinimapButton") then
			local garrison = GarrisonLandingPageMinimapButton
			garrison.show = garrison:IsShown()
			self:setHooks(garrison)
			garrison.Show = function(garrison)
				if not garrison.show then
					garrison.show = true
					garrison:GetParent():applyLayout()
				end
			end
			garrison.Hide = function(garrison)
				if garrison.show then
					garrison.show = false
					garrison:GetParent():applyLayout()
				end
			end
			garrison.IsShown = function(garrison)
				local show = garrison.show and not btnSettings[garrison][1]
				self.SetShown(garrison, show)
				return show
			end

			if MSQ then
				self.MSQ_Garrison = MSQ:Group(addon, GARRISON_FOLLOWERS, "GarrisonLandingPageMinimapButton")
				self.MSQ_Garrison:SetCallback(function()
					self:MSQ_Button_Update(garrison)
					self:MSQ_CoordUpdate(garrison)
					for _, bar in ipairs(self.bars) do
						bar:enter()
						bar:leave(math.max(1.5, bar.config.hideDelay))
					end
				end)
				self:setMButtonRegions(garrison, nil, self.MSQ_Garrison)
			end

			self.SetAlpha(garrison, 1)
			self.SetHitRectInsets(garrison, 0, 0, 0, 0)
			self.SetIgnoreParentScale(garrison, false)
			self.SetScript(garrison, "OnUpdate", nil)
			self.HookScript(garrison, "OnEnter", enter)
			self.HookScript(garrison, "OnLeave", leave)
			tinsert(self.minimapButtons, garrison)
			tinsert(self.mixedButtons, garrison)
		end

		-- QUEUE STATUS
		if self:ignoreCheck("QueueStatusMinimapButton") then
			local queue = QueueStatusMinimapButton
			QueueStatusMinimapButtonDropDown:SetScript("OnHide", nil)
			queue.show = queue:IsShown()
			queue.icon = queue.Eye.texture
			self:setHooks(queue)
			queue.Show = function(queue)
				if not queue.show then
					queue.show = true
					queue:GetParent():applyLayout()
				end
			end
			queue.Hide = function(queue)
				if queue.show then
					queue.show = false
					if QueueStatusMinimapButtonDropDown == UIDROPDOWNMENU_OPEN_MENU then
						CloseDropDownMenus()
					end
					queue:GetParent():applyLayout()
				end
			end
			queue.IsShown = function(queue)
				local show = queue.show and not btnSettings[queue][1]
				self.SetShown(queue, show)
				return show
			end

			queue.EyeHighlightAnim:SetScript("OnLoop", nil)
			local f = CreateFrame("FRAME")
			f.eyeAnim = f:CreateAnimationGroup()
			f.eyeAnim:SetLooping(queue.EyeHighlightAnim:GetLooping())
			f.timer = f.eyeAnim:CreateAnimation()
			f.timer:SetDuration(1)
			f.eyeAnim:SetScript("OnLoop", function()
				if QueueStatusMinimapButton_OnGlowPulse(queue) then
					PlaySound(SOUNDKIT.UI_GROUP_FINDER_RECEIVE_APPLICATION)
				end
			end)
			hooksecurefunc(queue.EyeHighlightAnim, "Play", function() f.eyeAnim:Play() end)
			hooksecurefunc(queue.EyeHighlightAnim, "Stop", function() f.eyeAnim:Stop() end)
			f.eyeAnim:SetPlaying(queue.EyeHighlightAnim:IsPlaying())

			if self.MSQ_MButton then
				self.MSQ_Button_Data[queue] = {
					_Border = QueueStatusMinimapButtonBorder,
				}
				self:setTexCurCoord(queue.icon, queue.icon:GetTexCoord())
				queue.icon.SetTexCoord = self.setTexCoord
				local data = {
					Icon = queue.icon,
					Highlight = queue:GetHighlightTexture(),
				}
				self.MSQ_MButton:AddButton(queue, data, "Legacy", true)
				self:MSQ_Button_Update(queue)
				self:MSQ_CoordUpdate(queue)
			end

			queue.icon:SetTexCoord(0, .125, 0, .25)
			self.SetAlpha(queue, 1)
			self.SetHitRectInsets(queue, 0, 0, 0, 0)
			self.SetIgnoreParentScale(queue, false)
			self.SetScript(queue, "OnUpdate", nil)
			self.HookScript(queue, "OnEnter", enter)
			self.HookScript(queue, "OnLeave", leave)
			tinsert(self.minimapButtons, queue)
			tinsert(self.mixedButtons, queue)
		end

		-- MAIL
		if self:ignoreCheck("HidingBarAddonMail") then
			local proxyMail = CreateFrame("BUTTON", "HidingBarAddonMail", nil, "HidingBarAddonMailTemplate")
			local mail = MiniMapMailFrame
			proxyMail.show = mail:IsShown()
			self:setHooks(mail)
			self.Hide(mail)
			mail:UnregisterAllEvents()
			proxyMail:SetScript("OnEvent", mail:GetScript("OnEvent"))
			proxyMail:SetScript("OnEnter", mail:GetScript("OnEnter"))
			proxyMail:SetScript("OnLeave", mail:GetScript("OnLeave"))
			proxyMail:RegisterEvent("UPDATE_PENDING_MAIL")

			proxyMail.Show = function(proxyMail)
				if not proxyMail.show then
					proxyMail.show = true
					proxyMail:GetParent():applyLayout()
				end
			end
			proxyMail.Hide = function(proxyMail)
				if proxyMail.show then
					proxyMail.show = false
					proxyMail:GetParent():applyLayout()
				end
			end
			proxyMail.IsShown = function(proxyMail)
				local show = proxyMail.show and not btnSettings[proxyMail][1]
				self.SetShown(proxyMail, show)
				return show
			end

			if self.MSQ_MButton then
				self:setMButtonRegions(proxyMail)
			end

			proxyMail:HookScript("OnEnter", enter)
			proxyMail:HookScript("OnLeave", leave)
			tinsert(self.minimapButtons, proxyMail)
			tinsert(self.mixedButtons, proxyMail)
		end

		-- ZOOM IN & ZOOM OUT
		for _, zoom in ipairs({MinimapZoomIn, MinimapZoomOut}) do
			local name = zoom:GetName()
			if self:ignoreCheck(name) then
				self:setHooks(zoom)
				local normal = zoom:GetNormalTexture()

				if self.MSQ_MButton then
					zoom.icon = zoom:CreateTexture(nil, "BACKGROUND")
					zoom.icon:SetTexture(normal:GetTexture())
					zoom:SetScript("OnMouseDown", function(self) self.icon:SetScale(.9) end)
					zoom:SetScript("OnMouseUp", function(self) self.icon:SetScale(1) end)
					self:setMButtonRegions(zoom, {.24, .79, .21, .76})
				else
					zoom.icon = normal
				end

				zoom.click = zoom:GetScript("OnClick")
				zoom.Disable = function(zoom)
					zoom:SetScript("OnClick", nil)
					zoom.icon:SetDesaturated(true)
					zoom:GetNormalTexture():SetDesaturated(true)
					zoom:GetPushedTexture():SetDesaturated(true)
				end
				zoom.Enable = function(zoom)
					zoom:SetScript("OnClick", zoom.click)
					zoom.icon:SetDesaturated(false)
					zoom:GetNormalTexture():SetDesaturated(false)
					zoom:GetPushedTexture():SetDesaturated(false)
				end
				if not zoom:IsEnabled() then
					getmetatable(zoom).__index.Enable(zoom)
					zoom:Disable()
				end

				self.SetAlpha(zoom, 1)
				self.SetHitRectInsets(zoom, 0, 0, 0, 0)
				self.SetIgnoreParentScale(zoom, false)
				self.HookScript(zoom, "OnEnter", enter)
				self.HookScript(zoom, "OnLeave", leave)
				tinsert(self.minimapButtons, zoom)
				tinsert(self.mixedButtons, zoom)
			end
		end

		-- WORLD MAP BUTTON
		if self:ignoreCheck("MiniMapWorldMapButton") then
			local mapButton = MiniMapWorldMapButton
			self:setHooks(mapButton)
			mapButton.icon = mapButton:GetNormalTexture()
			mapButton.icon:SetTexture("Interface/QuestFrame/UI-QuestMap_Button")
			mapButton.icon:SetTexCoord(.125, .875, 0, .5)
			mapButton.puched = mapButton:GetPushedTexture()
			mapButton.puched:SetTexture("Interface/QuestFrame/UI-QuestMap_Button")
			mapButton.puched:SetTexCoord(.125, .875, .5, 1)
			mapButton.highlight = mapButton:GetHighlightTexture()
			mapButton.highlight:SetTexture("Interface/BUTTONS/ButtonHilight-Square")
			mapButton.highlight:SetAllPoints()

			if self.MSQ_MButton then
				mapButton.icon = mapButton:CreateTexture(nil, "BACKGROUND")
				mapButton.icon:SetTexture("Interface/QuestFrame/UI-QuestMap_Button")
				mapButton.icon:SetTexCoord(.125, .875, 0, .5)
				mapButton:SetScript("OnMouseDown", function(self) self.icon:SetScale(.9) end)
				mapButton:SetScript("OnMouseUp", function(self) self.icon:SetScale(1) end)
				self:setMButtonRegions(mapButton)
			end

			self.SetAlpha(mapButton, 1)
			self.SetHitRectInsets(mapButton, 0, 0, 0, 0)
			self.SetIgnoreParentScale(mapButton, false)
			self.HookScript(mapButton, "OnEnter", enter)
			self.HookScript(mapButton, "OnLeave", leave)
			tinsert(self.minimapButtons, mapButton)
			tinsert(self.mixedButtons, mapButton)
		end
	end

	self:RegisterEvent("UI_SCALE_CHANGED")
end


function hidingBar:setProfile(profileName)
	if profileName then
		self.charDB.currentProfileName = profileName
	end
	local currentProfileName, currentProfile, default = self.charDB.currentProfileName

	for i = 1, #self.profiles do
		local profile = self.profiles[i]
		if profile.name == currentProfileName then
			currentProfile = profile
			break
		end
		if profile.isDefault then
			default = profile
		end
	end

	if not currentProfile then
		self.charDB.currentProfileName = nil
		currentProfile = default
	end
	self.currentProfile = currentProfile
	self.pConfig = currentProfile.config

	if self.init then self:init() end

	for _, btn in ipairs(self.createdButtons) do
		self:setBtnSettings(btn)
	end

	for _, btn in ipairs(self.minimapButtons) do
		self:setMBtnSettings(btn)
	end

	local t = time()
	local tstmp = tonumber(self.db.tstmp) or t
	local maxTime = 7776000 -- 60 * 60 * 24 * 90 = 90 days and remove
	for k, s in pairs(self.pConfig.btnSettings) do
		if tstmp - (tonumber(s.tstmp) or 0) > maxTime then self.pConfig.btnSettings[k] = nil end
	end
	for k, s in pairs(self.pConfig.mbtnSettings) do
		if tstmp - (tonumber(s.tstmp) or 0) > maxTime then self.pConfig.mbtnSettings[k] = nil end
	end
	self.db.tstmp = t

	self:sort()
	self:updateBars()

	if self.init then
		self.cb:Fire("INIT")
		self.init = nil
	end
end


function hidingBar:updateBars()
	wipe(self.barByName)
	for i = 1, #self.currentProfile.bars do
		local bar = self.bars[i]
		bar.barSettings = self.currentProfile.bars[i]
		bar.name = bar.barSettings.name
		bar.config = bar.barSettings.config
		self.barByName[bar.name] = bar

		if bar.createOwnMinimapButton then
			bar:createOwnMinimapButton()
		end

		if bar.barSettings.isDefault then
			self.defaultBar = bar
		end
	end

	for i = 1, #self.mixedButtons do
		self:setBtnParent(self.mixedButtons[i])
	end

	for i = 1, #self.bars do
		local bar = self.bars[i]

		if self.currentProfile.bars[i] then
			bar:setFrameStrata()
			bar:setLineColor()
			bar:setBackgroundColor()
			bar:setLineWidth()
			bar.drag:setShowHandler()
			bar:setBarTypePosition()
			bar:updateDragBarPosition()
			bar:setButtonDirection()
			bar:setButtonSize()
		else
			bar:Hide()
			bar.drag:Hide()
			ldbi:Hide(bar.ombName)
		end
	end
end


function hidingBar:setBtnSettings(btn)
	local btnData = self.pConfig.btnSettings[btn.name]
	btnData.tstmp = time()
	btnSettings[btn] = btnData
	btn:SetClipsChildren(btnData[4])
end


function hidingBar:setMBtnSettings(btn)
	local name = btn:GetName()
	if name then
		local btnData = self.pConfig.mbtnSettings[name]
		btnData.tstmp = time()
		btnSettings[btn] = btnData
		btn:SetClipsChildren(btnData[4])
	end
end


function hidingBar:setBtnParent(btn)
	local btnData = btnSettings[btn]
	self.SetParent(btn, self.barByName[btnData and btnData[3]] or self.defaultBar)
end


function hidingBar:ldb_add(event, name, data)
	if name and data and data.type == "launcher" then
		self:addButton(name, data, event)
	end
end


function hidingBar:ldb_attrChange(_, name, key, value, data)
	if not data or data.type ~= "launcher" then return end
	local button = createdButtonsByName[name]
	if button then
		if key == "icon" then
			button.icon:SetTexture(value)
		elseif key == "iconCoords" then
			button.icon:SetTexCoord(unpack(value))
		elseif key == "iconR" then
			local _, g, b = button.icon:GetVertexColor()
			button.icon:SetVertexColor(value, g, b)
		elseif key == "iconG" then
			local r, _, b = button.icon:GetVertexColor()
			button.icon:SetVertexColor(r, value, b)
		elseif key == "iconB" then
			local r, g = button.icon:GetVertexColor()
			button.icon:SetVertexColor(r, g, value)
		elseif key == "iconDesaturated" then
			button.icon:SetDesaturated(value)
		end
	end
end


do
	local function IsShown(btn)
		local show = not btnSettings[btn][1]
		btn:SetShown(show)
		return show
	end

	--[[
	OnEnter         - Handler OnEnter
	OnLeave         - Handler OnLeave
	OnClick         - Handler OnClick
	icon            - Texture icon
	iconCoords      - Table with coords
	iconR           - icon R color (RGB)
	iconG           - icon G color (RGB)
	iconB           - icon B color (RGB)
	iconDesaturated - Desaturated icon (boolean)
	OnTooltipShow   - Handler tooltip show: function(TooltipFrame) .. end
	]]
	function hidingBar:addButton(name, data, update)
		if createdButtonsByName[name] then return end
		local button = CreateFrame("BUTTON", ("ADDON_%s_%s"):format(addon, name), nil, "HidingBarAddonCreatedButtonTemplate")
		createdButtonsByName[name] = button
		button.name = name
		button.data = data
		if data.icon then
			button.icon:SetTexture(data.icon)
			button.iconTex = data.icon
			if data.iconCoords then
				button.iconCoords = {unpack(data.iconCoords)}
				button.icon:SetTexCoord(unpack(data.iconCoords))
			end
			button.iconR = data.iconR
			button.iconG = data.iconG
			button.iconB = data.iconB
			button.icon:SetVertexColor(data.iconR or 1, data.iconG or 1, data.iconB or 1)
			if data.iconDesaturated ~= nil then
				button.iconDesaturated = data.iconDesaturated
				button.icon:SetDesaturated(data.iconDesaturated)
			end
		end
		button:HookScript("OnEnter", enter)
		button:HookScript("OnLeave", leave)
		button.IsShown = IsShown
		tinsert(self.createdButtons, button)
		tinsert(self.mixedButtons, button)

		if update then
			self:setBtnSettings(button)
			self:setBtnParent(button)
			self:sort()
			button:GetParent():setButtonSize()
			self.cb:Fire("BUTTON_ADDED", name, button, true)
		end

		if self.MSQ_Button then
			if data.iconCoords then self:setTexCurCoord(button.icon, unpack(data.iconCoords)) end
			button.icon.SetTexCoord = self.setTexCoord
			button:SetHighlightTexture(" ")
			local buttonData = {
				Icon = button.icon,
				Highlight = button:GetHighlightTexture(),
			}
			buttonData.Highlight:SetTexture()
			self.MSQ_Button:AddButton(button, buttonData, "Legacy", true)
			self:MSQ_CoordUpdate(button)
		end

		return button
	end
end


function hidingBar:addCustomGrabButton(name)
	local button = _G[name]
	if button then
		for j = 1, #self.minimapButtons do
			if button == self.minimapButtons[j] then
				return
			end
		end
		return self:addMButton(button, true, self.MSQ_CGButton)
	end
end


function hidingBar:ldbi_add(_, button, name)
	if not name:match(matchName) and self:addMButton(button) then
		self:setMBtnSettings(button)
		self:setBtnParent(button)
		self:sort()
		button:GetParent():setButtonSize()
		self.cb:Fire("MBUTTON_ADDED", button:GetName(), button.icon, true)
	end
end


function hidingBar:grabMinimapAddonsButtons(parentFrame)
	for _, child in ipairs({parentFrame:GetChildren()}) do
		local width, height = child:GetSize()
		if math.max(width, height) > 16 and math.abs(width - height) < 5 then
			self:addMButton(child)
		end
	end
end


function hidingBar:addMButton(button, force, MSQ_Group)
	local name = button:GetName()
	if not ignoreFrameList[name] and self:ignoreCheck(name) then
		if button:HasScript("OnClick") and button:GetScript("OnClick")
		or button:HasScript("OnMouseUp") and button:GetScript("OnMouseUp")
		or button:HasScript("OnMouseDown") and button:GetScript("OnMouseDown")
		or force then
			local btn = self.minimapButtons[button[0]]
			self.minimapButtons[button[0]] = nil
			if btn ~= button then
				self:setHooks(button)
			end

			if self.MSQ_MButton and button:GetObjectType() == "Button" then
				self:setMButtonRegions(button, nil, MSQ_Group)
			end

			local function OnEnter() enter(button) end
			local function OnLeave() leave(button) end

			local function setMouseEvents(frame)
				if frame:IsMouseEnabled() then
					self.SetHitRectInsets(frame, 0, 0, 0, 0)
					self.HookScript(frame, "OnEnter", OnEnter)
					self.HookScript(frame, "OnLeave", OnLeave)
				end
				for _, fchild in ipairs({frame:GetChildren()}) do
					setMouseEvents(fchild)
				end
			end
			setMouseEvents(button)

			self.SetIgnoreParentScale(button, false)
			self.SetFixedFrameStrata(button, false)
			self.SetFixedFrameLevel(button, false)
			self.SetAlpha(button, 1)
			tinsert(self.minimapButtons, button)
			tinsert(self.mixedButtons, button)
			return true
		else
			local mouseEnabled, clickable = {}
			local function getMouseEnabled(frame)
				if frame:IsMouseEnabled() then
					tinsert(mouseEnabled, frame)
					if frame:HasScript("OnClick") and frame:GetScript("OnClick")
					or frame:HasScript("OnMouseUp") and frame:GetScript("OnMouseUp")
					or frame:HasScript("OnMouseDown") and frame:GetScript("OnMouseDown") then
						clickable = true
					end
				end
				for _, fchild in ipairs({frame:GetChildren()}) do
					getMouseEnabled(fchild)
				end
			end
			getMouseEnabled(button)

			if clickable then
				self:setHooks(button)

				local function OnEnter() enter(button) end
				local function OnLeave() leave(button) end

				for _, frame in ipairs(mouseEnabled) do
					self.SetHitRectInsets(frame, 0, 0, 0, 0)
					self.HookScript(frame, "OnEnter", OnEnter)
					self.HookScript(frame, "OnLeave", OnLeave)
				end

				self.SetIgnoreParentScale(button, false)
				self.SetFixedFrameStrata(button, false)
				self.SetFixedFrameLevel(button, false)
				self.SetAlpha(button, 1)
				tinsert(self.minimapButtons, button)
				tinsert(self.mixedButtons, button)
				return true
			end
		end
	end
end


do
	local function IsShown(btn)
		local btnData = btnSettings[btn]
		local show = not (btnData and btnData[1])
		hidingBar.SetShown(btn, show)
		return show
	end

	local function CreateAnimationGroup(self, ...)
		local animationGroup = getmetatable(self).__index.CreateAnimationGroup(self, ...)
		animationGroup.Play = void
		return animationGroup
	end

	local function SetScript(self, event, func, ...)
		event = event:lower()
		if func == nil or event ~= "onupdate" and event ~= "ondragstart" and event ~= "ondragstop" then
			getmetatable(self).__index.SetScript(self, event, func, ...)
		end
	end

	function hidingBar:setHooks(btn)
		btn.CreateAnimationGroup = CreateAnimationGroup
		for _, animationGroup in ipairs({btn:GetAnimationGroups()}) do
			local disable
			for _, animation in ipairs({animationGroup:GetAnimations()}) do
				if animation:GetTarget() == btn then
					local animType = animation:GetObjectType()
					if animType ~= "Animation" and animType ~= "Rotation" then
						disable = true
						break
					end
				end
			end
			if disable then
				animationGroup:Stop()
				animationGroup.Play = void
			end
		end
		btn.SetFixedFrameStrata = void
		btn.SetFixedFrameLevel = void
		btn.SetHitRectInsets = void
		btn.ClearAllPoints = void
		btn.StartMoving = void
		btn.SetParent = void
		btn.Show = void
		btn.Hide = void
		btn.IsShown = IsShown
		btn.SetShown = void
		btn.SetPoint = void
		btn.SetAlpha = void
		btn.SetIgnoreParentScale = void
		btn.SetScale = void
		btn.SetSize = void
		btn.SetWidth = void
		btn.SetHeight = void
		btn.Disable = void
		btn.SetEnabled = void
		btn.HookScript = void
		btn.SetScript = SetScript
	end
end


function hidingBar:sort()
	sort(self.createdButtons, function(a, b)
		local o1, o2 = btnSettings[a][2], btnSettings[b][2]
		return o1 and not o2
			or o1 and o2 and o1 < o2
			or o1 == o2 and a.name < b.name
	end)
	local btnSort = function(a, b)
		local o1 = btnSettings[a] and btnSettings[a][2]
		local o2 = btnSettings[b] and btnSettings[b][2]
		if o1 and not o2 or o1 and o2 and o1 < o2 then return true
		elseif o1 ~= o2 then return false end

		local n1, n2 = a:GetName(), b:GetName()
		return n1 and not n2
			or n1 and n2 and n1 < n2
	end
	sort(self.minimapButtons, btnSort)
	sort(self.mixedButtons, btnSort)
end


function hidingBar:setClipButtons()
	for _, btn in ipairs(self.mixedButtons) do
		local btnData = btnSettings[btn]
		if btnData then
			btn:SetClipsChildren(btnData[4])
		end
	end
end


-------------------------------------------
-- HIDINGBAR MIXIN
-------------------------------------------
local hidingBarMixin = {}


function hidingBarMixin:createOwnMinimapButton()
	self.createOwnMinimapButton = nil
	self.ombName = addon..self.id
	self.ldb_icon = ldb:NewDataObject(self.ombName, {
		type = "data source",
		text = self.ombName,
		icon = "Interface/Icons/misc_arrowleft",
		OnClick = function(_, button)
			if button == "LeftButton" then
				if self:IsShown() and self.config.showHandler ~= 3 then
					self:Hide()
				else
					local func = self.drag:GetScript("OnClick")
					if func then func(self.drag) end
				end
			elseif button == "RightButton" then
				if IsAltKeyDown() then
					self:setLocked(not self.config.lock)
					self.cb:Fire("LOCK_UPDATED", self.config.lock, self)
				end
				if IsShiftKeyDown() then
					config:openConfig()
					config:setBar(self.barSettings)
				end
			end
		end,
		OnEnter = function()
			local func = self.drag:GetScript("OnEnter")
			if func then func(self.drag) end
		end,
		OnLeave = function()
			local func = self.drag:GetScript("OnLeave")
			if func then func(self.drag) end
		end,
	})
	ldbi:Register(self.ombName, self.ldb_icon, self.config.omb)
end


function hidingBarMixin:setLineColor(r, g, b)
	local color = self.config.lineColor
	if r then color[1] = r end
	if g then color[2] = g end
	if b then color[3] = b end
	self.drag.bg:SetColorTexture(unpack(color))
end


function hidingBarMixin:setBackgroundColor(r, g, b, a)
	local color = self.config.bgColor
	if r then color[1] = r end
	if g then color[2] = g end
	if b then color[3] = b end
	if a then color[4] = a end
	self.bg:SetVertexColor(unpack(color))
end


function hidingBarMixin:setOrientation(orientation)
	self.config.orientation = orientation
	self:applyLayout()
end


function hidingBarMixin:setFade(fade)
	self.config.fade = fade
	if fade and self.drag:IsShown() then
		UIFrameFadeOut(self.drag, 1.5, self.drag:GetAlpha(), self.config.fadeOpacity)
	else
		UIFrameFadeRemoveFrame(self.drag)
		self.drag:SetAlpha(1)
	end
end


function hidingBarMixin:setFadeOpacity(opacity)
	self.config.fadeOpacity = opacity
	UIFrameFadeRemoveFrame(self.drag)
	self.drag:SetAlpha(opacity)
end


function hidingBarMixin:setLineWidth(width)
	if width then self.config.lineWidth = width end
	self.drag:SetSize(self.config.lineWidth, self.config.lineWidth)
end


function hidingBarMixin:setBarOffset(offset)
	self.config.barOffset = offset
	self:applyLayout()
end


function hidingBarMixin:setMaxButtons(size)
	self.config.size = size
	self:applyLayout()
end


function hidingBarMixin:setButtonDirection(mode, direction)
	if mode and direction then
		self.config.buttonDirection[mode] = direction
	end

	self.direction = self.direction or {}

	if self.config.buttonDirection.V == 0 then
		self.direction.V = self.anchorObj.anchor == "bottom" and "BOTTOM" or "TOP"
	elseif self.config.buttonDirection.V == 1 then
		self.direction.V = "TOP"
	else
		self.direction.V = "BOTTOM"
	end

	if self.config.buttonDirection.H == 0 then
		self.direction.H = self.anchorObj.anchor == "right" and "RIGHT" or "LEFT"
	elseif self.config.buttonDirection.H == 1 then
		self.direction.H = "LEFT"
	else
		self.direction.H = "RIGHT"
	end

	self.direction.rPoint = self.direction.V..self.direction.H
end


function hidingBarMixin:setButtonSize(size)
	if size then self.config.buttonSize = size end

	for _, btn in ipairs(hidingBar.createdButtons) do
		if btn:GetParent() == self then
			btn:SetScale(self.config.buttonSize / btn:GetWidth())
		end
	end
	for _, btn in ipairs(hidingBar.minimapButtons) do
		if btn:GetParent() == self then
			local width, height = btn:GetSize()
			local maxSize = width > height and width or height
			self.SetScale(btn, self.config.buttonSize / maxSize)
		end
	end

	self:applyLayout()
end


function hidingBarMixin:setRangeBetweenBtns(range)
	self.config.rangeBetweenBtns = range
	self:applyLayout()
end


function hidingBarMixin:setMBtnPosition(position)
	self.config.mbtnPosition = position
	self:applyLayout()
end


function hidingBarMixin:setPointBtn(btn, order, orientation)
	order = order - 1
	local offset = self.config.buttonSize / 2 + self.config.barOffset
	local buttonSize = self.config.buttonSize + self.config.rangeBetweenBtns
	local x = order % self.config.size * buttonSize + offset
	local y = -math.floor(order / self.config.size) * buttonSize - offset
	if orientation then x, y = -y, -x end
	if self.direction.V == "BOTTOM" then y = -y end
	if self.direction.H == "RIGHT" then x = -x end
	self.ClearAllPoints(btn)
	local scale = btn:GetScale()
	self.SetPoint(btn, "CENTER", self, self.direction.rPoint, x / scale, y / scale)
end


function hidingBarMixin:applyLayout()
	local orientation
	if self.config.orientation == 0 then
		orientation = self.anchorObj.anchor == "top" or self.anchorObj.anchor == "bottom"
	else
		orientation = self.config.orientation == 2
	end

	local i, maxButtons, line = 0
	if self.config.mbtnPosition == 2 then
		for _, btn in ipairs(hidingBar.mixedButtons) do
			if btn:GetParent() == self and btn:IsShown() then
				i = i + 1
				self:setPointBtn(btn, i, orientation)
			end
		end
		self.shown = i ~= 0
		maxButtons = i
		line = math.ceil(i / self.config.size)
	else
		for _, btn in ipairs(hidingBar.createdButtons) do
			if btn:GetParent() == self and btn:IsShown() then
				i = i + 1
				self:setPointBtn(btn, i, orientation)
			end
		end
		local followed = self.config.mbtnPosition == 1
		local orderDelta = followed and i or math.ceil(i / self.config.size) * self.config.size
		local j = 0
		for _, btn in ipairs(hidingBar.minimapButtons) do
			if btn:GetParent() == self and btn:IsShown() then
				j = j + 1
				self:setPointBtn(btn, j + orderDelta, orientation)
			end
		end
		self.shown = i + j ~= 0
		maxButtons = followed and i + j or i > j and i or j
		line = math.ceil((j + orderDelta) / self.config.size)
	end

	self:refreshShown()

	if maxButtons > self.config.size then maxButtons = self.config.size end
	local buttonSize = self.config.buttonSize + self.config.rangeBetweenBtns
	local offset = self.config.barOffset * 2 - self.config.rangeBetweenBtns
	local width = maxButtons * buttonSize + offset
	local height = line * buttonSize + offset
	if orientation then width, height = height, width end
	self:SetSize(width, height)
	return width, height
end


function hidingBarMixin:setLocked(lock)
	self.config.lock = lock
	self:refreshShown()
	if lock then
		ldbi:Lock(self.ombName)
	else
		ldbi:Unlock(self.ombName)
	end
end


function hidingBarMixin:setFrameStrata(strata)
	if strata then self.config.frameStrata = strata end

	if self.config.frameStrata == 5 then
		strata = "TOOLTIP"
	elseif self.config.frameStrata == 4 then
		strata = "FULLSCREEN_DIALOG"
	elseif self.config.frameStrata == 3 then
		strata = "FULLSCREEN"
	elseif self.config.frameStrata == 2 then
		strata = "DIALOG"
	elseif self.config.frameStrata == 1 then
		strata = "HIGH"
	else
		strata = "MEDIUM"
	end

	self:SetFrameStrata(strata)
	self.drag:SetFrameStrata(strata)
end


function hidingBarMixin:updateDragBarPosition()
	local anchor = self.config.anchor
	self.drag:ClearAllPoints()
	if self:IsShown() then
		if anchor == "left" then
			self.drag:SetPoint("TOPLEFT", self, "TOPRIGHT")
			self.drag:SetPoint("BOTTOMLEFT", self, "BOTTOMRIGHT")
		elseif anchor == "right" then
			self.drag:SetPoint("TOPRIGHT", self, "TOPLEFT")
			self.drag:SetPoint("BOTTOMRIGHT", self, "BOTTOMLEFT")
		elseif anchor == "top" then
			self.drag:SetPoint("TOPLEFT", self, "BOTTOMLEFT")
			self.drag:SetPoint("TOPRIGHT", self, "BOTTOMRIGHT")
		else
			self.drag:SetPoint("BOTTOMLEFT", self, "TOPLEFT")
			self.drag:SetPoint("BOTTOMRIGHT", self, "TOPRIGHT")
		end
	else
		if anchor == "left" then
			self.drag:SetPoint("TOPLEFT", self, "TOPLEFT")
			self.drag:SetPoint("BOTTOMLEFT", self, "BOTTOMLEFT")
		elseif anchor == "right" then
			self.drag:SetPoint("TOPRIGHT", self, "TOPRIGHT")
			self.drag:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT")
		elseif anchor == "top" then
			self.drag:SetPoint("TOPLEFT", self, "TOPLEFT")
			self.drag:SetPoint("TOPRIGHT", self, "TOPRIGHT")
		else
			self.drag:SetPoint("BOTTOMLEFT", self, "BOTTOMLEFT")
			self.drag:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT")
		end
	end
end


function hidingBarMixin:setOMBAnchor(anchor)
	if self.config.barTypePosition ~= 2 or self.config.omb.anchor == anchor then return end
	self.config.omb.anchor = anchor
	self:setButtonDirection()
	self:applyLayout()
	self:setBarTypePosition()
end


function hidingBarMixin:setOMBSize(size)
	if size then self.config.omb.size = size end
	if self.omb then
		local oldScale = self.omb:GetScale()
		self.omb:SetScale(self.config.omb.size / self.omb:GetWidth())
		for i = 1, self.omb:GetNumPoints() do
			local point, rFrame, rPoint, x, y = self.omb:GetPoint(i)
			self.omb:SetPoint(point, rFrame, rPoint, x * oldScale, y * oldScale)
		end
	end
end


function hidingBarMixin:setBarAnchor(anchor)
	if self.config.barTypePosition ~= 1 or self.config.anchor == anchor then return end
	local x, y, position, secondPosition = self:GetCenter()
	self.config.anchor = anchor
	self:setButtonDirection()
	local width, height = self:applyLayout()
	width, height = width / 2, height / 2

	if anchor == "left" or anchor == "right" then
		if self.config.expand == 0 then
			position = y + height
		elseif self.config.expand == 1 then
			position = y - height
		else
			position = y
		end
	else
		if self.config.expand == 0 then
			position = x - width
		elseif self.config.expand == 1 then
			position = x + width
		else
			position = x
		end
	end

	if anchor == "left" then
		secondPosition = x - width
	elseif anchor == "right" then
		secondPosition = x + width - UIParent:GetWidth()
	elseif anchor == "top" then
		secondPosition = y + height - UIParent:GetHeight()
	else
		secondPosition = y - height
	end

	self:setBarCoords(position, secondPosition)
	self:updateBarPosition()
end


function hidingBarMixin:setBarExpand(expand)
	if self.config.expand == expand then return end
	local anchor, delta, position = self.config.anchor
	local scale = UIParent:GetScale()

	if anchor == "left" or anchor == "right" then
		delta = self:GetHeight()
	else
		delta = -self:GetWidth()
	end

	if self.config.expand == 2 or expand == 2 then
		delta = delta / 2
		if self.config.expand == 1 then delta = -delta end
	end

	if expand == 0 then
		position = self.config.position / scale + delta
	else
		position = self.config.position / scale - delta
	end
	self.config.expand = expand

	self:setBarCoords(position)
	self:setBarTypePosition()
end


function hidingBarMixin:setBarTypePosition(typePosition)
	if typePosition then self.config.barTypePosition = typePosition end

	if self.config.barTypePosition == 2 then
		self.config.omb.hide = false
		ldbi:Show(self.ombName)
		if self.config.lock then
			ldbi:Lock(self.ombName)
		else
			ldbi:Unlock(self.ombName)
		end

		if not self.omb then
			self.omb = ldbi:GetMinimapButton(self.ombName)
			self.omb.dSetPoint = self.omb.SetPoint
			self.omb.SetPoint = function(self, point, rFrame, rPoint, x, y)
				local scale = self:GetScale()
				if not rFrame or type(rFrame) == "number" then
					rFrame = (rFrame or 0) / scale
					rPoint = (rPoint or 0) / scale
				elseif not rPoint or type(rPoint) == "number" then
					rPoint = (rPoint or 0) / scale
					x = (x or 0) / scale
				else
					x = (x or 0) / scale
					y = (y or 0) / scale
				end
				self:dSetPoint(point, rFrame, rPoint, x, y)
			end
			self:setOMBSize()
			if MSQ then
				if not hidingBar.MSQ_OMB then
					hidingBar.MSQ_OMB = MSQ:Group(addon, L["Own Minimap Button"], "OMB")
					hidingBar.MSQ_OMB:SetCallback(function()
						hidingBar:MSQ_Button_Update(self.omb)
						hidingBar:MSQ_CoordUpdate(self.omb)
					end)
				end
				hidingBar:setMButtonRegions(self.omb, nil, hidingBar.MSQ_OMB)
			end
		end

		local btnSize, position, secondPosition = self.config.omb.size
		if self.config.omb.anchor == "left" or self.config.omb.anchor == "right" then
			if self.config.expand == 0 then
				position = btnSize + self.config.barOffset
			elseif self.config.expand == 1 then
				position = -self.config.barOffset
			else
				position = btnSize / 2
			end
		else
			if self.config.expand == 0 then
				position = -self.config.barOffset
			elseif self.config.expand == 1 then
				position = btnSize + self.config.barOffset
			else
				position = btnSize / 2
			end
		end

		if self.config.omb.anchor == "left" then
			secondPosition = btnSize
			self.ldb_icon.icon = "Interface/Icons/misc_arrowright"
		elseif self.config.omb.anchor == "right" then
			secondPosition = -btnSize
			self.ldb_icon.icon = "Interface/Icons/misc_arrowleft"
		elseif self.config.omb.anchor == "top" then
			secondPosition = -btnSize
			self.ldb_icon.icon = "Interface/Icons/misc_arrowdown"
		else
			secondPosition = btnSize
			self.ldb_icon.icon = "Interface/Icons/misc_arrowlup"
		end

		self.anchorObj = self.config.omb
		self.rFrame = self.omb
		self.position = position
		self.secondPosition = secondPosition
	else
		self.config.omb.hide = true
		ldbi:Hide(self.ombName)
		self.anchorObj = self.config
		self.rFrame = UIParent
		self.position = nil
		self.secondPosition = nil
	end

	if typePosition then
		self:setButtonDirection()
		self:applyLayout()
	end
	self:updateBarPosition()
end


function hidingBarMixin:setBarCoords(position, secondPosition)
	local scale = UIParent:GetScale()

	if position then
		self.position = position
		self.config.position = position * scale
	end

	if secondPosition then
		self.secondPosition = secondPosition
		self.config.secondPosition = secondPosition * scale
	end
end


do
	local pointForExpand = {
		left   = {[0] = "TOPLEFT",    "BOTTOMLEFT",  "LEFT"},
		right  = {[0] = "TOPRIGHT",   "BOTTOMRIGHT", "RIGHT"},
		top    = {[0] = "TOPLEFT",    "TOPRIGHT",    "TOP"},
		bottom = {[0] = "BOTTOMLEFT", "BOTTOMRIGHT", "BOTTOM"},
	}

	function hidingBarMixin:updateBarPosition()
		local anchor = self.anchorObj.anchor

		if not self.position then
			if not self.config.position then
				if anchor == "left" or anchor =="right" then
					self.config.position = WorldFrame:GetHeight() / 2
				else
					self.config.position = WorldFrame:GetWidth() / 2
				end
			end
			self.position = self.config.position / UIParent:GetScale()
		end

		if not self.secondPosition then
			if not self.config.secondPosition then
				self.config.secondPosition = 0
			end
			self.secondPosition = self.config.secondPosition / UIParent:GetScale()
		end

		hidingBar.cb:Fire("COORDS_UPDATED", self)

		local point = pointForExpand[anchor][self.config.expand]
		self:ClearAllPoints()
		if anchor == "left" then
			self:SetPoint(point, self.rFrame, "BOTTOMLEFT", self.secondPosition, self.position)
		elseif anchor == "right" then
			self:SetPoint(point, self.rFrame, "BOTTOMRIGHT", self.secondPosition, self.position)
		elseif anchor == "top" then
			self:SetPoint(point, self.rFrame, "TOPLEFT", self.position, self.secondPosition)
		else
			self:SetPoint(point, self.rFrame, "BOTTOMLEFT", self.position, self.secondPosition)
		end
	end
end


function hidingBarMixin:dragBar()
	local x, y = GetCursorPosition()
	local width, height = self:GetSize()
	local UIwidth, UIheight = UIParent:GetSize()
	local anchor = self.config.anchor
	local secondPosition, position = 0
	local scale = UIParent:GetScale()
	x, y = x / scale + self.dx, y / scale + self.dy

	if self.config.barTypePosition == 0 then
		local offset = 70 / scale

		if not IsShiftKeyDown() then
			local delta = 10 / scale
			if anchor == "top" or anchor == "bottom" then
				local halfWidth = UIwidth / 2
				if math.abs(halfWidth - x) < delta then
					x = halfWidth
				end
			else
				local halfHeight = UIheight / 2
				if math.abs(halfHeight - y) < delta then
					y = halfHeight
				end
			end
		end

		if anchor == "left" and x > width
		or anchor == "right" and x < UIwidth - width then
			if y > UIheight - offset then
				anchor = "top"
			elseif y < offset then
				anchor = "bottom"
			end
		elseif anchor == "top" and y < UIheight - height
		or anchor == "bottom" and y > height then
			if x < offset then
				anchor = "left"
			elseif x > UIwidth - offset then
				anchor = "right"
			end
		end

		if anchor ~= self.config.anchor then
			self.config.anchor = anchor
			self:setButtonDirection()
			width, height = self:applyLayout()
			self:updateDragBarPosition()

			hidingBar.cb:Fire("ANCHOR_UPDATED", self.config.anchor, self)
		end
	else
		if anchor == "left" then
			local dx = UIwidth - x - self.drag:GetWidth() / 2
			if dx < 0 then x = x + dx end
		elseif anchor == "right" then
			local dx = x - self.drag:GetWidth() / 2
			if dx < 0 then x = x - dx end
		elseif anchor == "top" then
			local dy = y - self.drag:GetHeight() / 2
			if dy < 0 then y = y - dy end
		elseif anchor == "bottom" then
			local dy = UIheight - y - self.drag:GetHeight() / 2
			if dy < 0 then y = y + dy end
		end
	end

	if anchor == "left" or anchor == "right" then
		local delta
		if self.config.expand == 0 then
			delta = -height / 2
		elseif self.config.expand == 1 then
			delta = height / 2
		else
			delta = 0
		end
		position = y - delta
		if self.config.barTypePosition == 1 then
			local dhWidth = self.drag:GetWidth() / 2
			delta = anchor == "left" and width + dhWidth or UIwidth - width - dhWidth
			secondPosition = x - delta
		end
	else
		local delta
		if self.config.expand == 0 then
			delta = width / 2
		elseif self.config.expand == 1 then
			delta = -width / 2
		else
			delta = 0
		end
		position = x - delta
		if self.config.barTypePosition == 1 then
			local dhHeight = self.drag:GetHeight() / 2
			delta = anchor == "top" and UIheight - height - dhHeight or height + dhHeight
			secondPosition = y - delta
		end
	end

	self:setBarCoords(position, secondPosition)
	self:updateBarPosition()
end


function hidingBarMixin:enter(force)
	if not self.isDrag and self.shown and (self.config.showHandler ~= 3 or force) then
		UIFrameFadeRemoveFrame(self.drag)
		self.drag:SetAlpha(1)
		self:SetScript("OnUpdate", nil)
		self:Show()
		self:Raise()
		self:updateDragBarPosition()
	end
end


function hidingBarMixin:hideBar(elapsed)
	self.timer = self.timer - elapsed
	if self.timer <= 0 then
		self:Hide()
		self:updateDragBarPosition()
		self:SetScript("OnUpdate", nil)
		if self.config.fade and self.drag:IsShown() then
			UIFrameFadeOut(self.drag, 1.5, self.drag:GetAlpha(), self.config.fadeOpacity)
		end
	end
end


function hidingBarMixin:leave(timer)
	if not self.isDrag and self:IsShown() and self.config.showHandler ~= 3 then
		self.timer = timer or self.config.hideDelay
		self:SetScript("OnUpdate", self.hideBar)
	end
end


function hidingBarMixin:refreshShown()
	if not self.shown then
		self:Hide()
		self.drag:Hide()
	elseif self.config.barTypePosition == 2 then
		self.drag:Hide()
		if self.config.showHandler == 3 then
			self:enter(true)
		elseif self:IsShown() and not self.isMouse then
			self:leave()
		end
	elseif self.config.showHandler == 3 then
		self:enter(true)
		self.drag:SetShown(not self.config.lock)
	else
		if self:IsShown() then
			if not self.isMouse then
				self:leave()
			end
		else
			self:updateDragBarPosition()
			if self.config.fade then
				UIFrameFadeOut(self.drag, 1.5, self.drag:GetAlpha(), self.config.fadeOpacity)
			end
		end
		self.drag:Show()
	end
end


-------------------------------------------
-- HIDINGBAR DRAG MIXIN
-------------------------------------------
local hidingBarDragMixin = {}


function hidingBarDragMixin:hoverWithClick()
	local bar = self.bar
	if bar:IsShown() then
		bar:enter()
	elseif self:IsShown() and bar.config.fade then
		UIFrameFadeOut(self, bar.config.showDelay, self:GetAlpha(), 1)
	end
end


function hidingBarDragMixin:showOnClick()
	self.bar:enter()
end


function hidingBarDragMixin:showBarDelay(elapsed)
	self.timer = self.timer - elapsed
	if self.timer <= 0 then
		self:SetScript("OnUpdate", nil)
		self.bar:enter()
	end
end


function hidingBarDragMixin:showOnHoverWithDelay()
	local bar = self.bar
	if bar:IsShown() or bar.config.showDelay == 0 then
		bar:enter()
	else
		if self:IsShown() and bar.config.fade then
			UIFrameFadeOut(self, bar.config.showDelay, self:GetAlpha(), 1)
		end
		fTimer.bar = bar
		fTimer.timer = bar.config.showDelay
		fTimer:SetScript("OnUpdate", self.showBarDelay)
	end
end


function hidingBarDragMixin:setShowHandler(showHandler)
	local bar = self.bar
	if showHandler then bar.config.showHandler = showHandler end

	if bar.config.showHandler == 3 then
		self:SetScript("OnEnter", nil)
		self:SetScript("OnClick", nil)
	elseif bar.config.showHandler == 2 then
		self:SetScript("OnEnter", self.showOnHoverWithDelay)
		self:SetScript("OnClick", self.showOnClick)
	elseif bar.config.showHandler == 1 then
		self:SetScript("OnEnter", self.hoverWithClick)
		self:SetScript("OnClick", self.showOnClick)
	else
		self:SetScript("OnEnter", self.showOnHoverWithDelay)
		self:SetScript("OnClick", nil)
	end

	bar:refreshShown()
end


-------------------------------------------
-- CREATE BAR
-------------------------------------------
local function bar_OnEnter(self)
	self.isMouse = true
	self:enter()
end


local function bar_OnLeave(self)
	self.isMouse = false
	self:leave()
end


local function bar_OnEvent(self, event, button)
	if (button == "LeftButton" or button == "RightButton")
	and not (self:IsMouseOver()
		or self.drag:IsShown() and self.drag:IsMouseOver()
		or self.omb and self.omb:IsShown() and self.omb:IsMouseOver())
	then
		self:Hide()
		self:updateDragBarPosition()
		self:SetScript("OnUpdate", nil)
		if self.config.fade and self.drag:IsShown() then
			UIFrameFadeOut(self.drag, 1.5, self.drag:GetAlpha(), self.config.fadeOpacity)
		end
	end
end


local function bar_OnShow(self)
	if self.config.showHandler == 3 then return end
	self:RegisterEvent("GLOBAL_MOUSE_DOWN")
end


local function bar_OnHide(self)
	self:UnregisterEvent("GLOBAL_MOUSE_DOWN")
end


local function drag_OnMouseDown(self, button)
	local bar = self.bar
	if button == "LeftButton" and not bar.config.lock and bar:IsShown() then
		bar.isDrag = true
		cover:SetFrameStrata(bar:GetFrameStrata())
		cover:SetFrameLevel(bar:GetFrameLevel() + 10)
		cover:SetAllPoints(bar)
		cover:Show()
		local x, y = GetCursorPosition()
		local cx, cy = self:GetCenter()
		local scale = bar:GetEffectiveScale()
		bar.dx = cx - x / scale
		bar.dy = cy - y / scale
		bar:SetScript("OnUpdate", bar.dragBar)
	elseif button == "RightButton" then
		if IsAltKeyDown() then
			bar:setLocked(not bar.config.lock)
			hidingBar.cb:Fire("LOCK_UPDATED", bar.config.lock, bar)
		end
		if IsShiftKeyDown() then
			config:openConfig()
			config:setBar(bar.barSettings)
		end
	end
end


local function drag_OnMouseUp(self, button)
	local bar = self.bar
	if button == "LeftButton" and bar.isDrag then
		bar.isDrag = false
		cover:Hide()
		bar.dx = nil
		bar.dy = nil
		bar:SetScript("OnUpdate", nil)
		if not bar.isMouse then
			bar:leave()
		end
	end
end


local function drag_OnLeave(self)
	fTimer:SetScript("OnUpdate", nil)
	local bar = self.bar
	if bar.config.fade and not bar:IsShown() and self:IsShown() then
		UIFrameFadeOut(self, bar.config.showDelay, self:GetAlpha(), bar.config.fadeOpacity)
	end
	bar:leave()
end


setmetatable(hidingBar.bars, {__index = function(self, key)
	local bar = CreateFrame("FRAME", nil, UIParent, "HidingBarAddonPanel")
	bar:SetClampedToScreen(true)
	bar:SetScript("OnEnter", bar_OnEnter)
	bar:SetScript("OnLeave", bar_OnLeave)
	bar:SetScript("OnEvent", bar_OnEvent)
	bar:SetScript("OnShow", bar_OnShow)
	bar:SetScript("OnHide", bar_OnHide)
	for k, v in pairs(hidingBarMixin) do
		bar[k] = v
	end

	bar.drag = CreateFrame("BUTTON", nil, UIParent)
	bar.drag.bar = bar
	bar.drag:SetClampedToScreen(true)
	bar.drag:SetHitRectInsets(-2, -2, -2, -2)
	bar.drag:SetFrameLevel(bar:GetFrameLevel() + 10)
	bar.drag.bg = bar.drag:CreateTexture(nil, "OVERLAY")
	bar.drag.bg:SetAllPoints()
	bar.drag:SetScript("OnMouseDown", drag_OnMouseDown)
	bar.drag:SetScript("OnMouseUp", drag_OnMouseUp)
	bar.drag:SetScript("OnLeave", drag_OnLeave)
	for k, v in pairs(hidingBarDragMixin) do
		bar.drag[k] = v
	end

	bar.id = key
	self[key] = bar
	return bar
end})
