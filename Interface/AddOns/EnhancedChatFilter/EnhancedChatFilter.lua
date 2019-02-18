EnhancedChatFilter = LibStub("AceAddon-3.0"):NewAddon("EnhancedChatFilter", "AceConsole-3.0", "AceEvent-3.0")
LibStub("AceConfigRegistry-3.0"):NotifyChange("EnhancedChatFilter")

--Create default values for database
local defaults = {
	profile = {
		--if filter is enabled
		enableFilter = true,
		--if message needs to be deleted instead of changed to a filterd word
		enableDelete = false,
		--list of black listed words
		blackList = {},
		--minimap options
		minimap = {
				hide = false,	
				enableMinimapIcon = true,				
			}
	}
}

--create minimap icon data
local ecfLDB = LibStub("LibDataBroker-1.1"):NewDataObject("Enhanced Chat Filter", {
	type = "data source",
	text = "Enhanced Chat Filter",
	icon = "Interface\\Icons\\Trade_Archaeology_Orc_BloodText",
	OnClick = function() EnhancedChatFilter:EnhancedChatFilterOpen() end,
	OnTooltipShow = function(tooltip)
		tooltip:AddLine("|cffecf0f1Enhanced Chat Filter|r\nClick to open");
	end
})

--create Libstub variable
local icon = LibStub("LibDBIcon-1.0")

--on initializing of addon
function EnhancedChatFilter:OnInitialize()
	EnhancedChatFilter:RegisterChatCommand("cf", "EnhancedChatFilterOpen")
	EnhancedChatFilter:RegisterChatCommand("cf-toggle", "EnhancedChatFilterToggle")
	EnhancedChatFilter:RegisterChatCommand("cf-clear", "EnhancedChatFilterClear")
	
	self.db = LibStub("AceDB-3.0"):New("ecfDB", defaults, "Default")	
	icon:Register("Enhanced Chat Filter", ecfLDB, self.db.profile.minimap)
end;

--getters and setters for database values
function EnhancedChatFilter:GetEnableFilter(info)
    return self.db.profile.enableFilter;
end;

function EnhancedChatFilter:ToggleEnableFilter(info, value)
    self.db.profile.enableFilter = value;	
end;

function EnhancedChatFilter:GetEnableDelete(info)
    return self.db.profile.enableDelete;
end;

function EnhancedChatFilter:ToggleEnableDelete(info, value)
    self.db.profile.enableDelete = value;	
end;

function EnhancedChatFilter:GetEnableMinimapIcon(info)
    return self.db.profile.minimap.enableMinimapIcon;
end;

function EnhancedChatFilter:ToggleEnableMinimapIcon(info, value)
    self.db.profile.minimap.enableMinimapIcon = value;	
end;

function EnhancedChatFilter:GetMinimapStatus(info)
    return self.db.profile.minimap.hide;
end;

function EnhancedChatFilter:SetMinimapStatus(info, value)
    self.db.profile.minimap.hide = value;	
end;


function EnhancedChatFilter:GetBlackList(info)
    return self.db.profile.blackList;
end;

function EnhancedChatFilter:InsertBlackList(info, value,typeModus)
    table.insert(self.db.profile.blackList,{value,typeModus})
end;

function EnhancedChatFilter:RemoveFromBlackList(info, index)
    table.remove(self.db.profile.blackList,index)
end;


function EnhancedChatFilter:ClearBlackList(info, index)
   self.db.profile.blackList = {}
end;


--method run on /cf
function EnhancedChatFilter:EnhancedChatFilterOpen()
	if(blackListFrame:IsVisible() == false) then
		blackListFrame:Show()
	    unlockHighlight()
		removeButton:Disable()
	else 
		blackListFrame:Hide()	
	end
end

--method run on /cf-toggle
function EnhancedChatFilter:EnhancedChatFilterToggle()
	if(EnhancedChatFilter:GetEnableFilter(info) == false) then
		EnhancedChatFilter:ToggleEnableFilter(info, true)
		print("Chat filter is now enabled")
		SetToggleText(EnhancedChatFilter:GetEnableFilter(info),'filter')
	else 
		EnhancedChatFilter:ToggleEnableFilter(info, false)
		print("Chat filter is now disabled")
		SetToggleText(EnhancedChatFilter:GetEnableFilter(info),'filter')
	end
	
end

--method run on /cf-clear
function EnhancedChatFilter:EnhancedChatFilterClear()
	EnhancedChatFilter:ClearBlackList(info)
	blackListScroll.ScrollFrameUpdate()
	print("Blacklist cleared")
end

-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
-- create startup event when player logs in
local startUp = CreateFrame("Frame")
startUp:RegisterEvent("PLAYER_LOGIN");

--function that gets called when an event within startUp triggers.
startUp:SetScript("OnEvent", function(self, event, ...)
	BuildUpFrame()
	print("|cffffff00Enhanced Chat Filter|r|cff3498db v1.00|cffecf0f1 - type in '/cf' to open the options panel");
end)

--to which words get filtered
local filterLetters = {'!', '@', '#', '$' ,'%', '^', '&', '*'}

--main filter function
function filterdWords(self,event,msg,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,arg15)
	--if filter is enabled
	if(EnhancedChatFilter:GetEnableFilter(info) == true) then
	
		--create list of all the words
		list = {}
		blacklist = EnhancedChatFilter:GetBlackList(info)
		index = 1
		
		for  i in string.gmatch(msg, "%S+") do
		   list[index] = i
		   index = index + 1
		end
		
		--loop over all words and check if the word is blacklisted 
		--if it is recreate a filteredword and put it back in the table
		for ind, word in ipairs(list) do	
			for _, blacklistWord in ipairs(blacklist) do	
				if(word == blacklistWord[1]) then
					l = string.len(word)
					str = createFilteredWord(l)
					list[ind] = str
					
					--return new filteredmsg or return nothing if delete is enabled
					if(EnhancedChatFilter:GetEnableDelete() == true) and (blacklistWord[2] == 'hide') then
						--return true =  deletion of message from chat
						return true
					end
				end				
			end
		end		
		
		--create new filteredmsg
		filteredMsg = ""
		for _, word in ipairs(list) do	
			filteredMsg = filteredMsg .. " " .. word
		end
		
		--return false = filter words and display message
		return false, filteredMsg , arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13,arg14,arg15
	end
end

--method to filter word into filterletters
function createFilteredWord(length)
    str = ""
	local f = {}
	i = 1
	while i  <= length do
		i = i + 1
		table.insert(f,filterLetters[math.random(#filterLetters)])
	end
  
	for _, letter  in ipairs(f) do
		str = str .."".. letter
	end
	
	return str
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY",filterdWords)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER",filterdWords)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER_INFORM",filterdWords)
ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL",filterdWords)
ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD",filterdWords)
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY",filterdWords)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID",filterdWords)
ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY",filterdWords)
ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL",filterdWords)
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER",filterdWords)

----------------------------------------------------------------------------------------------------------------------------------
---------------------------------------FRAMES-------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------

--main frames
blackListFrame = CreateFrame("Frame","ConfigFrame",UIParent,"BasicFrameTemplate")
blackListScroll = CreateFrame("Frame", "ScrollFrame", blackListFrame)

--text
titleText =  blackListFrame:CreateFontString("frametext" ,"ARTWORK","GameFontNormal")
titleScroll =  blackListFrame:CreateFontString("frametext" ,"ARTWORK","GameFontNormal")
titleAdd =  blackListFrame:CreateFontString("frametext" ,"ARTWORK","GameFontNormal")
titleOptions =  blackListFrame:CreateFontString("frametext" ,"ARTWORK","GameFontNormal")
toggleText =  blackListFrame:CreateFontString("frametext" ,"ARTWORK","GameFontNormal")
minimapToggleText =  blackListFrame:CreateFontString("frametext" ,"ARTWORK","GameFontNormal")
titleCommands =  blackListFrame:CreateFontString("frametext" ,"ARTWORK","GameFontNormal")
textCommands =  blackListFrame:CreateFontString("frametext" ,"ARTWORK","GameFontNormal")
deleteToggleText =  blackListFrame:CreateFontString("frametext" ,"ARTWORK","GameFontNormal")
deleteInfoText =  blackListFrame:CreateFontString("frametext" ,"ARTWORK","GameFontNormalSmall")

--toggles , input fields, buttons etc
blackListWordField = CreateFrame("EditBox", "blackListWordField", blackListFrame,"InputBoxTemplate")

blackListWordDrop = CreateFrame("Button", "DropDownMenuTest", blackListFrame, "UIDropDownMenuTemplate")

EnableFilterToggle = CreateFrame("CheckButton", "EnableFilterToggle", blackListFrame,"UICheckButtonTemplate")
EnableMinimap = CreateFrame("CheckButton", "EnableMinimap", blackListFrame,"UICheckButtonTemplate")
EnableDelete = CreateFrame("CheckButton", "enableDelete", blackListFrame,"UICheckButtonTemplate")

removeButton = CreateFrame("Button", "removeButton", blackListFrame, "UIPanelButtonTemplate")
addButton = CreateFrame("Button", "addButton", blackListFrame, "UIPanelButtonTemplate")

local selectedWord = ""
local types = {
	   "filter",
	   "hide",
}
	 
function BuildUpFrame()
	blackListFrame:SetSize(500,400) -- width, height
	blackListFrame:SetPoint("Center",UIParent,"CENTER",0,0)
	blackListFrame:SetFrameStrata("HIGH")
	blackListFrame:SetBackdrop({bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16, edgeSize = 16,insets = { left = 4, right = 4, top = 4, bottom = 4 }})
	blackListFrame:Hide();
	
	----------------------------------------------
	--------------dropdown for types--------------
	blackListWordDrop:SetPoint("RIGHT",blackListFrame,"RIGHT",0,100)
	 
	function OnClick(self)
	    UIDropDownMenu_SetSelectedID(DropDownMenuTest, self:GetID())
		typeWord = self:GetText();
		if(newWord ~= nil) and (newWord ~= "") then
			addButton:Enable()
		end
	end
	
	function initialize(self, level)
	   local info = UIDropDownMenu_CreateInfo()
	   typeWord=types[1]
	   
	   for k,v in pairs(types) do
		  info = UIDropDownMenu_CreateInfo()
		  info.text = v
		  info.value = v
		  info.func = OnClick
		  UIDropDownMenu_AddButton(info, level)
	   end
	end
	 
	UIDropDownMenu_Initialize(DropDownMenuTest, initialize)
	UIDropDownMenu_SetWidth(DropDownMenuTest, 187);
	UIDropDownMenu_SetButtonWidth(DropDownMenuTest, 124)
	UIDropDownMenu_SetSelectedID(DropDownMenuTest, 1)
	UIDropDownMenu_JustifyText(DropDownMenuTest, "LEFT")
	-----------------------------------------------------------
	
	blackListScroll:SetPoint("LEFT",blackListFrame,"LEFT",10,-10)
	blackListScroll:SetSize(250,300) -- width, height
	blackListScroll:SetBackdrop({edgeFile = "Interface/Tooltips/UI-Tooltip-Border",tile = true, tileSize = 16, edgeSize = 16,insets = { left = 4, right = 4, top = 4, bottom = 4 }})

	EnableFilterToggle:SetPoint("RIGHT",blackListFrame,"RIGHT",-188,20)
	EnableFilterToggle:SetScript("OnClick", function(self, button, down)
	  SetToggleText(EnableFilterToggle:GetChecked(),'filter')
	end)

	EnableMinimap:SetPoint("RIGHT",blackListFrame,"RIGHT",-188,-10)
	EnableMinimap:SetScript("OnClick", function(self, button, down)
	  SetToggleText(EnableMinimap:GetChecked(),'minimap')
	end)
	
	EnableDelete:SetPoint("RIGHT",blackListFrame,"RIGHT",-188,-40)
	EnableDelete:SetScript("OnClick", function(self, button, down)
	  SetToggleText(EnableDelete:GetChecked(),'delete')
	end)

	blackListWordField:SetPoint("RIGHT",blackListFrame,"RIGHT",-15,130)
	blackListWordField:SetSize(200,50) -- width, height
	blackListWordField:SetMaxLetters(40)
	blackListWordField:SetTextInsets(5, 5, 2, 2)
	blackListWordField:SetText("")
	blackListWordField:SetAutoFocus(false)
	blackListWordField:SetScript("OnTextChanged", function(self,userinput)
		if(userinput == true) then
			newWord = self:GetText();
			if(typeWord ~= nil) and (typeWord ~= "") then
				addButton:Enable()
			end
		end
	end)
		
	addButton:SetSize(205,30) -- width, height
	addButton:SetText("Add new word")
	addButton:SetPoint("RIGHT",blackListFrame,"RIGHT",-15,70)
	addButton:SetScript("OnClick", function()	  
			EnhancedChatFilter:InsertBlackList(info,newWord,typeWord)
			blackListScroll.ScrollFrameUpdate()
			blackListWordField:SetText("")
			newWord = ""
			blackListWordField:ClearFocus()
			addButton:Disable()
	end)
	addButton:Disable()
	
	removeButton:SetSize(250 ,30) -- width, height
	removeButton:SetText("Remove blacklisted word")
	removeButton:SetPoint("LEFT",blackListFrame,"LEFT",10,-175)
	removeButton:SetScript("OnClick", function()	
		for i, word  in ipairs(	EnhancedChatFilter:GetBlackList(info)) do
			if(selectedWord == word[1].." |cff95a5a6of type: "..word[2]) then			
			   unlockHighlight()
			   EnhancedChatFilter:RemoveFromBlackList(info, i)
			   blackListScroll.ScrollFrameUpdate()
			   removeButton:Disable()
			   return true;
			end
		end
	end)
	removeButton:Disable()

	titleText:SetPoint("CENTER", blackListFrame, "TOP", 0, -10)
	titleText:SetJustifyH("left")
	titleText:SetText("Enhanced Chat Filter")
	
	toggleText:SetPoint("LEFT",blackListFrame,"LEFT",320,20)
	toggleText:SetJustifyH("LEFT")
	SetToggleText('no','filter')
	
	minimapToggleText:SetPoint("LEFT",blackListFrame,"LEFT",320,-10)
	minimapToggleText:SetJustifyH("LEFT")
	SetToggleText('no','minimap')
	
	deleteToggleText:SetPoint("LEFT",blackListFrame,"LEFT",320,-40)
	deleteToggleText:SetJustifyH("LEFT")
	SetToggleText('no','delete')
	
	deleteInfoText:SetPoint("LEFT",blackListFrame,"LEFT",287,-80)
	deleteInfoText:SetJustifyH("LEFT")
	deleteInfoText:SetText("|cffecf0f1Hide modus means that sentences\nthat contain black listed words of the\ntype'hide' will be hidden from the chat.\nWith this mode on only black listed\nwords of the type 'filter' will be shown.")
	
	titleOptions:SetPoint("RIGHT", blackListFrame, "RIGHT", -90,40)
	titleOptions:SetJustifyH("center")
	titleOptions:SetText("Options")

	titleAdd:SetPoint("RIGHT", blackListFrame, "RIGHT", -38,160)
	titleAdd:SetJustifyH("center")
	titleAdd:SetText("Add new blacklist word")
	
	titleScroll:SetPoint("LEFT", blackListFrame, "LEFT",100,160)
	titleScroll:SetJustifyH("center")
	titleScroll:SetText("Blacklist")	
	
	titleCommands:SetPoint("RIGHT", blackListFrame, "RIGHT", -90,-130)
	titleCommands:SetJustifyH("center")
	titleCommands:SetText("Commands")	
	
	textCommands:SetPoint("RIGHT", blackListFrame, "RIGHT", -20,-160)
	textCommands:SetJustifyH("left")
	textCommands:SetText("|cff3498db/cf|cffecf0f1 - toggle options panel\n|cff3498db/cf-toggle|cffecf0f1 - toggle filter on/off\n|cff3498db/cf-clear|cffecf0f1 - clear blacklist")	
	
	blackListScroll.list = {}
	for i=1,14 do
		 blackListScroll.list[i] = CreateFrame("Button",nil,blackListScroll,"SecureHandlerClickTemplate")
		 blackListScroll.list[i]:SetSize(200,20)
		 blackListScroll.list[i]:SetPoint("TOPLEFT",blackListScroll,"TOPLEFT",8,(i-1)*-20-5)
		 blackListScroll.list[i]:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight","ADD")
		 blackListScroll.list[i]:RegisterForClicks("AnyUp", "AnyDown")
		 
		 blackListScroll.list[i].name = blackListScroll.list[i]:CreateFontString(nil,"ARTWORK","GameFontHighlight")
		 blackListScroll.list[i].name:SetSize(200-16-8,50) 
		 blackListScroll.list[i].name:SetJustifyV("CENTER") 
		 blackListScroll.list[i].name:SetJustifyH("LEFT") 
		 
		 blackListScroll.list[i]:SetScript("OnClick", function()
			unlockHighlight()
			blackListScroll.list[i]:LockHighlight()
			removeButton:Enable()
			selectedWord = blackListScroll.list[i].name:GetText()
		 end)
	 end
	 blackListScroll.scrollFrame = CreateFrame("ScrollFrame","FauxScrollFrameTestScrollFrame",blackListScroll,"FauxScrollFrameTemplate")
	 blackListScroll.scrollFrame:SetPoint("TOPLEFT",blackListScroll,"TOPLEFT",0,-6)
	 blackListScroll.scrollFrame:SetPoint("BOTTOMRIGHT",blackListScroll,"BOTTOMRIGHT",-28,6)
	 blackListScroll.scrollFrame:SetScript("OnShow",blackListScroll.ScrollFrameUpdate)
	 blackListScroll.scrollFrame:SetScript("OnVerticalScroll",function(self,offset)
		FauxScrollFrame_OnVerticalScroll(self,offset,20,blackListScroll.ScrollFrameUpdate)
	 end)
end

function blackListScroll.ScrollFrameUpdate()
 local offset = FauxScrollFrame_GetOffset(blackListScroll.scrollFrame)
 FauxScrollFrame_Update(blackListScroll.scrollFrame, tablelength(EnhancedChatFilter:GetBlackList(info)), 14, 20)
 
 for i=1,14 do
	local idx = offset+i
	if idx<=tablelength(EnhancedChatFilter:GetBlackList(info)) then
		blackListScroll.list[i].name:SetPoint("LEFT",blackListScroll.list[i],"LEFT",2)
		blackListScroll.list[i].name:SetTextColor(1,1,1)
		blackListScroll.list[i].name:SetText(EnhancedChatFilter:GetBlackList(info)[idx][1].." |cff95a5a6of type: ".. EnhancedChatFilter:GetBlackList(info)[idx][2])
		
		blackListScroll.list[i]:Show()
	else
		blackListScroll.list[i]:Hide()
	end
 end
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function SetToggleText(check,typeToggle)
   if(typeToggle  == 'filter') then
		if(check ~= 'no') then
			EnhancedChatFilter:ToggleEnableFilter(info,check)
		end

		if(EnhancedChatFilter:GetEnableFilter(info) == true) then
			toggleText:SetText("|cff2ed689Chat filter is enabled")
			EnableFilterToggle:SetChecked(true)
		else 
			toggleText:SetText("|cffE2252DChat filter is disabled")
			EnableFilterToggle:SetChecked(false)
		end
	elseif(typeToggle == 'minimap') then
		if(check ~= 'no') then
			EnhancedChatFilter:ToggleEnableMinimapIcon(info,check)
		end

		if(EnhancedChatFilter:GetEnableMinimapIcon(info) == true) then
			minimapToggleText:SetText("|cff2ed689Minimap icon is enabled")
			EnableMinimap:SetChecked(true)
			EnhancedChatFilter:SetMinimapStatus(true)
			icon:Show("Enhanced Chat Filter")
			
		else 
			minimapToggleText:SetText("|cffE2252DMinimap icon is disabled")
			EnableMinimap:SetChecked(false)
			EnhancedChatFilter:SetMinimapStatus(false)
			icon:Hide("Enhanced Chat Filter")

		end
	elseif(typeToggle == 'delete') then
		if(check ~= 'no') then
			EnhancedChatFilter:ToggleEnableDelete(info,check)
		end

		if(EnhancedChatFilter:GetEnableDelete(info) == true) then
			deleteToggleText:SetText("|cff2ed689Hide modus is enabled")
			EnableDelete:SetChecked(true)
		else 
			deleteToggleText:SetText("|cffE2252DHide modus is disabled")
			EnableDelete:SetChecked(false)
		end
	end
end

function unlockHighlight()
	local offset = FauxScrollFrame_GetOffset(blackListScroll.scrollFrame)
	for i=1,14 do
		local idx = offset+i
		blackListScroll.list[i]:UnlockHighlight()
	 end
end

