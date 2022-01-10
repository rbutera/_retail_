local addonName = "Altoholic"
local addon = _G[addonName]
local colors = addon.Colors
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)

addon:Controller("AltoholicUI.GridsRow", { "AltoholicUI.Options", function(Options)

	return {
		Update = function(frame, account, realm, page, obj, line)
			-- obj refers to the "object" containing all the callbacks for the current grid panel
			
			for colIndex = 1, 12 do
				local button = frame[format("Item%d", colIndex)]
				button.IconBorder:Hide()
				
				local optionIndex = ((page - 1) * 12) + colIndex		-- Pages = 1-12, 13-24, etc..
				
				local character = Options.Get(format("Tabs.Grids.%s.%s.Column%d", account, realm, optionIndex))
				
				if character then
					button:SetScript("OnEnter", obj.OnEnter)
					button:SetScript("OnClick", obj.OnClick)
					button:SetScript("OnLeave", obj.OnLeave)
					
					-- note: this Show() must remain BEFORE the next call, if the button has to be hidden, it's done in ColumnSetup
					button:Show()
					obj:ColumnSetup(button, line, character)
				else
					button.id = nil
					button:Hide()
				end
			end
			frame:Show()
		end,
		-- Name_OnEnter = function(frame)
		-- end,
	}
end})
