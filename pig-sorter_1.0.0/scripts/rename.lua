local util = require("scripts/data-util")
local renamerecipes248k =
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
    ["el_lithium_battery_recipe"] = "248k-lithium-battery",
    ["el_lithium_basic_battery_recipe"] = "248k-lithium-basic-battery",
    ["el_burner_kerosene_recipe"] = "248k-kerosene-burner",
    ["el_burner_recipe"] = "248k-burner-generator",
    ["fu_burner_recipe"] = "248k-void-burner",
    ["el_solar_recipe"] = "248k-solar-panel",
    ["el_arc_furnace_recipe"] = "248k-arc-furnace",
    ["el_caster_recipe"] = "248k-metal-caster",
    ["el_charger_recipe"] = "248k-energy-injector",
    ["el_grower_recipe"] = "248k-crystal-grower",
    ["el_pressurizer_recipe"] = "248k-water-pressurizer",
    ["el_purifier_recipe"] = "248k-purifier",
    ["el_tank_recipe"] = "248k-storage-tank",
    ["el_water_generator_recipe"] = "248k-water-turbine",
    ["el_diesel_train_recipe"] = "248k-diesel-locomotive",
    ["el_train_fuel_diesel_recipe"] = "248k-diesel-fuel",
    ["el_train_fuel_diesel_energized_recipe"] = "248k-diesel-fuel-energized",
    ["el_train_equipment_generator_recipe"] = "248k-diesel-locomotive-generator-equipment",
    ["el_train_equipment_accelerator_recipe"] = "248k-diesel-locomotive-speed-equipment",
    ["el_purify_copper_recipe"] = "248k-purify-copper-ore",
    ["el_purify_iron_recipe"] = "248k-purify-iron-ore",
    ["el_purify_stone_2_recipe"] = "248k-purify-stone-aluminium",
    ["el_purify_stone_recipe"] = "248k-purify-stone-mixed",
    ["el_water_pressure_recipe"] = "248k-pressurized-water",
    ["el_arc_pure_aluminum_recipe"] = "248k-molten-aluminium",
    ["el_arc_pure_copper_recipe"] = "248k-molten-copper",
    ["el_arc_pure_iron_recipe"] = "248k-moletn-iron",
    ["el_kerosene_basic_recipe"] = "248k-basic-kerosene-processing",
    ["el_kerosene_recipe"] = "248k-advanced-kerosene-processing",
    ["el_desulfurized_kerosene_recipe"] = "248k-desulfurized-kerosene",
    ["el_ki_cpu_fluid_recipe"] = "248k-ki1-data-fluid-1",
    ["el_ki_cpu_fluid_recipe_1"] = "248k-ki1-data-fluid-2",
    ["el_ki_cpu_fluid_recipe_2"] = "248k-ki1-data-fluid-3",
    ["el_ki_cpu_fluid_recipe_3"] = "248k-ki1-data-fluid-4",
    ["el_ki_memory_fluid_recipe"] = "248k-ki1-memory-fluid-1",
    ["el_ki_memory_fluid_recipe_1"] = "248k-ki1-memory-fluid-2",
    ["el_ki_memory_fluid_recipe_2"] = "248k-ki1-memory-fluid-3",
    ["el_ki_memory_fluid_recipe_3"] = "248k-ki1-memory-fluid-4",
    ["fi_ki_circuit_fluid_recipe"] = "248k-ki2-energy-fluid-1",
    ["fi_ki_circuit_fluid_recipe_1"] = "248k-ki2-energy-fluid-2",
    ["fi_ki_circuit_fluid_recipe_2"] = "248k-ki2-energy-fluid-3",
    ["fi_ki_circuit_fluid_recipe_3"] = "248k-ki2-energy-fluid-4",
    ["fu_ki_circuit_fluid_recipe"] = "248k-ki3-energy-fluid-1",
    ["fu_ki_circuit_fluid_recipe_1"] = "248k-ki3-energy-fluid-2",
    ["fu_ki_circuit_fluid_recipe_2"] = "248k-ki3-energy-fluid-3",
    ["fu_ki_circuit_fluid_recipe_3"] = "248k-ki3-energy-fluid-4",
    ["el_usage_acidic_water_recipe"] = "248k-acidic-water-cracking",
    ["el_ki_cpu_recipe"] = "248k-ki-data-center",
    ["el_ki_memory_recipe"] = "248k-ki-memory-provider",
    ["el_ki_beacon_recipe"] = "248k-small-beacon",
    ["el_ki_core_recipe"] = "248k-ki1-core",
    ["fi_decay_waste_recipe"] = "248k-decay-nuclear-waste",
    ["fi_uranium233_recipe"] = "248k-recycle-thorium-232-fuel-rod",
    ["fi_plutonium239_recipe"] = "248k-recycle-uranium-239-fuel-rod",
    ["fi_advanced_fuel_recycle_recipe"] = "248k-recycle-mox-fuel-rod",
    ["fi_advanced_thorium_fuel_recycle_recipe"] = "248k-recycle-uranium-233-fuel-rod",
    ["fi_pure_fuel_recycle_recipe"] = "248k-recycle-high-energy-mox-fuel-rod",
    ["fi_rich_powder_recipe"] = "248k-rich-powder",
    ["fi_crushed_lithium_recipe"] = "248k-crushed-lithium",
    ["fi_crushed_crystal_recipe"] = "248k-crushed-mysterious-crystal",
    ["fi_crushed_coal_recipe"] = "248k-crushed-coal",
    ["fi_crushed_glass_recipe"] = "248k-crushed-glass",
    ["fi_crushed_stone_recipe"] = "248k-crushed-stone",
    ["fi_glass_fiber_recipe"] = "248k-fiberglass",
    ["fi_natural_fiber_recipe"] = "248k-natural-fiber",
    ["fi_cast_glass_recipe"] = "248k-industrial-glass",
    ["fi_cast_gold_recipe"] = "248k-gold-plate",
    ["fi_cast_neodym_recipe"] = "248k-neodym-plate",
    ["fi_cast_titan_recipe"] = "248k-titanium-plate",
    ["fi_flourite_recipe"] = "248k-flourite-crystal",
    ["fi_pure_gold_recipe"] = "248k-pure-gold",
    ["fi_pure_neodym_recipe"] = "248k-pure-neodym",
    ["fi_pure_titan_recipe"] = "248k-pure-titanium",
    ["fi_GFK_recipe"] = "248k-fiberglass-reinforced-plastic",
    ["fi_NFK_recipe"] = "248k-natural-fiber-reinforced-plastic",
    ["fi_empty_solution_recipe"] = "248k-empty-solution-container",
    ["fi_solution_recipe"] = "248k-corrosive-solution-container",
    ["fu_drill_recipe"] = "248k-drill-part",
    ["fi_charge_crystal_recipe"] = "248k-charged-artificial-crystal",
    ["fi_energy_crystal_recipe"] = "248k-artificial-crystal",
    ["fi_low-density-structure_recipe"] = "248k-low-density-structure",
    ["fi_dirty_solution_pack_recipe"] = "248k-dirty-water-container",
    ["fi_rich_solution_pack_recipe"] = "248k-rich-solution-container",
    ["fi_castor_recipe"] = "248k-nuclear-waste-storage",
    ["fi_crafter_recipe"] = "248k-nuclear-assembling-machine",
    ["fi_fiberer_recipe"] = "248k-fiber-maker",
    ["fi_compound_machine_recipe"] = "248k-compound-material-facility",
    ["fu_miner_upgrade_recipe"] = "248k-stone-quarry-mk2",
    ["fi_refinery_recipe"] = "248k-oil-refinery",
    ["fi_robo_charger_recipe"] = "248k-roboport_charger",
}

local renameitems248k = 
{
    ["el_ki_beacon_item"] = "248k-",
}

if mods["248k"] then
util.create_and_replace_recipe(renamerecipes248k)
util.create_and_replace_item(renameitems248k)
end