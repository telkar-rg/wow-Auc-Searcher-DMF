local ADDON_NAME, ADDON_TABLE = ...

-- Create a new instance of our lib with our parent
local lib, parent, private = AucSearchUI.NewSearcher("Darkmoon")
if not lib then return end
local print,decode,_,_,replicate,empty,_,_,_,debugPrint,fill = AucAdvanced.GetModuleLocals()
local get,set,default,Const = AucSearchUI.GetSearchLocals()
lib.tabname = "Darkmoon"

local L = ADDON_TABLE.Locale
if not L then
	print(ADDON_NAME,"ERROR with Locale")
	return
end

-- Set our defaults
default("darkmoonfairecards.deckprice", 2000*10000)
default("darkmoonfairecards.budgetMaxPer", 1.25)

default("darkmoonfairecards.cards.rogue", 1)
default("darkmoonfairecards.cards.sword", 1)
default("darkmoonfairecards.cards.mage", 1)
default("darkmoonfairecards.cards.demon", 1)

default("darkmoonfairecards.cards.vanilla", 1)
default("darkmoonfairecards.cards.tbc", 1)
default("darkmoonfairecards.cards.wotlk", 1)

default("darkmoonfairecards.craft.rogue", 1)
default("darkmoonfairecards.craft.sword", 1)
default("darkmoonfairecards.craft.mage", 1)
default("darkmoonfairecards.craft.demon", 1)

default("darkmoonfairecards.craft.vanilla", 1)
default("darkmoonfairecards.craft.tbc", 1)
default("darkmoonfairecards.craft.wotlk", 1)

default("darkmoonfairecards.overhead.primal", 20*10000)
default("darkmoonfairecards.overhead.eternal", 30*10000)
default("darkmoonfairecards.mats.primal", 1)
default("darkmoonfairecards.mats.eternal", 1)

local COL_blue = 	"\124cFF".."2399ff".."%s\124r"
local COL_green = 	"\124cFF".."2aff1a".."%s\124r"
local COL_yellow = 	"\124cFF".."fdff00".."%s\124r"
local COL_orange = 	"\124cFF".."fe991a".."%s\124r"
local COL_red = 	"\124cFF".."ff0000".."%s\124r"


function private.createMap(x)

	local out = {};

	for i,v in ipairs(x) do
		if (v) then
			out[v] = true;
		end
	end

	return out;
end

local epicCardsDecksVanilla = private.createMap({
	19227, 19230, 19231, 19232, 19233, 19234, 19235, 19236, -- beasts
	19276, 19278, 19279, 19280, 19281, 19282, 19283, 19284, -- portals
	19258, 19259, 19260, 19261, 19262, 19263, 19264, 19265, -- warlords
	19268, 19269, 19270, 19271, 19272, 19273, 19274, 19275, -- elementals
	19228, -- beasts
	19277, -- portals
	19257, -- warlords
	19267, -- elementals

0});

local epicCardsDecksTbc = private.createMap({
	31901, 31909, 31908, 31904, 31903, 31906, 31905, 31902, -- furies
	31892, 31900, 31899, 31895, 31894, 31898, 31896, 31893, -- storms
	31882, 31889, 31888, 31885, 31884, 31887, 31886, 31883, -- blessings
	31910, 31918, 31917, 31913, 31912, 31916, 31915, 31911, -- lunacy
	31907, -- furies
	31891, -- storms
	31890, -- blessings
	31914, -- lunacy
0});

local epicCardsDecksWotlk = private.createMap({
	44277, 44278, 44279, 44280, 44281, 44282, 44284, 44285, -- chaos
	44268, 44269, 44270, 44271, 44272, 44273, 44274, 44275, -- nobles
	44260, 44261, 44262, 44263, 44264, 44265, 44266, 44267, -- prisms
	44286, 44287, 44288, 44289, 44290, 44291, 44292, 44293, -- undeath
	44276, -- chaos
	44326, -- nobles
	44259, -- prisms
	44294, -- undeath
0});

local epicCards = private.createMap({
	19227, 19230, 19231, 19232, 19233, 19234, 19235, 19236, -- beasts
	19276, 19278, 19279, 19280, 19281, 19282, 19283, 19284, -- portals
	19258, 19259, 19260, 19261, 19262, 19263, 19264, 19265, -- warlords
	19268, 19269, 19270, 19271, 19272, 19273, 19274, 19275, -- elementals

	31901, 31909, 31908, 31904, 31903, 31906, 31905, 31902, -- furies
	31892, 31900, 31899, 31895, 31894, 31898, 31896, 31893, -- storms
	31882, 31889, 31888, 31885, 31884, 31887, 31886, 31883, -- blessings
	31910, 31918, 31917, 31913, 31912, 31916, 31915, 31911, -- lunacy

	44277, 44278, 44279, 44280, 44281, 44282, 44284, 44285, -- chaos
	44268, 44269, 44270, 44271, 44272, 44273, 44274, 44275, -- nobles
	44260, 44261, 44262, 44263, 44264, 44265, 44266, 44267, -- prisms
	44286, 44287, 44288, 44289, 44290, 44291, 44292, 44293, -- undeath

0});

local epicDecks = private.createMap({
	19228, -- beasts
	19277, -- portals
	19257, -- warlords
	19267, -- elementals

	31907, -- furies
	31891, -- storms
	31890, -- blessings
	31914, -- lunacy

	44276, -- chaos
	44326, -- nobles
	44259, -- prisms
	44294, -- undeath

0});

local reg3Cards = private.createMap({
	37140, 37143, 37156, -- rogues
0});

local reg4Cards = private.createMap({
	37145, 37147, 37159, 37160, -- swords
0});

local reg5CardsMages = private.createMap({
	44165, 44144, 44145, 44146, 44147, -- mages
0});

local reg5CardsDemons = private.createMap({
	44143, 44154, 44155, 44156, 44157, -- demons
0});

local reg5Cards = private.createMap({
	44165, 44144, 44145, 44146, 44147, -- mages
	44143, 44154, 44155, 44156, 44157, -- demons
0});

local reg3Decks = private.createMap({
	37163, 43039, -- rogues
0});

local reg4Decks = private.createMap({
	37164, 42922, -- swords
0});

local reg5DecksMages = private.createMap({
	44148, 44184, -- mages
0});

local reg5DecksDemons = private.createMap({
	44158, 44185, -- demons
0});

local regDecks = private.createMap({
	37163, 43039, -- rogues
	37164, 42922, -- swords
	44148, 44184, -- mages
	44158, 44185, -- demons
0});

-- **************************************************

local rogue50Herbs = private.createMap({
	3820, -- Stranglekelp
	2453, -- Bruiseweed
0});

local rogue25Herbs = private.createMap({
	2450, -- Briarthorn
	785,  -- Mageroyal
	2452, -- Swiftthistle
0});

local rogueInksX2 = private.createMap({ -- X2
	39334, -- Anthrazitfarbene Pigmente
0});

local rogueInks = private.createMap({ 	-- X1
	43103, -- Verdant Pigment
	43115, -- Hunter's Ink
	39774, -- Mitternachtstinte
0});

-- **************************************************

local sword50Herbs = private.createMap({
	3356, -- Kingsblood
	3357, -- Liferoot
0});

local sword25Herbs = private.createMap({
	3369, -- Grave Moss
	3355, -- Wild Steelbloom
0});

local swordInksX1 = private.createMap({ -- X1
	43116, -- Löwentinte
0});

local swordInks = private.createMap({ 	-- X2
	43104, -- Burnt Pigment
	43117, -- Dawnstar Ink
	39338, -- Goldfarbene Pigmente
0});

-- **************************************************

local mage50Herbs = private.createMap({
	3358, -- Khadgar's Whisker
	3819, -- Wintersbite
0});

local mage25Herbs = private.createMap({
	3818, -- Fadeleaf
	3821, -- Goldthorn
0});

local mageInksX1 = private.createMap({
	43118, -- Jadefeuertinte
0});

local mageInks = private.createMap({
	43105, -- Indigo Pigment
	43119, -- Royal Ink
	39339, -- Smaragdfarbene Pigmente
0});

-- **************************************************

local demon50Herbs = private.createMap({
	8845, -- Ghost Mushroom
	8839, -- Blindweed
	8846, -- Gromsblood
0});

local demon25Herbs = private.createMap({
	8836, -- Arthas' Tears
	4625, -- Firebloom
	8831, -- Purple Lotus
	8838, -- Sungrass
0});

local demonInksX1 = private.createMap({
	43120, -- Firmamenttinte
0});

local demonInks = private.createMap({
	43106, -- Ruby Pigment
	43121, -- Fiery Ink
	39340, -- Violette Pigmente
0});

-- **************************************************

local vanilla50Herbs = private.createMap({
	13465, -- Mountain Silversage
	13466, -- Plaguebloom
	13467, -- Icecap
0});

local vanilla25Herbs = private.createMap({
	13463, -- Dreamfoil
	13464, -- Golden Sansam
0});

local vanillaInksX2 = private.createMap({ -- x2
	43122, -- Perlmutttinte
0});

local vanillaInksX4 = private.createMap({ -- x5
	39341, -- Silbrige Pigmente
0});

local vanillaInks = private.createMap({ -- x5
	43107, -- Sapphire Pigment
	43123, -- Ink of the Sky
0});

-- **************************************************

local tbc50Herbs = private.createMap({
	22791, -- Netherbloom
	22792, -- Nightmare Vine
	22790, -- Ancient Lichen
	22793, -- Mana Thistle
0});

local tbc25Herbs = private.createMap({
	22786, -- Dreaming Glory
	22785, -- Felweed
	22789, -- Terocone
	22787, -- Ragveil
0});

local wotlkPigments = private.createMap({
	43109, -- Icy Pigment
0});

local tbcInks = private.createMap({
	43108, -- Ebon Pigment
	43125, -- Darkflame Ink
0});

-- **************************************************

local wotlk50Herbs = private.createMap({
	36903, -- Adder's Tongue
	36906, -- Icethorn
	36905, -- Lichbloom
0});

local wotlk25Herbs = private.createMap({
	39969, -- Fire Seed
	37921, -- Deadnettle
	36901, -- Goldclover
	36907, -- Talandra's Rose
	36904, -- Tiger Lily
	39970, -- Fire Leaf
0});

local wotlkPigments = private.createMap({
	43109, -- Icy Pigment
0});

local wotlkInks = private.createMap({
	43127, -- Snowfall Ink
0});

-- **************************************************

function lib:MakeGuiConfig(gui)
	-- Get our tab and populate it with our controls
	local id = gui:AddTab(lib.tabname, "Searchers")

	-- Add the help
	gui:AddSearcher( L["Searcher_Title"], L["Searcher_Desc"], 100)
	local colPos = 0

	gui:AddControl(id, "Header", colPos, L["Header_Title"])
	gui:AddControl(id, "Label",  colPos, 0, nil, L["Header_Desc"])
	gui:GetLast(id).clearance = 10;

	local last_header = gui:GetLast(id)

	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.cards.wotlk", 	L["Checkbox.cards.wotlk"]);
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.craft.wotlk", 	L["Checkbox.craft.wotlk"]); -- lvl 65
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.mats.eternal", 	L["Checkbox.mats.eternal"]);
	gui:GetLast(id).clearance = 5;
	-- local last_wotlk = gui:GetLast(id)
	
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.cards.tbc", 		L["Checkbox.cards.tbc"]);
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.craft.tbc", 		L["Checkbox.craft.tbc"]); -- lvl 50
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.mats.primal", 	L["Checkbox.mats.primal"]);
	gui:GetLast(id).clearance = 5;
	-- local last_tbc = gui:GetLast(id)
	
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.cards.vanilla", 	L["Checkbox.cards.vanilla"]);
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.craft.vanilla", 	L["Checkbox.craft.vanilla"]); -- lvl 35
	gui:GetLast(id).clearance = 10;
	local last_vanilla = gui:GetLast(id)
	
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.cards.demon", 	L["Checkbox.cards.demon"]);
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.craft.demon", 	L["Checkbox.craft.demon"]); -- lvl 20
	gui:GetLast(id).clearance = 5;
	
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.cards.mage", 	L["Checkbox.cards.mage"]);
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.craft.mage", 	L["Checkbox.craft.mage"]); -- lvl 20
	gui:GetLast(id).clearance = 5;
	
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.cards.sword", 	L["Checkbox.cards.sword"]);
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.craft.sword", 	L["Checkbox.craft.sword"]); -- lvl 10
	gui:GetLast(id).clearance = 5;
	
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.cards.rogue", 	L["Checkbox.cards.rogue"]);
	gui:AddControl(id, "Checkbox",          colPos, 0, "darkmoonfairecards.craft.rogue", 	L["Checkbox.craft.rogue"]); -- lvl 10
	gui:GetLast(id).clearance = 5;
	
	-- **************************************************
	colPos = 0.45
	gui:SetLast(id, last_header)

	gui:AddControl(id, "MoneyFramePinned",  colPos, 0, "darkmoonfairecards.deckprice", 1, 99999999, L["Money.deckprice"]);
	gui:AddControl(id, "MoneyFramePinned",  colPos, 0, "darkmoonfairecards.overhead.eternal", 1, 99999999, L["Money.mats.eternal"]);
	gui:AddControl(id, "MoneyFramePinned",  colPos, 0, "darkmoonfairecards.overhead.primal", 1, 99999999, L["Money.mats.primal"]);
	gui:GetLast(id).clearance = 1;
	
											-- level, setting, min, max, step, text, fmtfunc = ...
	gui:AddControl(id, "NumeriTiny",  colPos, 0, "darkmoonfairecards.budgetMaxPer", 1, 2, 0.01, L["NumeriTiny.budgetMaxPer"]);
	
	
	gui:GetLast(id).clearance = 5;
									-- level, width, height, text
	gui:AddControl(id, "Note",  colPos, 0, 280, 150, L["Note.deckprice"])
	
end

function lib.Search(item)

	local itemid = item[Const.ITEMID];
	
	-- Stop if new dont want to search Cards/Decks
	if not(get("darkmoonfairecards.cards.wotlk")) 	and epicCardsDecksWotlk[itemid] then 	return false, "nope"; end 	-- Wotlk
	if not(get("darkmoonfairecards.cards.tbc")) 	and epicCardsDecksTbc[itemid] 	then 	return false, "nope"; end 	-- tbc
	if not(get("darkmoonfairecards.cards.vanilla")) and epicCardsDecksVanilla[itemid] then 	return false, "nope"; end 	-- vanilla
	
	if not(get("darkmoonfairecards.cards.demon")) 	and (reg5CardsDemons[itemid] or reg5DecksDemons[itemid]) then 	return false, "nope"; end 	-- demon
	if not(get("darkmoonfairecards.cards.mage")) 	and (reg5CardsMages[itemid] or reg5DecksMages[itemid]) then 	return false, "nope"; end 	-- mage
	if not(get("darkmoonfairecards.cards.sword")) 	and (reg4Cards[itemid] or reg4Decks[itemid]) then 	return false, "nope"; end 	-- sword
	if not(get("darkmoonfairecards.cards.rogue")) 	and (reg3Cards[itemid] or reg3Decks[itemid]) then 	return false, "nope"; end 	-- rogue
	
	
	-- get cost
	local buyprice = item[Const.BUYOUT];
	local stacksize = item[Const.COUNT];
	local priceper = buyprice / stacksize;
	local limit = get("darkmoonfairecards.deckprice");

	if (buyprice == 0) then	return false, "nope"; end

	local per_deck = 0; -- number of these items needed per deck
	local overhead = 0; -- overhead cost (per deck) when using this item

	-- epic cards
	if (epicCards[itemid]) then per_deck = 8; end

	-- epic decks
	if (epicDecks[itemid]) then per_deck = 1; end

	-- reg cards
	if (reg3Cards[itemid]) then per_deck = 14 * 3; end
	if (reg4Cards[itemid]) then per_deck = 14 * 4; end
	if (reg5Cards[itemid]) then per_deck = 14 * 5; end

	-- reg decks
	if (regDecks[itemid]) then per_deck = 14; end


	-- rogue crafted
	-- 14: minor decks to a full deck
	-- 3: cards in deck
	--
	-- light parchment: 0.0.15
	if (get("darkmoonfairecards.craft.rogue")) then
		if (rogue50Herbs[itemid]) then per_deck = 14 * 3 * 10; overhead = 14 * 3 * 15; end
		if (rogue25Herbs[itemid]) then per_deck = 14 * 3 * 20; overhead = 14 * 3 * 15; end
		if (rogueInksX2[itemid] ) then per_deck = 14 * 3 * 2;  overhead = 14 * 3 * 15; end
		if (rogueInks[itemid]   ) then per_deck = 14 * 3 * 1;  overhead = 14 * 3 * 15; end
	end

	-- sword crafted
	-- 14: minor decks to a full deck
	-- 4: cards in deck
	-- 2: inks per card
	--
	-- common parchment: 0.1.25
	if (get("darkmoonfairecards.craft.sword")) then
		if (sword50Herbs[itemid]) then per_deck = 14 * 4 * 10 * 2; overhead = 14 * 4 * 125; end
		if (sword25Herbs[itemid]) then per_deck = 14 * 4 * 20 * 2; overhead = 14 * 4 * 125; end
		if (swordInks[itemid]   ) then per_deck = 14 * 4 * 2;      overhead = 14 * 4 * 125; end
		if (swordInksX1[itemid] ) then per_deck = 14 * 4 * 1;      overhead = 14 * 4 * 125; end
	end

	-- mage crafted
	-- 14: minor decks to a full deck
	-- 5: cards in deck
	-- 2: inks per card
	--
	-- common parchment: 0.1.25
	if (get("darkmoonfairecards.craft.mage")) then
		if (mage50Herbs[itemid]) then per_deck = 14 * 5 * 10 * 2; overhead = 14 * 5 * 125; end
		if (mage25Herbs[itemid]) then per_deck = 14 * 5 * 20 * 2; overhead = 14 * 5 * 125; end
		if (mageInks[itemid]   ) then per_deck = 14 * 5 * 2;      overhead = 14 * 5 * 125; end
		if (mageInksX1[itemid] ) then per_deck = 14 * 5 * 1;      overhead = 14 * 5 * 125; end
	end


	-- demon crafted
	-- 14: minor decks to a full deck
	-- 5: cards in deck
	-- 2: inks per card
	--
	-- heavy parchment: 0.12.50
	if (get("darkmoonfairecards.craft.demon")) then
		if (demon50Herbs[itemid]) then per_deck = 14 * 5 * 10 * 2; overhead = 14 * 5 * 1250; end
		if (demon25Herbs[itemid]) then per_deck = 14 * 5 * 20 * 2; overhead = 14 * 5 * 1250; end
		if (demonInks[itemid]   ) then per_deck = 14 * 5 * 2;      overhead = 14 * 5 * 1250; end
		if (demonInksX1[itemid] ) then per_deck = 14 * 5 * 1;      overhead = 14 * 5 * 1250; end
	end

	-- vanilla crafted
	-- 8: cards in deck
	-- 5: inks per card
	--
	-- heavy parchment: 0.12.50
	if (get("darkmoonfairecards.craft.vanilla")) then
		if (vanilla50Herbs[itemid]) then per_deck = 8 * 10 * 5; overhead = 8 * 1250; end
		if (vanilla25Herbs[itemid]) then per_deck = 8 * 20 * 5; overhead = 8 * 1250; end
		if (vanillaInks[itemid]   ) then per_deck = 8 * 5;      overhead = 8 * 1250; end
		if (vanillaInksX4[itemid] ) then per_deck = 8 * 4;      overhead = 8 * 1250; end
		if (vanillaInksX2[itemid] ) then per_deck = 8 * 2;      overhead = 8 * 1250; end
	end

	-- BC crafted
	-- 8: cards in deck
	-- 3: inks per card
	--
	-- resilient parchment: 0.50.00
	if (get("darkmoonfairecards.craft.tbc")) then
		if (tbc50Herbs[itemid]) then per_deck = 8 * 10 * 3; overhead = 8 * (5000 + (3 * get("darkmoonfairecards.overhead.primal"))); end
		if (tbc25Herbs[itemid]) then per_deck = 8 * 20 * 3; overhead = 8 * (5000 + (3 * get("darkmoonfairecards.overhead.primal"))); end
		if (tbcInks[itemid]   ) then per_deck = 8 * 3;      overhead = 8 * (5000 + (3 * get("darkmoonfairecards.overhead.primal"))); end
	end

	-- WotLK crafted
	-- 8: cards in deck
	-- 6: inks per card
	-- 2: pigment per ink
	--
	-- resilient parchment: 0.50.00
	if (get("darkmoonfairecards.craft.wotlk")) then
		if (wotlk50Herbs[itemid] ) then per_deck = 8 * 10 * 6 * 2; overhead = 8 * (5000 + (3 * get("darkmoonfairecards.overhead.eternal"))); end
		if (wotlk25Herbs[itemid] ) then per_deck = 8 * 20 * 6 * 2; overhead = 8 * (5000 + (3 * get("darkmoonfairecards.overhead.eternal"))); end
		if (wotlkPigments[itemid]) then per_deck = 8 * 6 * 2;      overhead = 8 * (5000 + (3 * get("darkmoonfairecards.overhead.eternal"))); end
		if (wotlkInks[itemid]    ) then per_deck = 8 * 6;          overhead = 8 * (5000 + (3 * get("darkmoonfairecards.overhead.eternal"))); end
	end

	if (per_deck > 0) then
		local costAllowed = (limit - overhead) / per_deck
		if priceper <= costAllowed * get("darkmoonfairecards.budgetMaxPer") then
			local factor = priceper / costAllowed;
			-- return string.format("%3d%%", 100 * factor)
			if factor > 1.25 then
				return format( COL_red, format("%3d%%", factor*100) )
			elseif factor > 1.005 then
				return format( COL_orange, format("%3d%%", factor*100) )
			elseif factor > 0.66 then
				return format( COL_yellow, format("%3d%%", factor*100) )
			elseif factor > 0.33 then
				return format( COL_green, format("%3d%%", factor*100) )
			else
				return format( COL_blue, format("%3d%%", factor*100) )
			end
		end
	end


	--
	-- Eternal & Primal Lifes
	--

	local life_percent = 0;
	if (get("darkmoonfairecards.mats.primal")) then
		local p1 = get("darkmoonfairecards.overhead.primal");
		local p1_max = p1 * get("darkmoonfairecards.budgetMaxPer")
		if ((itemid == 21886) and (priceper <= p1_max)) then life_percent = priceper / p1; end
		if ((itemid == 22575) and (priceper*10 <= p1_max)) then life_percent = (priceper * 10) / p1; end
	end
	if (get("darkmoonfairecards.mats.eternal")) then
		local p2 = get("darkmoonfairecards.overhead.eternal");
		local p2_max = p2 * get("darkmoonfairecards.budgetMaxPer")
		if ((itemid == 35625) and (priceper <= p2_max)) then life_percent = priceper / p2; end
		if ((itemid == 37704) and (priceper*10 <= p2_max)) then life_percent = (priceper * 10) / p2; end
	end
	if (life_percent > 0) then
		-- return string.format("%3d%%", 100 * life_percent);
		if life_percent > 1.25 then
			return format( COL_red, format("%3d%%", life_percent*100) )
		elseif life_percent > 1.005 then
			return format( COL_orange, format("%3d%%", life_percent*100) )
		elseif life_percent > 0.665 then
			return format( COL_yellow, format("%3d%%", life_percent*100) )
		elseif life_percent > 0.335 then
			return format( COL_green, format("%3d%%", life_percent*100) )
		else
			return format( COL_blue, format("%3d%%", life_percent*100) )
		end
	end


	--
	-- drop out
	--
	return false, "nope";
end

AucAdvanced.RegisterRevision("$URL$", "$Rev$");
