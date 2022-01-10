function TwitchStatsScreen_OnLoad()
    
    TwitchEmoteSentStatKeys = {}
    local n = 0;
    local totalEmotesSent = 0;
    for k,v in pairs(TwitchEmoteStatistics) do
        if TwitchEmotes_defaultpack[k] ~= nil and v[2] > 0 then -- Only add if the emote still exsists
            n=n+1;
            totalEmotesSent = totalEmotesSent + v[2];
            TwitchEmoteSentStatKeys[n]=k;
        end
    end

    TwitchStatsScreenSentListTitle:SetText("Sent " .. totalEmotesSent .. " emotes")
    
    --Sort the sent stats list by usage
    table.sort(TwitchEmoteSentStatKeys, function(left, right)
        return TwitchEmoteStatistics[left][2] > TwitchEmoteStatistics[right][2]
    end);

    TwitchEmoteRecievedStatKeys = {}
    local n = 0;
    local totalEmotesSeen = 0;
    for k,v in pairs(TwitchEmoteStatistics) do
        if TwitchEmotes_defaultpack[k] ~= nil and v[3] > 0 then -- Only add if the emote still exsists
            n=n+1;
            totalEmotesSeen = totalEmotesSeen + v[3];
            TwitchEmoteRecievedStatKeys[n]=k;
        end
    end
    TwitchStatsScreenSeenListTitle:SetText("Seen " .. totalEmotesSeen .. " emotes")

    --Sort the seen stats list by nr of times seen
    table.sort(TwitchEmoteRecievedStatKeys, function(left, right)
        return TwitchEmoteStatistics[left][3] > TwitchEmoteStatistics[right][3]
    end);

    TwitchStatsScreen:SetBackdrop({
        bgFile = 'Interface\\DialogFrame\\UI-DialogBox-Background-Dark',
        edgeFile = 'Interface\\DialogFrame\\UI-DialogBox-Background-Dark',
        tile = true,
        tileSize = 32,
        edgeSize = 1,
        insets = {
            left = 0,
            right = 0,
            top = 0,
            bottom = 0
        } 
    })

    TwitchStatsScreen.closeButton = CreateFrame('Button', "TwitchStatsCloseButton", TwitchStatsScreen, 'UIPanelCloseButtonNoScripts')
	TwitchStatsScreen.closeButton:SetScript('OnClick', function() TwitchStatsScreen:Hide() end)
	TwitchStatsScreen.closeButton:SetPoint('TOPRIGHT', 0, 2)

    local engineeringGemTexture = "Interface\\ItemSocketingFrame\\UI-EngineeringSockets";
    local emoteBorderTex = {tex=engineeringGemTexture, w=43, h=43, left=0.01562500, right=0.68750000, top=0.41210938, bottom=0.49609375, r=1, g=1, b=1, CBx=49, CBy=47, CBLeft=0.01562500, CBRight=0.78125000, CBTop=0.22070313, CBBottom=0.31250000, OBx=49, OBy=47, OBLeft=0.01562500, OBRight=0.78125000, OBTop=0.31640625, OBBottom=0.40820313};
    local topEmoteBorder = TwitchStatsScreen:CreateTexture(nil, "BACKGROUND", nil, 1);
    topEmoteBorder:SetTexture(emoteBorderTex.tex);
    topEmoteBorder:SetWidth(emoteBorderTex.w * 2);
    topEmoteBorder:SetHeight(emoteBorderTex.h * 2);
    topEmoteBorder:SetTexCoord(emoteBorderTex.left, emoteBorderTex.right, emoteBorderTex.top, emoteBorderTex.bottom);
    topEmoteBorder:SetPoint('CENTER', TwitchStatsScreen, "TOPLEFT", 128, -108)
    topEmoteBorder:Show();

    local topSentImagePath = TwitchEmotes_defaultpack[TwitchEmoteSentStatKeys[1]] or "Interface\\AddOns\\TwitchEmotes\\Emotes\\1337.tga";
    local size = string.match(topSentImagePath, ":(.*)")
    if size then
        topSentImagePath = string.gsub(topSentImagePath, size, "")
    end
    local topEmoteTexture = TwitchStatsScreen:CreateTexture(nil, "BACKGROUND", nil, 2);
    topEmoteTexture:SetTexture(topSentImagePath);
    topEmoteTexture:SetWidth(70);
    topEmoteTexture:SetHeight(70);
    topEmoteTexture:SetPoint('CENTER', TwitchStatsScreen, "TOPLEFT", 128, -108)
    topEmoteTexture:Show();

    if #TwitchEmoteSentStatKeys >= 1 and TwitchEmoteStatistics[TwitchEmoteSentStatKeys[1]][2] > 0 then
        TwitchStatsScreenTopSentText:SetText(TwitchEmoteSentStatKeys[1] .. " sent " .. TwitchEmoteStatistics[TwitchEmoteSentStatKeys[1]][2] .. "x")
    else
        TwitchStatsScreenTopSentText:SetText("No emotes sent yet");
    end

    if #TwitchEmoteRecievedStatKeys >= 1 and TwitchEmoteStatistics[TwitchEmoteRecievedStatKeys[1]][3] > 0 then
        TwitchStatsScreenTopRecievedText:SetText(TwitchEmoteRecievedStatKeys[1] .. " seen " .. TwitchEmoteStatistics[TwitchEmoteRecievedStatKeys[1]][3] .. "x")
    else
        TwitchStatsScreenTopRecievedText:SetText("No emotes seen yet");
    end

    topEmoteBorder = TwitchStatsScreen:CreateTexture(nil, "BACKGROUND", nil, 1);
    topEmoteBorder:SetTexture(emoteBorderTex.tex);
    topEmoteBorder:SetWidth(emoteBorderTex.w * 2);
    topEmoteBorder:SetHeight(emoteBorderTex.h * 2);
    topEmoteBorder:SetTexCoord(emoteBorderTex.left, emoteBorderTex.right, emoteBorderTex.top, emoteBorderTex.bottom);
    topEmoteBorder:SetPoint('CENTER', TwitchStatsScreen, "TOPLEFT", 384, -108)
    topEmoteBorder:Show();

    local topSeenImagePath = TwitchEmotes_defaultpack[TwitchEmoteRecievedStatKeys[1]] or "Interface\\AddOns\\TwitchEmotes\\Emotes\\1337.tga";
    size = string.match(topSeenImagePath, ":(.*)")
    if size then
        topSeenImagePath = string.gsub(topSeenImagePath, size, "")
    end

    topEmoteTexture = TwitchStatsScreen:CreateTexture(nil, "BACKGROUND", nil, 2);
    topEmoteTexture:SetTexture(topSeenImagePath);
    topEmoteTexture:SetWidth(70);
    topEmoteTexture:SetHeight(70);
    topEmoteTexture:SetPoint('CENTER', TwitchStatsScreen, "TOPLEFT", 384, -108)
    topEmoteTexture:Show();

    --Instantiate the scroll list entries
    for i=2, 17  do
        local twitchStatSentScrollEntry = CreateFrame('Button', "TwitchStatsSentEntry"..i, TwitchStatsScreen, 'TwitchStatsEntryTemplate')
        twitchStatSentScrollEntry:SetPoint("TOPLEFT", "TwitchStatsSentEntry"..(i-1), "BOTTOMLEFT", 0, 0);

        local twitchStatRecievedScrollEntry = CreateFrame('Button', "TwitchStatsRecievedEntry"..i, TwitchStatsScreen, 'TwitchStatsEntryTemplate')
        twitchStatRecievedScrollEntry:SetPoint("TOPLEFT", "TwitchStatsRecievedEntry"..(i-1), "BOTTOMLEFT", 0, 0);
        --print("constructed TwitchStatsSentEntry" .. i .. " (parent TwitchStatsSentEntry" ..(i-1) )
    end

    TwitchStatsScreen:Show()
    TwitchStatsSentScrollBar:Show()
    TwitchStatsRecievedScrollBar:Show()
end

function TwitchStatsSentScrollBar_Update()
    local nrOfItemsVisible = 17
    local line;
    local lineplusoffset; -- an index into our data calculated from the scroll offset
    
    FauxScrollFrame_Update(TwitchStatsSentScrollBar,#TwitchEmoteSentStatKeys,nrOfItemsVisible,16);
    for line=1, nrOfItemsVisible do
      lineplusoffset = line + FauxScrollFrame_GetOffset(TwitchStatsSentScrollBar);
      if lineplusoffset <= #TwitchEmoteSentStatKeys then
        local cEmote = TwitchEmoteSentStatKeys[lineplusoffset];
        local fullEmotePath = TwitchEmotes_defaultpack[cEmote]
        local size = string.match(fullEmotePath, ":(.*)")
        local path_and_size = string.gsub(fullEmotePath, size, "16:16")
        
        getglobal("TwitchStatsSentEntry"..line):SetText("|cFFfce703" .. lineplusoffset ..".|r |T".. path_and_size .."|t " .. " |cFF00FF00"..cEmote.."|r sent: " .. TwitchEmoteStatistics[cEmote][2] .. "x");
        getglobal("TwitchStatsSentEntry"..line):Show();
        
      else
        getglobal("TwitchStatsSentEntry"..line):Hide();
      end
    end
end

function TwitchStatsRecievedScrollBar_Update()
    local nrOfItemsVisible = 17
    local line;
    local lineplusoffset; -- an index into our data calculated from the scroll offset
    
    FauxScrollFrame_Update(TwitchStatsRecievedScrollBar,#TwitchEmoteRecievedStatKeys,nrOfItemsVisible,16);
    for line=1, nrOfItemsVisible do
      lineplusoffset = line + FauxScrollFrame_GetOffset(TwitchStatsRecievedScrollBar);
      if lineplusoffset <= #TwitchEmoteRecievedStatKeys then
        local cEmote = TwitchEmoteRecievedStatKeys[lineplusoffset];
        local fullEmotePath = TwitchEmotes_defaultpack[cEmote]
        local size = string.match(fullEmotePath, ":(.*)")
        local path_and_size = string.gsub(fullEmotePath, size, "16:16")
        
        getglobal("TwitchStatsRecievedEntry"..line):SetText("|cFFfce703" .. lineplusoffset ..".|r |T".. path_and_size .."|t " .. " |cFF00FF00"..cEmote.."|r seen: " .. TwitchEmoteStatistics[cEmote][3] .. "x");
        getglobal("TwitchStatsRecievedEntry"..line):Show();
        
      else
        getglobal("TwitchStatsRecievedEntry"..line):Hide();
      end
    end
end