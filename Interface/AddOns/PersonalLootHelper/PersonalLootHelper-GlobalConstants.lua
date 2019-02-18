-- Slash command
SLASH_PLHCommand1 = '/plh'

-- Keys for the PLH_STATS saved variable array
PLH_ITEMS_REQUESTED					= 'PLH_ITEMS_REQUESTED'
PLH_ITEMS_RECEIVED					= 'PLH_ITEMS_RECEIVED'
PLH_ITEMS_OFFERED					= 'PLH_ITEMS_OFFERED'
PLH_ITEMS_GIVEN_AWAY				= 'PLH_ITEMS_GIVEN_AWAY'

-- Keys for the PLH_META saved variable array
PLH_SHOW_WHISPER_WARNING			= 'PLH_SHOW_WHISPER_WARNING'
PLH_LAST_SEEN_MESSAGE_VERSION		= 'PLH_LAST_SEEN_MESSAGE_VERSION'
PLH_LOOTED_ITEMS_FRAME_X			= 'PLH_LOOTED_ITEMS_FRAME_X'
PLH_LOOTED_ITEMS_FRAME_Y			= 'PLH_LOOTED_ITEMS_FRAME_Y'
PLH_LOOTED_ITEMS_FRAME_WIDTH		= 'PLH_LOOTED_ITEMS_FRAME_WIDTH'
PLH_LOOTED_ITEMS_FRAME_HEIGHT		= 'PLH_LOOTED_ITEMS_FRAME_HEIGHT'

-- Keys for the PLH_PREFS saved variable array
PLH_PREFS_DEBUG							= 'PLH_DEBUG'
PLH_PREFS_AUTO_HIDE						= 'PLH_AUTO_HIDE'
PLH_PREFS_SKIP_CONFIRMATION				= 'PLH_SKIP_CONFIRMATION'
PLH_PREFS_ONLY_OFFER_IF_UPGRADE			= 'PLH_ONLY_OFFER_IF_UPGRADE'
PLH_PREFS_NEVER_OFFER_BOE				= 'PLH_NEVER_OFFER_BOE'
PLH_PREFS_CURRENT_SPEC_ONLY				= 'PLH_CURRENT_SPEC_ONLY'
PLH_PREFS_ILVL_THRESHOLD				= 'PLH_ILVL_THRESHOLD'
PLH_PREFS_INCLUDE_XMOG					= 'PLH_INCLUDE_XMOG'
PLH_PREFS_WHISPER_MESSAGE				= 'PLH_WHISPER_MESSAGE'
PLH_PREFS_SHOW_TRADEABLE_ALERT			= 'PLH_SHOW_TRADEABLE_ALERT'
PLH_PREFS_ANNOUNCE_TRADES				= 'PLH_ANNOUNCE_TRADES'

-- Default values for PLH_PREFS saved variable array
PLH_DEFAULT_PREFS = {
	[PLH_PREFS_DEBUG]					= false,
	[PLH_PREFS_AUTO_HIDE]				= true,
	[PLH_PREFS_SKIP_CONFIRMATION]		= false,
	[PLH_PREFS_ONLY_OFFER_IF_UPGRADE]	= false,
	[PLH_PREFS_NEVER_OFFER_BOE]			= false,
	[PLH_PREFS_CURRENT_SPEC_ONLY]		= false,
	[PLH_PREFS_ILVL_THRESHOLD]			= 0,
	[PLH_PREFS_INCLUDE_XMOG]			= true,
	[PLH_PREFS_WHISPER_MESSAGE]			= "May I please have %item if you don't need it?",
	[PLH_PREFS_SHOW_TRADEABLE_ALERT]	= true,
	[PLH_PREFS_ANNOUNCE_TRADES]			= false
}

-- Roles
PLH_ROLE_AGILITY_DPS				= 'AGILITY_DPS'
PLH_ROLE_INTELLECT_DPS				= 'INTELLECT_DPS'
PLH_ROLE_STRENGTH_DPS				= 'STRENGTH_DPS'
PLH_ROLE_HEALER						= 'HEALER'
PLH_ROLE_TANK						= 'TANK'
PLH_ROLE_UNKNOWN					= 'UNKNOWN'
