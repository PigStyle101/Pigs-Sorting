local util = require("scripts/data-util")
local newtable =
{
    ["el_charge_crystal_recipe"] = "248k-charge-mysterious-crystal",
    ["el_ALK_recipe"] = "248k-aluminium-ceramic",
    ["el_cast_pure_aluminum_recipe"] = "248k-aluminium",
    ["el_ceramic_1_recipe"] = "248k-ceramic-coal",
    ["el_ceramic_recipe"] = "248k-ceramic-stone",
    ["el_dirty_water_landfill_recipe"] = "248k-landfill-dirty-water",
    ["el_dirty_water_vent_2_recipe"] = "248k-vent-dirty-water-purifier",
    ["el_dirty_water_vent_recipe"] = "248k-vent-dirty-water-assembler",
    ["el_lithium_ore_recipe"] = "248k-lithium",
    ["el_grow_energy_crystal_recipe"] = "248k-grow-mysterious-crystal",
    ["el_purify_stone_acidic_recipe"] = "248k-purify-mysterious-crystal",
    ["fi_ceramic_recipe"] = "248k-ceramic-crushed-stone",
}


util.create_and_replace_recipe(newtable)
