local ADDON_NAME, ADDON_TABLE = ...

ADDON_TABLE.Locale = {}

local L = ADDON_TABLE.Locale
local GAME_LOCALE = GetLocale()


L["Searcher_Title"] = "Darkmoon"
L["Searcher_Desc"] = "Search for Darkmoon cards & ingredients"
L["Header_Desc"] = "Darkmoon cards & ingredients search criteria"

L["Money_Budget_Classic_Lesser"] = "Budget per lesser Classic Decks / 350 rep (equivalent)"
L["Money_Budget_Classic_Epic"] = "Budget per Epic Classic Decks / 350 rep"
L["Money_Budget_TBC_Epic"] = "Budget per Epic TBC Decks / 350 rep"
L["Money_Budget_WotLK_Epic"] = "Budget per Epic WotLK Decks / 350 rep"
L["Money_Budget_Life_Primal"] = "Budget per Primal Life"
L["Money_Budget_Life_Eternal"] = "Budget per Eternal Life"


if GAME_LOCALE == "deDE" then
	L["Searcher_Title"] = "Dunkelmond"
	L["Searcher_Desc"] = "Suche nach Dunkelmond-Karten & Zutaten"
	L["Header_Desc"] = "Dunkelmond-Karten & Zutaten - Suchkriterium"

	L["Money_Budget_Classic_Lesser"] = "Budget pro kleinen Classic Decks / 350 Ruf (äquivalent)"
	L["Money_Budget_Classic_Epic"] = "Budget pro Epic Classic Decks / 350 Ruf"
	L["Money_Budget_TBC_Epic"] = "Budget pro Epic TBC Decks / 350 Ruf"
	L["Money_Budget_WotLK_Epic"] = "Budget pro Epic WotLK Decks / 350 Ruf"
	L["Money_Budget_Life_Primal"] = "Budget pro Urleben"
	L["Money_Budget_Life_Eternal"] = "Budget pro Äonenleben"
end
