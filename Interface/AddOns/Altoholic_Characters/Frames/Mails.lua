local addonName = "Altoholic"
local addon = _G[addonName]

addon:Controller("AltoholicUI.TabCharacters.Mails", { "AltoholicUI.Options", function(Options)
	
	local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
	local colors = addon.Colors
	local currentCharacter
	local view, isViewValid
	local viewSortField, viewSortOrder

	local function SortByName(a, b, ascending)
		local valueA = DataStore:GetMailSubject(currentCharacter, a) or ""
		local valueB = DataStore:GetMailSubject(currentCharacter, b) or ""

		if ascending then
			return valueA < valueB
		else
			return valueA > valueB
		end
	end

	local function SortBySender(a, b, ascending)
		local valueA = DataStore:GetMailSender(currentCharacter, a)
		local valueB = DataStore:GetMailSender(currentCharacter, b)

		if ascending then
			return valueA < valueB
		else
			return valueA > valueB
		end
	end

	local function SortByExpiry(a, b, ascending)
		local valueA = select(2, DataStore:GetMailExpiry(currentCharacter, a))
		local valueB = select(2, DataStore:GetMailExpiry(currentCharacter, b))
		
		if ascending then
			return valueA < valueB
		else
			return valueA > valueB
		end
	end
	
	local function BuildView(field, ascending)
		field = field or "expiry"

		view = view or {}
		wipe(view)
		
		local numMails = DataStore:GetNumMails(currentCharacter) or 0
		for i = 1, numMails do
			table.insert(view, i)
		end

		if field == "name" then
			table.sort(view, function(a, b) return SortByName(a, b, ascending) end)
		elseif field == "from" then
			table.sort(view, function(a, b) return SortBySender(a, b, ascending) end)
		elseif field == "expiry" then
			table.sort(view, function(a, b) return SortByExpiry(a, b, ascending) end)
		end
		
		isViewValid = true
	end
	
	return {
		OnBind = function(frame)
			local parent = AltoholicFrame.TabCharacters
			
			frame:SetParent(parent)
			frame:SetPoint("TOPLEFT", parent.Background, "TOPLEFT", 0, 0)
			frame:SetPoint("BOTTOMRIGHT", parent.Background, "BOTTOMRIGHT", 26, 0)
			parent:RegisterPanel("Mails", frame)
			
			-- Handle resize
			frame:SetScript("OnSizeChanged", function(self, width, height)
				if not frame:IsVisible() then return end
			
				frame:Update(true)
			end)
		end,
		PreUpdate = function(frame)
			frame:InvalidateView()
		end,
		
		Sort = function(frame, field, sortOrder)
			viewSortField = field
			viewSortOrder = sortOrder
			
			frame:InvalidateView()
		end,
		InvalidateView = function()
			isViewValid = nil
		end,
		Update = function(frame, isResizing)
			local parent = frame:GetParent()
			local character = parent:GetCharacter()
			if not character then return end
			
			currentCharacter = character
			
			if not isViewValid then
				BuildView(viewSortField, viewSortOrder)
			end
			
			local numMails = DataStore:GetNumMails(character) or 0
		
			-- Set the tab status
			if not isResizing then
				parent:SetStatus(format("%s|r / %s%s", DataStore:GetColoredCharacterName(character), 
					colors.white, format(L["Mails %s(%d)"], colors.green, numMails)))
			end
			
			-- Update the scrollframe
			local scrollFrame = frame.ScrollFrame
			local numRows = scrollFrame.numRows
			local offset = scrollFrame:GetOffset()
			
			local maxDisplayedRows = math.floor(scrollFrame:GetHeight() / scrollFrame.rowHeight)
			
			for rowIndex = 1, numRows do
				local rowFrame = scrollFrame:GetRow(rowIndex)
				local line = rowIndex + offset
				
				if line <= numMails and (rowIndex <= maxDisplayedRows)then	-- if the line is visible
					if not (isResizing and rowFrame:IsVisible()) then
						local index = view[line]

						local icon, count, link, _, _, wasReturned = DataStore:GetMailInfo(character, index)

						rowFrame.Name:SetText(link or DataStore:GetMailSubject(character, index))
						rowFrame.Character:SetText(DataStore:GetMailSender(character, index))

						local msg
						if not wasReturned then
							msg = format(L["Will be %sreturned|r in"], colors.green, colors.white)
						else
							msg = format(L["Will be %sdeleted|r in"], colors.red, colors.white)
						end
				
						local _, seconds = DataStore:GetMailExpiry(character, index)
						rowFrame.Expiry:SetText(format("%s:\n%s%s", msg, colors.white, SecondsToTime(seconds)))
						rowFrame.Item:SetIcon(icon)
						rowFrame.Item:SetCount(count)
						rowFrame.Item:SetID(index)
					end
					rowFrame:Show()
				else
					rowFrame:Hide()
				end
			end

			scrollFrame:Update(#view, maxDisplayedRows)
			frame:Show()
		end,
	}
end})