local ADDON_NAME, ADDON_TABLE = ...

ADDON_TABLE.Locale = {}

local L = ADDON_TABLE.Locale
local GAME_LOCALE = GetLocale()


L["Searcher_Title"] = 	"Darkmoon"
L["Searcher_Desc"] = 	"Search for Darkmoon cards & ingredients"
L["Header_Title"] = 	"Darkmoon cards & ingredients search criteria"
L["Header_Desc"] = 		"Scan: Quest, Trade Goods (Elemental, Herb, Parts, Other)"

L["Money.deckprice"] = 		format("Budget per \124cffa335ee%s\124r* (350 rep)", "Epic Deck")
L["Money.mats.eternal"] = 	format("Budget per \124cff1eff00%s\124r", "Eternal Life")
L["Money.mats.primal"] = 	format("Budget per \124cff1eff00%s\124r", "Primal Life")

L["Note.deckprice"] = 	"*Items in the Auction House will be weighted according to their share in the complete Epic Deck (350 rep) and are only shown, if they fit inside the Budget.\n\nIn case of the lesser Decks, this will be scaled to the equivalent of 350 rep."


L["Checkbox.cards.wotlk"] = format("Cards/Decks: \124cff3FC7EB%s\124r", "WotLK")
L["Checkbox.craft.wotlk"] = format("Reagents: \124cff3FC7EB%s\124r cards (400 Inscr.)", "WotLK")
L["Checkbox.mats.eternal"] = format("Include \124cff1eff00%s\124r", "Eternal Life")

L["Checkbox.cards.tbc"] =	format("Cards/Decks: \124cffAAD372%s\124r", "TBC")
L["Checkbox.craft.tbc"] =	format("Reagents: \124cffAAD372%s\124r cards (325 Inscr.)", "TBC")
L["Checkbox.mats.primal"] =	format("Include \124cff1eff00%s\124r", "Primal Life")

L["Checkbox.cards.vanilla"] = format("Cards/Decks: \124cffFFF468%s\124r", "Vanilla")
L["Checkbox.craft.vanilla"] = format("Reagents: \124cffFFF468%s\124r cards (275 Inscr.)", "Vanilla")



if GAME_LOCALE == "deDE" then
	L["Searcher_Title"] = 	"Dunkelmond"
	L["Searcher_Desc"] = 	"Suche nach Dunkelmond-Karten & Zutaten"
	L["Header_Title"] = 	"Dunkelmond-Karten & Zutaten - Suchkriterium"
	L["Header_Desc"] = 		"Scanne: Quest, Handwerkswaren (Elementar, Kräuter, Teile, Sonstige)"

	L["Note.deckprice"] = 	"*Items im Auktionshause werden entsprechend ihrem Anteil am fertigen Epic Kartenset (350 Ruf) gewichtet und nur dann aufgeführt, wenn sie in das Budget passen.\n\nIm Falle der kleinen Kartensets wird dies auf 350 Ruf hochgerechnet."

	L["Money.deckprice"] = 		format("Budget pro \124cffa335ee%s\124r* (350 Ruf)", "Epic Kartenset")
	L["Money.mats.eternal"] = 	format("Budget pro \124cff1eff00%s\124r", "Äonenleben")
	L["Money.mats.primal"] = 	format("Budget pro \124cff1eff00%s\124r", "Urleben")
	
	L["Checkbox.cards.wotlk"] = format("Karten/Sets: \124cff3FC7EB%s\124r", "WotLK")
	L["Checkbox.craft.wotlk"] = format("Reagenzien: \124cff3FC7EB%s\124r Karten (400 IK)", "WotLK")
	L["Checkbox.mats.eternal"] = format("\124cff1eff00%s\124r mitsuchen", "Äonenleben")

	L["Checkbox.cards.tbc"] =	format("Karten/Sets: \124cffAAD372%s\124r", "TBC")
	L["Checkbox.craft.tbc"] =	format("Reagenzien: \124cffAAD372%s\124r Karten (325 IK)", "TBC")
	L["Checkbox.mats.primal"] =	format("\124cff1eff00%s\124r mitsuchen", "Urleben")

	L["Checkbox.cards.vanilla"] = format("Karten/Sets: \124cffFFF468%s\124r", "Vanilla")
	L["Checkbox.craft.vanilla"] = format("Reagenzien: \124cffFFF468%s\124r Karten (275 IK)", "Vanilla")
end
