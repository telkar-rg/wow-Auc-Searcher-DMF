local ADDON_NAME, ADDON_TABLE = ...

ADDON_TABLE.Locale = {}

local L = ADDON_TABLE.Locale
local GAME_LOCALE = GetLocale()
local sup_1 = "\194\185"
local sup_2 = "\194\178"
local Version = GetAddOnMetadata(ADDON_NAME, "Version")

L["Searcher_Title"] = 	"Darkmoon"
L["Searcher_Desc"] = 	"Search for Darkmoon Cards & Reagents"
L["Header_Title"] = 	format("Darkmoon Cards & Reagents (%s) - search criteria", Version)
L["Header_Desc"] = 		"Scan: Quest, Trade Goods (Elemental, Herb, Parts, Other)"

L["Money.deckprice"] = 		format("Budget per \124cffaa47ee%s\124r", "Epic Deck") .. sup_1 .. " (350 rep)"
L["Money.mats.eternal"] = 	format("Budget per \124cff1eff00%s\124r", "Eternal Life") .. sup_2
L["Money.mats.primal"] = 	format("Budget per \124cff1eff00%s\124r", "Primal Life") .. sup_2
L["NumeriTiny.budgetMaxPer"] = 	"Show items up to \n%.2f x Budget"

L["Note.deckprice"] = 	format("1) Items in the Auction House will be weighted according to their share in the complete \124cffaa47ee%s\124r (350 rep) and are only shown, if they fit inside the Budget.", "Epic Deck") .. format("\n  In case of the \124cffc43b52%s\124r, this will be scaled to the equivalent of 350 rep.", "lesser Decks") .. format("\n\n2) The Budget of \124cff1eff00%s\124r will be assumed as the cost when weighing Reagents for TBC/WotLK cards.", "Primal Life/Eternal Life")


L["Checkbox.cards.wotlk"] = format("Cards/Decks: \124cff3FC7EB%s\124r", "WotLK")
L["Checkbox.craft.wotlk"] = format("Reagents: \124cff3FC7EB%s\124r cards (400 Inscr.)", "WotLK")
L["Checkbox.mats.eternal"] = format("Include \124cff1eff00%s\124r", "Eternal Life")

L["Checkbox.cards.tbc"] =	format("Cards/Decks: \124cffAAD372%s\124r", "TBC")
L["Checkbox.craft.tbc"] =	format("Reagents: \124cffAAD372%s\124r cards (325 Inscr.)", "TBC")
L["Checkbox.mats.primal"] =	format("Include \124cff1eff00%s\124r", "Primal Life")

L["Checkbox.cards.vanilla"] = format("Cards/Decks: \124cffFFF468%s\124r", "Classic")
L["Checkbox.craft.vanilla"] = format("Reagents: \124cffFFF468%s\124r cards (275 Inscr.)", "Classic")

L["Checkbox.cards.demon"] = format("Cards/Decks: \124cffC41E3A%s\124r", "Demons")
L["Checkbox.craft.demon"] = format("Reagents: \124cffC41E3A%s\124r cards (225 Inscr.)", "Demons")

L["Checkbox.cards.mage"] = format("Cards/Decks: \124cffc43b52%s\124r", "Mages")
L["Checkbox.craft.mage"] = format("Reagents: \124cffc43b52%s\124r cards (175 Inscr.)", "Mages")

L["Checkbox.cards.sword"] = format("Cards/Decks: \124cffc4586a%s\124r", "Swords")
L["Checkbox.craft.sword"] = format("Reagents: \124cffc4586a%s\124r cards (125 Inscr.)", "Swords")

L["Checkbox.cards.rogue"] = format("Cards/Decks: \124cffc47683%s\124r", "Rogues")
L["Checkbox.craft.rogue"] = format("Reagents: \124cffc47683%s\124r cards (85 Inscr.)", "Rogues")

-- if true then return end -- debug
if GAME_LOCALE == "deDE" then
	L["Searcher_Title"] = 	"Dunkelmond"
	L["Searcher_Desc"] = 	"Suche nach Dunkelmond-Karten & Reagenzien"
	L["Header_Title"] = 	format("Dunkelmond-Karten & Reagenzien (%s) - Suchkriterium", Version)
	L["Header_Desc"] = 		"Scanne: Quest, Handwerkswaren (Elementar, Kräuter, Teile, Sonstige)"

	L["Note.deckprice"] = 	format("1) Items im Auktionshaus werden entsprechend ihrem Anteil am fertigen \124cffaa47ee%s\124r (350 Ruf) gewichtet und nur dann aufgeführt, wenn sie in das Budget passen.", "Epic Kartenset") .. format("\n  Im Falle der \124cffc43b52%s\124r wird dies auf 350 Ruf hochgerechnet.", "geringen Kartensets")
	.. format("\n\n2) Das Budget von \124cff1eff00%s\124r wird als Preis angenommen, wenn der Anteil der Reagenzien für TBC/WotLK Karten gewichtet wird.", "Urleben/Äonenleben")

	L["Money.deckprice"] = 		format("Budget pro \124cffaa47ee%s\124r", "Epic Kartenset") .. sup_1 .. " (350 Ruf)"
	L["Money.mats.eternal"] = 	format("Budget pro \124cff1eff00%s\124r", "Äonenleben") .. sup_2
	L["Money.mats.primal"] = 	format("Budget pro \124cff1eff00%s\124r", "Urleben") .. sup_2
	L["NumeriTiny.budgetMaxPer"] = 	"Zeige Items bis zu \n%.2f x Budget"
	
	L["Checkbox.cards.wotlk"] = format("Karten/Sets: \124cff3FC7EB%s\124r", "WotLK")
	L["Checkbox.craft.wotlk"] = format("Reagenzien: \124cff3FC7EB%s\124r-Karten (400 IK)", "WotLK")
	L["Checkbox.mats.eternal"] = format("\124cff1eff00%s\124r mitsuchen", "Äonenleben")

	L["Checkbox.cards.tbc"] =	format("Karten/Sets: \124cffAAD372%s\124r", "TBC")
	L["Checkbox.craft.tbc"] =	format("Reagenzien: \124cffAAD372%s\124r-Karten (325 IK)", "TBC")
	L["Checkbox.mats.primal"] =	format("\124cff1eff00%s\124r mitsuchen", "Urleben")

	L["Checkbox.cards.vanilla"] = format("Karten/Sets: \124cffFFF468%s\124r", "Classic")
	L["Checkbox.craft.vanilla"] = format("Reagenzien: \124cffFFF468%s\124r-Karten (275 IK)", "Classic")

	L["Checkbox.cards.demon"] = format("Karten/Sets: \124cffC41E3A%s\124r", "Dämonen")
	L["Checkbox.craft.demon"] = format("Reagenzien: \124cffC41E3A%s\124r-Karten (225 IK)", "Dämonen")

	L["Checkbox.cards.mage"] = format("Karten/Sets: \124cffc43b52%s\124r", "Magier")
	L["Checkbox.craft.mage"] = format("Reagenzien: \124cffc43b52%s\124r-Karten (175 IK)", "Magier")

	L["Checkbox.cards.sword"] = format("Karten/Sets: \124cffc4586a%s\124r", "Schwerter")
	L["Checkbox.craft.sword"] = format("Reagenzien: \124cffc4586a%s\124r-Karten (125 IK)", "Schwerter")

	L["Checkbox.cards.rogue"] = format("Karten/Sets: \124cffc47683%s\124r", "Schurken")
	L["Checkbox.craft.rogue"] = format("Reagenzien: \124cffc47683%s\124r-Karten (85 IK)", "Schurken")
end
