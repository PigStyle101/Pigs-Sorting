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
    ["el_arc_pure_iron_recipe"] = "248k-molten-iron",
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
    ["el_ki_cpu_recipe"] = "248k-ki1-data-center",
    ["el_ki_memory_recipe"] = "248k-ki1-memory-provider",
    ["el_ki_beacon_recipe"] = "248k-ki1-beacon",
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
    ["fi_cast_gold_recipe"] = "248k-gold-plate-molten",
    ["fi_cast_neodym_recipe"] = "248k-neodym-plate-molten",
    ["fi_cast_titan_recipe"] = "248k-titanium-plate-molten",
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
    ["fu_miner_upgrade_recipe"] = "248k-stone-quarry-mk3",
    ["fi_refinery_recipe"] = "248k-oil-refinery",
    ["fi_robo_charger_recipe"] = "248k-roboport_charger",
    ["fi_miner_upgrade_recipe"] = "248k-stone-quarry-mk2",
    ["fi_robo_port_recipe"] = "248k-advanced-roboport",
    ["fu_miner_recipe"] = "248k-stone-quarry",
    ["fi_crusher_recipe"] = "248k-crushing-factory",
    ["fi_solid_reactor_recipe"] = "248k-nuclear-reactor",
    ["fi_basic_fuel_recipe"] = "248k-uranium-235-fuel-rod",
    ["fi_basic_thorium_fuel_recipe"] = "248k-thorium-232-fuel-rod",
    ["fi_advanced_fuel_recipe"] = "248k-mox-fuel-rod",
    ["fi_advanced_thorium_fuel_recipe"] = "248k-uranium-233-fuel-rod",
    ["fi_pure_fuel_recipe"] = "248k-high-energy-mox-fuel-rod",
    ["fi_fuel_train_crystal_recipe"] = "248k-super-energized-fuel-unit",
    ["fi_train_equipment_generator_recipe"] = "248k-diesel-locomotive-reactor-equipment",
    ["fi_equipment_player_reactor_recipe"] = "248k-portable-nuclear-reactor-equipment",
    ["fi_equipment_player_shield_recipe"] = "248k-advanced-energy-shield-equipment",
    ["fi_modules_base_recipe"] = "248k-module-frame",
    ["fi_modules_core_recipe"] = "248k-module-core",
    ["fi_crack_acid_gas_recipe"] = "248k-acid-gas-cracking",
    ["fi_crack_sulfur_gas_recipe"] = "248k-acid-gas-cracking-sulfur",
    ["fi_crystal_fluid_recipe"] = "248k-crystal-matrix-fluid",
    ["fi_purify_copper_recipe"] = "248k-purify-copper-ore-rich",
    ["fi_purify_iron_recipe"] = "248k-purify-iron-ore-rich",
    ["fi_purify_stone_recipe"] = "248k-purify-stone-rich",
    ["fi_purify_uranium_recipe"] = "248k-purify-uranium-ore-rich",
    ["fi_refinery_basic_recipe"] = "248k-highly-advanced-oil-processing",
    ["fi_refinery_coal_recipe"] = "248k-carbon-driven-oil-processing",
    ["fi_refinery_kerosene_coal_recipe"] = "248k-carbon-enriched-kerosene-processing",
    ["fi_refinery_kerosene_recipe"] = "248k-acidic-kerosene-processing",
    ["fi_refinery_sulfur_recipe"] = "248k-sulfur-driven-oil-processing",
    ["fi_rich_solution_unpack_recipe"] = "248k-rich-water-unpacking",
    ["fi_arc_glass_recipe"] = "248k-molten-industrial-glass",
    ["fi_arc_pure_gold_recipe"] = "248k-molten-gold",
    ["fi_arc_pure_neodym_recipe"] = "248k-molten-neodym",
    ["fi_arc_pure_titan_recipe"] = "248k-molten-titanium",
    ["fi_extract_rich_powder_recipe"] = "248k-rich-water",
    ["fi_strong_acid_recipe"] = "248k-hydrofloric-acid",
    ["fi_dirty_solution_unpack_recipe"] = "248k-unpack-dirty-water",
    ["fi_modules_productivity_1_recipe"] = "248k-productivity-module-1",
    ["fi_modules_productivity_2_recipe"] = "248k-productivity-module-2",
    ["fi_modules_productivity_3_recipe"] = "248k-productivity-module-3",
    ["fi_upgrade_recipe"] = "248k-basic-upgrade",
    ["fi_ki_circuit_recipe"] = "248k-ki2-energy-provider",
    ["fi_ki_beacon_recipe"] = "248k-ki2-beacon",
    ["fi_ki_core_recipe"] = "248k-ki2-core",
    ["fi_ki_cpu_memory_circuit_recipe"] = "248k-ki2-tech",
    ["fu_charge_crystal_recipe"] = "248k-charged-high-energy-crystal",
    ["fu_gold_ingot_recipe"] = "248k-gold-ingot",
    ["fu_lead_ingot_recipe"] = "248k-lead-ingot",
    ["fu_neodym_ingot_recipe"] = "248k-neodym_ingot",
    ["fu_titan_ingot_recipe"] = "248k-titanium-ingot",
    ["fu_gold_plate_recipe"] = "248k-gold-plate",
    ["fu_lead_plate_recipe"] = "248k-lead-plate",
    ["fu_neodym_plate_recipe"] = "248k-neodym-plate",
    ["fu_titan_plate_recipe"] = "248k-titanium-plate",
    ["fu_lead_recipe"] = "248k-lead-plate-molten",
    ["fu_pure_ore_recipe"] = "248k-pure-lead",
    ["fu_space_probe_data_card_2_recipe"] = "248k-compact-space-data-card",
    ["fu_space_probe_ore_recipe"] = "248k-structured-exotic-matter-down",
    ["gr_kovarex_2_recipe"] = "248k-structured-exotic-matter-down-from-up",
    ["gr_kovarex_recipe"] = "248k-structured-exotic-matter-up",
    ["fu_laser_crystal_recipe"] = "248k-high-energy-crystal",
    ["fu_refined_crystal_recipe"] = "248k-refined-crystal",
    ["fu_lead_crushed_recipe"] = "248k-crushed-lead",
    ["fu_carbon_fiber_recipe"] = "248k-carbon-fiber",
    ["fu_magnet_1_recipe"] = "248k-magnet",
    ["fu_KFK_recipe"] = "248k-carbon-fiber-reinforced-plastic",
    ["fu_TIM_recipe"] = "248k-titanium-metal-composite",
    ["fu_tech_sign_recipe"] = "248k-fusion-tech",
    ["fu_empty_container_recipe"] = "248k-empty-neutron-container",
    ["fu_space_probe_science_recipe"] = "248k-exotic-science-pack",
    ["fu_upgrade_recipe"] = "248k-advanced-upgrade",
    ["fu_activator_recipe"] = "248k-neutron-activator",
    ["fu_fusor_recipe"] = "248k-research-laboratory",
    ["fu_ingot_recipe"] = "248k-ingot-factory",
    ["fu_laser_recipe"] = "248k-laser-facility",
    ["fu_magnet_recipe"] = "248k-magnetising-facility",
    ["fu_plasma_recipe"] = "248k-plasma-facility",
    ["fu_turbine_recipe"] = "248k-big-turbine",
    ["fu_boiler_recipe"] = "248k-heat-exchanger",
    ["fu_exchanger_item_recipe"] = "248k-lead-heat-exchanger",
    ["fu_fusion_card_1_recipe"] = "248k-fusion-data-1",
    ["fu_fusion_card_2_recipe"] = "248k-fusion-data-2",
    ["fu_fusion_card_4_recipe"] = "248k-fusion-data-3",
    ["fu_fusion_card_5_recipe"] = "248k-fusion-data-4",
    ["fu_laser_card_recipe"] = "248k-laser-data",
    ["fu_magnet_card_recipe"] = "248k-magnetising-data",
    ["fu_plasma_card_recipe"] = "248k-plasma-data",
    ["fu_tokamak_reactor_recipe"] = "248k-tokamak-fusion-reactor",
    ["fu_stelar_reactor_recipe"] = "248k-stellarator-fusion-reactor",
    ["fu_robo_logistic_recipe"] = "248k-logistics-robot",
    ["fu_robo_construction_recipe"] = "248k-construction-robot",
    ["fu_space_probe_sputnik_recipe"] = "248k-sputnik-satellite",
    ["fu_space_probe_probe_recipe"] = "248k-space-probe-satellite",
    ["fu_space_probe_deep_probe_recipe"] = "248k-deep-space-probe-satellite",
    ["gr_magnet_train_pre_recipe"] = "248k-magnet-locomotive",
    ["gr_magnet_wagon_pre_recipe"] = "248k-magnet-cargo-wagon",
    ["gr_magnet_tanker_pre_recipe"] = "248k-fluid-wagon",
    ["fu_star_engine_core_recipe"] = "248k-star-engine-core",
    ["fu_star_engine_cooler_up_recipe"] = "248k-star-engine-cooler-top",
    ["fu_star_engine_cooler_recipe"] = "248k-star-engine-cooler-bottom",
    ["fu_star_engine_heater_left_recipe"] = "248k-star-engine-heater-left",
    ["fu_star_engine_heater_recipe"] = "248k-star-engine-heater-right",
    ["fu_boiler_hydrogen_oxygen_recipe"] = "248k-hydrogen-oxygen-1",
    ["fu_boiler_hydrogen_oxygen_1_recipe"] = "248k-hydrogen-oxygen-2",
    ["fu_boiler_hydrogen_oxygen_2_recipe"] = "248k-hydrogen-oxygen-3",
    ["fu_boiler_hydrogen_oxygen_3_recipe"] = "248k-hydrogen-oxygen-4",
    ["fu_charger_hydrogen_oxygen_recipe"] = "248k-charged-hydrogen-oxygen-1",
    ["fu_charger_hydrogen_oxygen_1_recipe"] = "248k-charged-hydrogen-oxygen-2",
    ["fu_charger_hydrogen_oxygen_2_recipe"] = "248k-charged-hydrogen-oxygen-3",
    ["fu_charger_hydrogen_oxygen_3_recipe"] = "248k-charged-hydrogen-oxygen-4",
    ["fu_heat_lead_recipe"] = "248k-lead-coolant-500-1",
    ["fu_lead_molten_recipe"] = "248k-lead-coolant-500-2",
    ["fu_stelerator_2_recipe"] = "248k-lead-coolant-1500-1",
    ["fu_stelerator_3_recipe"] = "248k-lead-coolant-1500-2",
    ["fu_tokamak_1_recipe"] = "248k-lead-coolant-1500-3",
    ["fu_tokamak_2_recipe"] = "248k-lead-coolant-1500-4",
    ["fu_exchanger_1_recipe"] = "248k-lead-to-steam-500",
    ["fu_exchanger_2_recipe"] = "248k-lead-to-steam-1000",
    ["fu_exchanger_3_recipe"] = "248k-lead-coolant-500-3",
    ["fu_exchanger_4_recipe"] = "248k-lead-to-steam-1500",
    ["fu_stelerator_2_neutron_recipe"] = "248k-charged-neutron-container",
    ["fu_stelerator_3_neutron_recipe"] = "248k-charged-neutron-container-2",
    ["fu_activator_1_recipe"] = "248k-protium-deuterium-atom",
    ["fu_activator_2_recipe"] = "248k-deuterium-tritium-atom",
    ["fu_hydrogen_recipe"] = "248k-protium-deutrium-tritium-atom",
    ["fu_lithium_6_recipe"] = "248k-lithium-atom",
    ["fu_neutron_fluid_232_recipe"] = "248k-neutron-fluid-1",
    ["fu_neutron_fluid_233_recipe"] = "248k-neutron-fluid-2",
    ["fu_neutron_fluid_235_recipe"] = "248k-neutron-fluid-3",
    ["fu_neutron_fluid_MOX_recipe"] = "248k-neutron-fluid-4",
    ["fu_neutron_fluid_container_recipe"] = "248k-unpack-neutron-fluid",
    ["fu_arc_pure_lead_recipe"] = "248k-molten-lead",
    ["fu_metal_foam_recipe"] = "248k-aluminium-foam",
    ["fu_treat_slag_recipe"] = "248k-dirty-water-slag",
    ["fu_ki_circuit_recipe"] = "248k-ki3-energy-provider",
    ["fu_ki_beacon_recipe"] = "248k-ki3-beacon",
    ["fu_ki_core_recipe"] = "248k-ki3-core",
    ["fu_ki_cpu_memory_circuit_recipe"] = "248k-ki3-tech",
    ["fu_star_engine_heater_1_recipe"] = "248k-protium-heated-atom",
    ["fu_star_engine_core_1_recipe"] = "248k-iron-core-atom",
    ["fu_star_engine_core_2_recipe"] = "248k-copper-core-atom",
    ["fu_star_engine_core_3_recipe"] = "248k-sulfur-core-atom",
    ["fu_star_engine_core_4_recipe"] = "248k-lithium-core-atom",
    ["fu_star_engine_core_5_recipe"] = "248k-uranium-235-core-atom",
    ["fu_star_engine_core_6_recipe"] = "248k-uranium-238-core-atom",
    ["fu_star_engine_cooler_1_recipe"] = "248k-iron-cooler-atom",
    ["fu_star_engine_cooler_2_recipe"] = "248k-copper-cooler-atom",
    ["fu_star_engine_cooler_3_recipe"] = "248k-sulfur-cooler-atom",
    ["fu_star_engine_cooler_4_recipe"] = "248k-lithium-cooler-atom",
    ["fu_star_engine_cooler_5_recipe"] = "248k-uranium-235-cooler-atom",
    ["fu_star_engine_cooler_6_recipe"] = "248k-uranium-238-cooler-atom",
    ["fu_star_engine_caster_4_recipe"] = "248k-star-cast-lithium",
    ["fu_star_engine_caster_1_recipe"] = "248k-star-cast-iron",
    ["fu_star_engine_caster_2_recipe"] = "248k-star-cast-copper",
    ["fu_star_engine_caster_3_recipe"] = "248k-star-cast-sulfur",
    ["fu_star_engine_caster_5_recipe"] = "248k-star-cast-uranium-235",
    ["fu_star_engine_caster_6_recipe"] = "248k-star-cast-uranium-238",
    ["gr_wheel_recipe"] = "248k-star-cast-iron-gear",
    ["gr_steel_recipe"] = "248k-star-cast-steel-plate",
    ["gr_circuit_recipe"] = "248k-hcp-circuit",
    ["gr_gold_wire_recipe"] = "248k-gold-cable",
    ["gr_magnet_recipe"] = "248k-hlp-magnet",
    --["gr_pcb_recipe"] = "248k-pcb",
    ["gr_plasma_cube_recipe"] = "248k-plasma-cube",
    ["gr_materials_stack_up_item_recipe"] = "248k-combined-matter-up",
    ["gr_materials_stack_down_item_recipe"] = "248k-combined-matter-down",
    ["gr_materials_fusion_cell_recipe"] = "248k-compact-fusion-cell",
    ["gr_crushed_exotic_recipe"] = "248k-crushed-exotic-matter",
    ["gr_stabilizer_recipe"] = "248k-exotic-matter-stabilizer",
    ["gr_data_recipe"] = "248k-deep-data",
    ["gr_stacked_data_recipe"] = "248k-stacked-deep-data",
    ["gr_magnet_train_recipe"] = "248k-magnet-locomotive-mk2",
    ["gr_magnet_wagon_recipe"] = "248k-magnet-cargo-wagon-mk2",
    ["gr_magnet_tanker_recipe"] = "248k-magnet-fluid-wagon-mk2",
    ["gr_materials_charge_recipe"] = "248k-discharge-defence-equipment",
    ["gr_materials_charge_remote_recipe"] = "248k-discharge-defence-remote",
    ["gr_charger_recipe"] = "248k-matter-charger",
    ["gr_crafter_recipe"] = "248k-fussion-assembling-machine",
    ["gr_lab_recipe"] = "248k-super-lab",
    ["gr_miner_upgrade_recipe"] = "248k-stone-quarry-mk4",
    ["gr_black_hole_recipe"] = "248k-black-hole-generator",
    ["gr_white_hole_recipe"] = "248k-white-hole-generator",
    ["fi_modules_productivity_4_recipe"] = "248k-productivity-module-4",
    ["fi_modules_productivity_5_recipe"] = "248k-productivity-module-5",
    ["fi_modules_productivity_6_recipe"] = "248k-productivity-module-6",
    ["gr_upgrade_recipe"] = "248k-ultimate-upgrade",
    ["gr_red_data_recipe"] = "248k-red-data",
    ["gr_green_data_recipe"] = "248k-green-data",
    ["gr_blue_data_recipe"] = "248k-blue-data",
    ["gr_purple_data_recipe"] = "248k-purple-data",
    ["gr_yellow_data_recipe"] = "248k-yellow-data",
    ["gr_grey_data_recipe"] = "248k-black-data",
    ["gr_white_data_recipe"] = "248k-white-data",
    ["gr_red_recipe"] = "248k-red-element",
    ["gr_green_recipe"] = "248k-green-element",
    ["gr_blue_recipe"] = "248k-blue-element",
    ["gr_purple_recipe"] = "248k-purple-element",
    ["gr_yellow_recipe"] = "248k-yellow-element",
    ["gr_grey_recipe"] = "248k-black-element",
    ["gr_white_recipe"] = "248k-white-element",
    ["gr_red_pack_recipe"] = "248k-red-science-pack",
    ["gr_green_pack_recipe"] = "248k-green-science-pack",
    ["gr_blue_pack_recipe"] = "248k-blue-science-pack",
    ["gr_purple_pack_recipe"] = "248k-purple-science-pack",
    ["gr_yellow_pack_recipe"] = "248k-yellow-science-pack",
    ["gr_grey_pack_recipe"] = "248k-black-science-pack",
    ["gr_white_pack_recipe"] = "248k-white-science-pack",
    ["fu_crush_stone_recipe"] = "248k-crush-rock-to-stone",
    ["fu_extract_stone_recipe"] = "248k-wash-rock-to-stone",
    ["fu_mining_recipe"] = "248k-mine-rock-fragment",
}

local renameitems248k =
{
    ["el_materials_pure_iron"] = "248k-pure-iron",
    ["el_materials_pure_copper"] = "248k-pure-copper",
    ["el_energy_crystal_charged_item"] = "248k-charged-mysterious-energy-crystal",
    ["el_energy_crystal_item"] = "248k-mysterious-energy-crystal",
    ["el_materials_ALK"] = "248k-aluminium-ceramic-composite",
    ["el_materials_ceramic"] = "248k-ceramic",
    ["el_materials_pure_aluminum"] = "248k-pure-aluminium",
    ["el_lithium_item"] = "248k-lithium",
    ["el_lithium_battery"] = "248k-lithium-battery",
    ["el_burner_item"] = "248k-burner-generator",
    ["el_aluminum_item"] = "248k-aluminium",
    ["el_burner_kerosene_item"] = "248k-kerosene-burner",
    ["fu_burner_item"] = "248k-item-and-fluid-handling-facility",
    ["el_arc_furnace_item"] = "248k-arc-furnace",
    ["el_caster_item"] = "248k-metal-caster",
    ["el_charger_item"] = "248k-electric-energy-injector",
    ["el_grower_item"] = "248k-crystal-grower",
    ["el_pressurizer_item"] = "248k-water-pressurizer",
    ["el_purifier_item"] = "248k-purifier",
    ["el_solar_item"] = "248k-solar-panel-mk2",
    ["el_tank_item"] = "248k-fluid-storage-tank",
    ["el_water_generator_item"] = "248k-water-turbine",
    ["el_diesel_train_item"] = "248k-diesel-locomotive",
    ["el_train_fuel_diesel_item"] = "248k-diesel-fuel-unit",
    ["el_train_fuel_diesel_energized_item"] = "248k-energized-diesel-fuel-unit",
    ["el_train_equipment_generator_item"] = "248k-diesel-locomotive-electricity-generator-equipment",
    ["el_train_equipment_accelerator_item"] = "248k-diesel-locomotive-turbocharger-equipment",
    ["el_ki_cpu_item"] = "248k-ki1-data-center",
    ["el_ki_memory_item"] = "248k-ki1-memory-provider",
    ["el_ki_beacon_item"] = "248k-ki1-beacon",
    ["el_ki_core_item"] = "248k-ki1-core",
    ["fi_thorium232_item"] = "248k-thorium-232",
    ["fi_uranium233_item"] = "248k-uranium-233",
    ["fi_plutonium239_item"] = "248k-plutonium-239",
    ["fi_materials_waste"] = "248k-nuclear-waste",
    ["fu_materials_stone"] = "248k-stone-fragment",
    ["fi_crushed_lithium_item"] = "248k-crushed-lithium",
    ["fi_crushed_crystal_item"] = "248k-crushed-energy-crystal",
    ["fi_crushed_coal_item"] = "248k-crushed-coal",
    ["fi_crushed_glass_item"] = "248k-crushed-glass",
    ["fi_crushed_stone_item"] = "248k-crushed-stone",
    ["fi_materials_rich_powder"] = "248k-rich-powder",
    ["fi_materials_flourite"] = "248k-flourite-crystal",
    ["fi_materials_glass"] = "248k-industrial-glass",
    ["fi_materials_glass_fiber"] = "248k-fiberglass",
    ["fi_materials_gold"] = "248k-gold-plate",
    ["fi_materials_natural_fiber"] = "248k-natural-fiber",
    ["fi_materials_neodym"] = "248k-neodym-plate",
    ["fi_materials_pure_gold"] = "248k-pure-gold",
    ["fi_materials_pure_neodym"] = "248k-pure-neodym",
    ["fi_materials_pure_titan"] = "248k-pure-titanium",
    ["fi_materials_titan"] = "248k-titanium-plate",
    ["fi_materials_GFK"] = "248k-fiberglass-reinforced-plastic",
    ["fi_materials_NFK"] = "248k-natural-fiber-reinforced-plastic",
    ["fu_miner_fuel_item"] = "248k-stone-quarry-drill",
    ["fi_energy_crystal_charged_item"] = "248k-charged-artificial-energy-crystal",
    ["fi_energy_crystal_item"] = "248k-artificial-energy-crystal",
    ["fi_materials_empty_solution"] = "248k-empty-solution-container",
    ["fi_materials_dirty_solution"] = "248k-dirty-water-container",
    ["fi_materials_rich_solution"] = "248k-rich-solution-container",
    ["fi_materials_solution"] = "248k-corrosive-solution-container",
    ["fi_castor_item"] = "248k-nuclear-waste-storage",
    ["fi_crafter_item"] = "248k-nuclear-assembling-machine",
    ["fi_fiberer_item"] = "248k-fiber-maker",
    ["fi_compound_machine_item"] = "248k-compound-material-facility",
    ["fi_robo_charger_item"] = "248k-roboport-charging-station",
    ["fi_robo_port_item"] = "248k-advanced-roboport",
    ["fu_miner_item"] = "248k-stone-quarry",
    ["fu_miner_item_2"] = "248k-stone-quarry-mk2",
    ["fi_crusher_item"] = "248k-crushing-factory",
    ["fi_solid_reactor_item"] = "248k-nuclear-reactor",
    ["fi_basic_fuel_item"] = "248k-uranium-235-fuel-rod",
    ["fi_basic_thorium_fuel_item"] = "248k-thorium-232-fuel-rod",
    ["fi_advanced_fuel_item"] = "248k-mox-fuel-rod",
    ["fi_advanced_thorium-fuel_item"] = "248k-uranium-233-fuel-rod",
    ["fi_pure_fuel_item"] = "248k-high-energy-mox-fuel-rod",
    ["fi_used_advanced_fuel_item"] = "248k-used-up-mox-fuel-rod",
    ["fi_used_advanced_thorium_fuel_item"] = "248k-used-up-uranium-233-fuel-rod",
    ["fi_used_basic_fuel_item"] = "248k-used-up-uranium-235-fuel-rod",
    ["fi_used_basic_thorium_fuel_item"] = "248k-used-up-thorium-232-fuel-rod",
    ["fi_used_pure_fuel_item"] = "248k-used-up-high-energy-mox-fuel-rod",
    ["fi_fuel_train_crystal_item"] = "248k-super-energized-fuel-unit",
    ["fi_train_equipment_generator_item"] = "248k-diesel-locomotive-nuclear-reactor-equipment",
    ["fi_equipment_player_reactor_item"] = "248k-portable-nuclear-reactor-equipment",
    ["fi_equipment_player_shield_item"] = "248k-advanced-energy-shield-equipment",
    ["fi_modules_base_item"] = "248k-module-frame",
    ["fi_modules_core_item"] = "248k-module-core",
    ["fi_modules_productivity_1_item"] = "248k-productivity-module-mk1",
    ["fi_modules_productivity_2_item"] = "248k-productivity-module-mk2",
    ["fi_modules_productivity_3_item"] = "248k-productivity-module-mk3",
    ["fi_materials_upgrade"] = "248k-basic-upgrade",
    ["fi_ki_circuit_item"] = "248k-ki2-energy-provider",
    ["fi_ki_beacon_item"] = "248k-ki2-beacon",
    ["fi_ki_core_item"] = "248k-ki2-core",
    ["fi_ki_science"] = "248k-ki2-tech",
    ["fu_lead_ore_item"] = "248k-lead ore",
    ["fu_materials_energy_charged_crystal"] = "248k-charged-high-energy-crystals",
    ["fu_materials_energy_crystal"] = "248k-high-energy-crystal",
    ["fu_materials_gold_ingot"] = "248k-gold-ingot",
    ["fu_materials_lead_ingot"] = "248k-lead-ingot",
    ["fu_materials_neodym_ingot"] = "248k-neodym-ingot",
    ["fu_materials_pure_lead"] = "248k-pure-lead",
    ["fu_materials_refined_crystal"] = "248k-refined-crystal",
    ["fu_materials-titan_ingot"] = "248k-titanium-ingot",
    ["fu_lead_item"] = "248k-lead-plate",
    ["fu_space_probe_data_card_1_item"] = "248k-basic-space-data-card",
    ["fu_space_probe_data_card_2_item"] = "248k-compact-space-data-card",
    ["fu_space_probe_data_card_3_item"] = "248k-Deep-space-data-card",
    ["fu_space_probe_down_matter_item"] = "248k-structured-exotic-matter-down",
    ["fu_space_probe_up_mater_item"] = "248k-structured-exotic-matter-up",
    ["fu_materials_slag"] = "248k-slag",
    ["fu_crushed_lead_item"] = "248k-crushed-lead",
    ["fu_materials_KFK"] = "248k-carbon-fiber-reinforced-plastic",
    ["fu_materials_TIM"] = "248k-titanium-metal-composite",
    ["fu_materials_carbon_fiber"] = "248k-carbon-fiber",
    ["fu_materials_magnet"] = "248k-magnet",
    ["fu_tech_sign_item"] = "248k-fusion-tech",
    ["fu_materials_charged_container"] = "248k-charged-neutron-container",
    ["fu_materials_empty_container"] = "248k-empty-neutron-container",
    ["fu_space_probe_science_item"] = "248k-exotic-science-pack",
    ["fu_space_probe_science_item_1"] = "248k-ki-science-pack",
    ["fu_materials_upgrade"] = "248k-advanced-upgrade",
    ["fu_activator_item"] = "248k-neutron-activator",
    ["fu_fusor_item"] = "248k-research-laboritory",
    ["fu_lab_item"] = "248k-t-lab",
    ["fu_ingot_item"] = "248k-ingot-factory",
    ["fu_laser_item"] = "248k-laser-facility",
    ["fu_magnet_item"] = "248k-magnetising-facility",
    ["fu_miner_item_3"] = "248k-stone-quarry-mk3",
    ["fu_plasma_item"] = "248k-plasma-facility",
    ["fu_turbine_item"] = "248k-big-turbine",
    ["fu_boiler_item"] = "248k-thermochemical-seperator",
    ["fu_exchanger-item"] = "248k-liquid-lead-heat-exchanger",
    ["fu_materials_fusion_card"] = "248k-fusion-data",
    ["fu_materials_laser_card"] = "248k-laser-data",
    ["fu_materials_magnet_card"] = "248k-magnetising-data",
    ["fu_materials_plasma_card"] = "248k-plasma-data",
    ["fu_tokamak_reactor_item"] = "248k-tokamak-fusion-reactor",
    ["fu_stelar_reactor_item"] = "248k-stellarator-fusion-reactor",
    ["fu_robo_logistic_item"] = "248k-hertz-logistics-robot",
    ["fu_robo_construction_item"] = "248k-tesla-construction-robot",
    ["fu_space_probe_ore_item"] = "248k-deep-space-ore",
    ["fu_ki_circuit_item"] = "248k-ki3-energy-provider",
    ["fu_ki_beacon_item"] = "248k-ki3-beacon",
    ["fu_ki_core_item"] = "248k-ki3-core",
    ["fu_ki_science"] = "248k-ki3-tech",
    ["gr_materials_magnet"] = "248k-hlp-magnet",
    ["gr_materials_pcb"] = "248k-pcb",
    ["gr_materials_plasma_cube"] = "248k-plasma-container",
    ["gr_materials_stack_up_item"] = "248k-combined-matter-up",
    ["gr_materials_stack_down_item"] = "248k-combined-matter-down",
    ["gr_materials_fusion_cell_item"] = "248k-compact-fusion-cell",
    ["gr_materials_cooked_crystal_item"] = "248k-freshly-grown-crystal",
    ["gr_materials_refined_crystal_item"] = "248k-freshly-refined-crystals",
    ["gr_materials_crushed_exotic_item"] = "248k-crushed-exotic-matter",
    ["gr_materials_stabilizer_item"] = "248k-exotic-matter-stabilizer",
    ["gr_materials_data_item"] = "248k-deep-data",
    ["gr_materials_stacked_data_item"] = "248k-stacked-deep-data",
    ["gr_materials_charge_item"] = "248k-ultimate-discharge-defence",
    ["gr_charger_item"] = "248k-matter-charger",
    ["gr_crafter_item"] = "248k-fusion-assembling-machine",
    ["gr_lab_item"] = "248k-s-lab",
    ["fu_miner_item_4"] = "248k-stone-quarry-mk4",
    ["gr_materials_upgrade"] = "248k-ultimate-upgrade",
    ["gr_materials_red_data_item"] = "248k-red-data",
    ["gr_materials_green_data_item"] = "248k-green-data",
    ["gr_materials_blue_data_item"] = "248k-blue-data",
    ["gr_materials_purple_data_item"] = "248k-purple-data",
    ["gr_materials_yellow_data_item"] = "248k-yellow-data",
    ["gr_materials_grey_data_item"] = "248k-grey-data",
    ["gr_materials_white_data_item"] = "248k-white-data",
    ["gr_material_red_item"] = "248k-3,6k-element",
    ["gr_materials_green_item"] = "248k-7,2k-element",
    ["gr_materials_blue_item"] = "248k-15,5-element",
    ["gr_materials_purple_item"] = "248k-31k-element",
    ["gr_materials_yellow_item"] = "248k-62k-element",
    ["gr_materials_grey_item"] = "248k-124k-element",
}

if mods["248k"] then
    util.create_and_replace_recipe(renamerecipes248k)
    util.create_and_replace_item(renameitems248k)
end



