#priority -2

import crafttweaker.item.IIngredient;

var STAGE = STAGES.four;

//Entire Mods into Stage four
var modIDs as string[] = [
	"car",
	"cookingforblockheads",
	"elevatorid",
	"environmentaltech",
	"indlog",
	"integrateddynamics",
	"modularrouters",
	"refinedstorage",
	"storagenetwork"
];

for id in modIDs {
    for item in loadedMods[id].items {
        mods.recipestages.Recipes.setRecipeStage(STAGE, item);
    }
}

var itemsForStage as IIngredient[] = [
	<immersiveengineering:storage_slab:5>,

	//Bonsai
	<bonsaitrees:bonsaipot:1>,
	<bonsaitrees:bonsaipot>,

	//Actually Additions
	<actuallyadditions:battery_bauble>,
	<actuallyadditions:battery_double_bauble>,
	<actuallyadditions:battery_quadruple_bauble>,
	<actuallyadditions:battery_quintuple_bauble>,
	<actuallyadditions:battery_triple_bauble>,
	<actuallyadditions:block_battery_box>,
	<actuallyadditions:block_chiseled_quartz_slab>,
	<actuallyadditions:block_chiseled_quartz_stair>,
	<actuallyadditions:block_chiseled_quartz_wall>,
	<actuallyadditions:block_coal_generator>,
	<actuallyadditions:block_farmer>,
	<actuallyadditions:block_feeder>,
	<actuallyadditions:block_furnace_double>,
	<actuallyadditions:block_giant_chest>,
	<actuallyadditions:block_grinder>,
	<actuallyadditions:block_grinder_double>,
	<actuallyadditions:block_item_viewer_hopping>,
	<actuallyadditions:block_misc:4>,
	<actuallyadditions:block_misc:6>,
	<actuallyadditions:block_misc:7>,
	<actuallyadditions:block_oil_generator>,
	<actuallyadditions:block_pillar_quartz_slab>,
	<actuallyadditions:block_pillar_quartz_stair>,
	<actuallyadditions:block_pillar_quartz_wall>,
	<actuallyadditions:block_quartz_slab>,
	<actuallyadditions:block_quartz_stair>,
	<actuallyadditions:block_quartz_wall>,
	<actuallyadditions:block_smiley_cloud>,
	<actuallyadditions:item_bag>,
	<actuallyadditions:item_booklet>,
	<actuallyadditions:item_chest_to_crate_upgrade>,
	<actuallyadditions:item_coffee>,
	<actuallyadditions:item_crate_keeper>,
	<actuallyadditions:item_drill:*>,
	<actuallyadditions:item_filter>,
	<actuallyadditions:item_growth_ring>,
	<actuallyadditions:item_leaf_blower>,
	<actuallyadditions:item_medium_to_large_crate_upgrade>,
	<actuallyadditions:item_misc:6>,
	<actuallyadditions:item_misc:14>,
	<actuallyadditions:item_resonant_rice>,
	<actuallyadditions:item_small_to_medium_crate_upgrade>,
	<actuallyadditions:item_void_bag>,
	<actuallyadditions:magnet_ring_bauble>,
	<actuallyadditions:potion_ring_advanced_bauble:*>,

	//Dark Utils
	<darkutils:anti_slime>,
	<darkutils:ender_pearl_hopper>,
	<darkutils:monolith:1>,
	<darkutils:monolith>,
	<darkutils:pearl_block:1>,
	<darkutils:pearl_block:2>,
	<darkutils:pearl_block:3>,
	<darkutils:pearl_block>,
	<darkutils:shulker_pearl>,
	<darkutils:sneaky_button>,
	<darkutils:trap_tile:1>,
	<darkutils:trap_tile:2>,
	<darkutils:trap_tile:4>,
	<darkutils:trap_tile:6>,
	<darkutils:trap_tile:7>,
	<darkutils:trap_tile>,

	//Mob Grinding Utils
	<mob_grinding_utils:absorption_hopper>,
	<mob_grinding_utils:absorption_upgrade>,
	<mob_grinding_utils:dark_oak_stone>,
	<mob_grinding_utils:dragon_muffler>,
	<mob_grinding_utils:fan>,
	<mob_grinding_utils:fan_upgrade:1>,
	<mob_grinding_utils:fan_upgrade:2>,
	<mob_grinding_utils:fan_upgrade>,
	<mob_grinding_utils:saw>,
	<mob_grinding_utils:saw_upgrade:1>,
	<mob_grinding_utils:saw_upgrade:2>,
	<mob_grinding_utils:saw_upgrade:3>,
	<mob_grinding_utils:saw_upgrade:4>,
	<mob_grinding_utils:saw_upgrade:5>,
	<mob_grinding_utils:saw_upgrade>,
	<mob_grinding_utils:spikes>,
	<mob_grinding_utils:tank>,
	<mob_grinding_utils:tank_sink>,
	<mob_grinding_utils:wither_muffler>,
	<mob_grinding_utils:xp_tap>,

	//Extended Crafting
	<extendedcrafting:interface>,
	<extendedcrafting:material:36>,
	<extendedcrafting:material:37>,
	<extendedcrafting:material:40>,
	<extendedcrafting:material:41>,
	<extendedcrafting:material:48>,
	<extendedcrafting:material:49>,
	<extendedcrafting:storage:5>,
	<extendedcrafting:storage:6>,
	<extendedcrafting:storage:7>,
	<extendedcrafting:table_elite>,

	//Quark
	<quark:biotite_stairs>,
	<quark:duskbound_block_stairs>,
	<quark:ender_watcher>,
	<quark:iron_rod>,
	<quark:purpur_block_wall>,
	<quark:rain_detector>,

	//Pickle Tweaks
	<pickletweaks:magnet>,
	<pickletweaks:nightvision_goggles>,
	<pickletweaks:nightvision_goggles_c>,

	//Industrial Foregoing
	<industrialforegoing:adult_filter>,
	<industrialforegoing:animal_byproduct_recolector>,
	<industrialforegoing:animal_growth_increaser>,
	<industrialforegoing:animal_independence_selector>,
	<industrialforegoing:animal_resource_harvester>,
	<industrialforegoing:animal_stock_increaser>,
	<industrialforegoing:biofuel_generator>,
	<industrialforegoing:bioreactor>,
	<industrialforegoing:block_destroyer>,
	<industrialforegoing:block_placer>,
	<industrialforegoing:book_manual>,
	<industrialforegoing:crop_enrich_material_injector>,
	<industrialforegoing:crop_recolector>,
	<industrialforegoing:crop_sower>,
	<industrialforegoing:dryrubber>,
	<industrialforegoing:dye_mixer>,
	<industrialforegoing:enchantment_aplicator>,
	<industrialforegoing:enchantment_extractor>,
	<industrialforegoing:enchantment_invoker>,
	<industrialforegoing:enchantment_refiner>,
	<industrialforegoing:energy_field_addon>,
	<industrialforegoing:energy_field_provider>,
	<industrialforegoing:fertilizer>,
	<industrialforegoing:fluid_transfer_addon_pull>,
	<industrialforegoing:fluid_transfer_addon_push>,
	<industrialforegoing:hydrator>,
	<industrialforegoing:item_splitter>,
	<industrialforegoing:itemstack_transfer_addon_pull>,
	<industrialforegoing:itemstack_transfer_addon_push>,
	<industrialforegoing:lava_fabricator>,
	<industrialforegoing:leaf_shearing>,
	<industrialforegoing:material_stonework_factory>,
	<industrialforegoing:meat_feeder>,
	<industrialforegoing:mob_detector>,
	<industrialforegoing:mob_duplicator>,
	<industrialforegoing:mob_imprisonment_tool>,
	<industrialforegoing:mob_relocator>,
	<industrialforegoing:mob_slaughter_factory>,
	<industrialforegoing:ore_processor>,
	<industrialforegoing:oredictionary_converter>,
	<industrialforegoing:petrified_fuel_generator>,
	<industrialforegoing:pink_slime>,
	<industrialforegoing:plant_interactor>,
	<industrialforegoing:plastic>,
	<industrialforegoing:potion_enervator>,
	<industrialforegoing:protein_generator>,
	<industrialforegoing:protein_reactor>,
	<industrialforegoing:range_addon:1>,
	<industrialforegoing:range_addon:2>,
	<industrialforegoing:range_addon:3>,
	<industrialforegoing:range_addon:4>,
	<industrialforegoing:range_addon:5>,
	<industrialforegoing:range_addon:6>,
	<industrialforegoing:range_addon:7>,
	<industrialforegoing:range_addon:8>,
	<industrialforegoing:range_addon:9>,
	<industrialforegoing:range_addon:10>,
	<industrialforegoing:range_addon:11>,
	<industrialforegoing:range_addon>,
	<industrialforegoing:resourceful_furnace>,
	<industrialforegoing:sewage_composter_solidifier>,
	<industrialforegoing:sludge_refiner>,
	<industrialforegoing:spores_recreator>,
	<industrialforegoing:straw>,
	<industrialforegoing:tinydryrubber>,
	<industrialforegoing:villager_trade_exchanger>,
	<industrialforegoing:water_condensator>,
	<industrialforegoing:water_resources_collector>,
	<industrialforegoing:wither_builder>,

	//Cyclic
	<cyclicmagic:block_disenchanter>,
	<cyclicmagic:block_library>,
	<cyclicmagic:block_library_ctrl>,
	<cyclicmagic:block_screen>,
	<cyclicmagic:block_shears>,
	<cyclicmagic:block_user>,
	<cyclicmagic:block_vacuum>,
	<cyclicmagic:bundled_pipe>,
	<cyclicmagic:charm_void>,
	<cyclicmagic:ender_pearl_mounted>,
	<cyclicmagic:ender_pearl_reuse>,
	<cyclicmagic:energy_pipe>,
	<cyclicmagic:energy_pump>,
	<cyclicmagic:exp_pylon>,
	<cyclicmagic:fan>,
	<cyclicmagic:fluid_pipe>,
	<cyclicmagic:fluid_pump>,
	<cyclicmagic:glowing_helmet>,
	<cyclicmagic:item_pipe>,
	<cyclicmagic:item_pipe_sort>,
	<cyclicmagic:item_pump>,
	<cyclicmagic:magnet_block>,
	<cyclicmagic:password_block>,
	<cyclicmagic:password_remote>,
	<cyclicmagic:plate_push_slow>,
	<cyclicmagic:plate_vector>,
	<cyclicmagic:tool_mount_inverse>,
	<cyclicmagic:wireless_receiver>,
	<cyclicmagic:wireless_transmitter>,

	//Tinkers
	<tcomplement:manyullyn_boots>,
	<tcomplement:manyullyn_chestplate>,
	<tcomplement:manyullyn_helmet>,
	<tcomplement:manyullyn_leggings>,
	<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 0 as short}}),
	<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 1 as short}}),
	<tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 2 as short}}),

	//Tesla
	<teslacorelib:base_addon>,
	<teslacorelib:energy_tier1>,
	<teslacorelib:energy_tier2>,
	<teslacorelib:machine_case>,
	<teslacorelib:speed_tier1>,
	<teslacorelib:speed_tier2>,
	<teslacorelib:wrench>,

	//Modular Machinery
	<modularmachinery:blockcasing:2>,
	<modularmachinery:blockcasing:3>,
	<modularmachinery:blockcasing:4>,
	<modularmachinery:blockcasing:5>,
	<modularmachinery:blockenergyinputhatch:1>,
	<modularmachinery:blockenergyinputhatch:2>,
	<modularmachinery:blockenergyinputhatch:3>,
	<modularmachinery:blockenergyinputhatch:4>,
	<modularmachinery:blockenergyinputhatch:5>,
	<modularmachinery:blockenergyinputhatch:6>,
	<modularmachinery:blockenergyinputhatch:7>,
	<modularmachinery:blockenergyoutputhatch:1>,
	<modularmachinery:blockenergyoutputhatch:2>,
	<modularmachinery:blockenergyoutputhatch:3>,
	<modularmachinery:blockenergyoutputhatch:4>,
	<modularmachinery:blockenergyoutputhatch:5>,
	<modularmachinery:blockenergyoutputhatch:6>,
	<modularmachinery:blockenergyoutputhatch:7>,
	<modularmachinery:blockenergyoutputhatch>,
	<modularmachinery:blockfluidinputhatch:1>,
	<modularmachinery:blockfluidinputhatch:2>,
	<modularmachinery:blockfluidinputhatch:3>,
	<modularmachinery:blockfluidinputhatch:4>,
	<modularmachinery:blockfluidinputhatch:5>,
	<modularmachinery:blockfluidinputhatch:6>,
	<modularmachinery:blockfluidinputhatch:7>,
	<modularmachinery:blockfluidoutputhatch:1>,
	<modularmachinery:blockfluidoutputhatch:2>,
	<modularmachinery:blockfluidoutputhatch:3>,
	<modularmachinery:blockfluidoutputhatch:4>,
	<modularmachinery:blockfluidoutputhatch:5>,
	<modularmachinery:blockfluidoutputhatch:6>,
	<modularmachinery:blockfluidoutputhatch:7>,
	<modularmachinery:blockinputbus:2>,
	<modularmachinery:blockinputbus:3>,
	<modularmachinery:blockinputbus:4>,
	<modularmachinery:blockinputbus:5>,
	<modularmachinery:blockinputbus:6>,
	<modularmachinery:blockoutputbus:2>,
	<modularmachinery:blockoutputbus:3>,
	<modularmachinery:blockoutputbus:4>,
	<modularmachinery:blockoutputbus:5>,
	<modularmachinery:blockoutputbus:6>,

	//Applied Energistics
	<appliedenergistics2:biometric_card>,
	<appliedenergistics2:certus_quartz_axe>,
	<appliedenergistics2:certus_quartz_cutting_knife>,
	<appliedenergistics2:certus_quartz_hoe>,
	<appliedenergistics2:certus_quartz_pickaxe>,
	<appliedenergistics2:certus_quartz_spade>,
	<appliedenergistics2:certus_quartz_sword>,
	<appliedenergistics2:certus_quartz_wrench>,
	<appliedenergistics2:charged_quartz_ore>,
	<appliedenergistics2:chiseled_quartz_block>,
	<appliedenergistics2:chiseled_quartz_slab>,
	<appliedenergistics2:chiseled_quartz_stairs>,
	<appliedenergistics2:energy_acceptor>,
	<appliedenergistics2:fluix_block>,
	<appliedenergistics2:fluix_slab>,
	<appliedenergistics2:fluix_stairs>,
	<appliedenergistics2:inscriber>,
	<appliedenergistics2:light_detector>,
	<appliedenergistics2:material:1>,
	<appliedenergistics2:material:2>,
	<appliedenergistics2:material:7>,
	<appliedenergistics2:material:8>,
	<appliedenergistics2:material:13>,
	<appliedenergistics2:material:15>,
	<appliedenergistics2:material:16>,
	<appliedenergistics2:material:18>,
	<appliedenergistics2:material:22>,
	<appliedenergistics2:material:23>,
	<appliedenergistics2:material:43>,
	<appliedenergistics2:material:44>,
	<appliedenergistics2:material>,
	<appliedenergistics2:nether_quartz_axe>,
	<appliedenergistics2:nether_quartz_cutting_knife>,
	<appliedenergistics2:nether_quartz_hoe>,
	<appliedenergistics2:nether_quartz_pickaxe>,
	<appliedenergistics2:nether_quartz_spade>,
	<appliedenergistics2:nether_quartz_sword>,
	<appliedenergistics2:nether_quartz_wrench>,
	<appliedenergistics2:part:1>,
	<appliedenergistics2:part:2>,
	<appliedenergistics2:part:3>,
	<appliedenergistics2:part:4>,
	<appliedenergistics2:part:5>,
	<appliedenergistics2:part:6>,
	<appliedenergistics2:part:7>,
	<appliedenergistics2:part:8>,
	<appliedenergistics2:part:9>,
	<appliedenergistics2:part:10>,
	<appliedenergistics2:part:11>,
	<appliedenergistics2:part:12>,
	<appliedenergistics2:part:13>,
	<appliedenergistics2:part:14>,
	<appliedenergistics2:part:15>,
	<appliedenergistics2:part:16>,
	<appliedenergistics2:part:120>,
	<appliedenergistics2:part:140>,
	<appliedenergistics2:part:160>,
	<appliedenergistics2:part:200>,
	<appliedenergistics2:part:220>,
	<appliedenergistics2:part:240>,
	<appliedenergistics2:part:260>,
	<appliedenergistics2:part>,
	<appliedenergistics2:quartz_block>,
	<appliedenergistics2:quartz_fixture>,
	<appliedenergistics2:quartz_glass>,
	<appliedenergistics2:quartz_ore>,
	<appliedenergistics2:quartz_pillar>,
	<appliedenergistics2:quartz_pillar_slab>,
	<appliedenergistics2:quartz_pillar_stairs>,
	<appliedenergistics2:quartz_slab>,
	<appliedenergistics2:quartz_stairs>,
	<appliedenergistics2:quartz_vibrant_glass>,

	//Refined Storage
	<refinedstorage:machine_casing>,
	<refinedstorage:network_card>,
	<refinedstorage:quartz_enriched_iron>,
	<refinedstorage:quartz_enriched_iron_block>,
	<refinedstorage:security_card>,

	//Buildcraft
	<buildcraftbuilders:architect>,
	<buildcraftbuilders:builder>,
	<buildcraftbuilders:filler>,
	<buildcraftbuilders:quarry>,
	<buildcraftbuilders:snapshot:2>,
	<buildcraftbuilders:snapshot>,
	<buildcraftcore:marker_connector>,
	<buildcraftcore:marker_path>,
	<buildcraftcore:marker_volume>,
	<buildcraftfactory:autoworkbench_item>,
	<buildcraftfactory:chute>,
	<buildcraftfactory:distiller>,
	<buildcraftfactory:flood_gate>,
	<buildcraftfactory:gel>,
	<buildcraftfactory:heat_exchange>,
	<buildcraftfactory:mining_well>,
	<buildcraftfactory:pump>,
	<buildcraftrobotics:zone_planner>,
	<buildcraftsilicon:advanced_crafting_table>,
	<buildcraftsilicon:assembly_table>,
	<buildcraftsilicon:integration_table>,
	<buildcraftsilicon:laser>,
	<buildcraftsilicon:redstone_chipset:1>,
	<buildcraftsilicon:redstone_chipset:2>,
	<buildcraftsilicon:redstone_chipset:3>,
	<buildcraftsilicon:redstone_chipset:4>,
	<buildcraftsilicon:redstone_chipset>,
	<buildcrafttransport:filtered_buffer>,
	<buildcrafttransport:pipe_cobble_power>,
	<buildcrafttransport:pipe_gold_fluid>,
	<buildcrafttransport:pipe_gold_item>,
	<buildcrafttransport:pipe_gold_power>,
	<buildcrafttransport:pipe_lapis_item>,
	<buildcrafttransport:pipe_obsidian_item>,
	<buildcrafttransport:pipe_quartz_power>,
	<buildcrafttransport:pipe_sandstone_power>,
	<buildcrafttransport:pipe_stone_power>,
	<buildcrafttransport:pipe_wood_power>,
	<buildcrafttransport:plug_gate:*>,

	//Pneumatic Craft
	<pneumaticcraft:advanced_air_compressor>,
	<pneumaticcraft:advanced_liquid_compressor>,
	<pneumaticcraft:advanced_pcb>,
	<pneumaticcraft:aerial_interface>,
	<pneumaticcraft:air_canister:30000>,
	<pneumaticcraft:air_cannon>,
	<pneumaticcraft:air_compressor>,
	<pneumaticcraft:air_grate_module>,
	<pneumaticcraft:amadron_tablet:30000>,
	<pneumaticcraft:aphorism_tile>,
	<pneumaticcraft:assembly_controller>,
	<pneumaticcraft:assembly_io_unit>,
	<pneumaticcraft:assembly_laser>,
	<pneumaticcraft:assembly_platform>,
	<pneumaticcraft:assembly_program:2>,
	<pneumaticcraft:block_tracker_upgrade>,
	<pneumaticcraft:camo_applicator:30000>,
	<pneumaticcraft:cannon_barrel>,
	<pneumaticcraft:charging_module>,
	<pneumaticcraft:charging_station>,
	<pneumaticcraft:coordinate_tracker_upgrade>,
	<pneumaticcraft:dispenser_upgrade>,
	<pneumaticcraft:drone>,
	<pneumaticcraft:electrostatic_compressor>,
	<pneumaticcraft:elevator_base>,
	<pneumaticcraft:elevator_caller>,
	<pneumaticcraft:elevator_frame>,
	<pneumaticcraft:entity_tracker_upgrade>,
	<pneumaticcraft:flow_detector_module>,
	<pneumaticcraft:flux_compressor>,
	<pneumaticcraft:gas_lift>,
	<pneumaticcraft:gps_tool>,
	<pneumaticcraft:gun_ammo>,
	<pneumaticcraft:heat_frame>,
	<pneumaticcraft:heat_sink>,
	<pneumaticcraft:item_life_upgrade>,
	<pneumaticcraft:kerosene_lamp>,
	<pneumaticcraft:liquid_compressor>,
	<pneumaticcraft:logistic_drone>,
	<pneumaticcraft:logistic_frame_active_provider>,
	<pneumaticcraft:logistic_frame_default_storage>,
	<pneumaticcraft:logistic_frame_passive_provider>,
	<pneumaticcraft:logistic_frame_requester>,
	<pneumaticcraft:logistic_frame_storage>,
	<pneumaticcraft:logistics_configurator:30000>,
	<pneumaticcraft:logistics_module>,
	<pneumaticcraft:manometer:30000>,
	<pneumaticcraft:minigun>,
	<pneumaticcraft:network_component:1>,
	<pneumaticcraft:network_component:2>,
	<pneumaticcraft:network_component:3>,
	<pneumaticcraft:network_component:4>,
	<pneumaticcraft:network_component:5>,
	<pneumaticcraft:network_component>,
	<pneumaticcraft:omnidirectional_hopper>,
	<pneumaticcraft:plastic_mixer>,
	<pneumaticcraft:pneumatic_cylinder>,
	<pneumaticcraft:pneumatic_door>,
	<pneumaticcraft:pneumatic_door_base>,
	<pneumaticcraft:pneumatic_dynamo>,
	<pneumaticcraft:pneumatic_helmet>,
	<pneumaticcraft:pneumatic_wrench:30000>,
	<pneumaticcraft:pressure_chamber_glass>,
	<pneumaticcraft:pressure_chamber_interface>,
	<pneumaticcraft:pressure_chamber_valve>,
	<pneumaticcraft:pressure_chamber_wall>,
	<pneumaticcraft:pressure_gauge>,
	<pneumaticcraft:pressure_gauge_module>,
	<pneumaticcraft:pressure_tube>,
	<pneumaticcraft:printed_circuit_board>,
	<pneumaticcraft:programmable_controller>,
	<pneumaticcraft:programmer>,
	<pneumaticcraft:range_upgrade>,
	<pneumaticcraft:regulator_tube_module>,
	<pneumaticcraft:remote>,
	<pneumaticcraft:safety_tube_module>,
	<pneumaticcraft:search_upgrade>,
	<pneumaticcraft:security_station>,
	<pneumaticcraft:security_upgrade>,
	<pneumaticcraft:seismic_sensor>,
	<pneumaticcraft:sentry_turret>,
	<pneumaticcraft:speed_upgrade>,
	<pneumaticcraft:stone_base>,
	<pneumaticcraft:transfer_gadget>,
	<pneumaticcraft:turbine_rotor>,
	<pneumaticcraft:universal_sensor>,
	<pneumaticcraft:uv_light_box>,
	<pneumaticcraft:vacuum_pump>,
	<pneumaticcraft:volume_upgrade>,
	<pneumaticcraft:vortex_cannon:30000>,
	<pneumaticcraft:vortex_tube>,

	//Steve's Carts
	<stevescarts:cartmodule:1>,
	<stevescarts:cartmodule:56>,
	<stevescarts:modulecomponents:44>,

	//Galacticraft
	<galacticraftcore:air_lock_frame:1>,
	<galacticraftcore:air_lock_frame>,
	<galacticraftcore:air_vent>,
	<galacticraftcore:basic_block_core:4>,
	<galacticraftcore:canister>,
	<galacticraftcore:canvas>,
	<galacticraftcore:collector>,
	<galacticraftcore:engine>,
	<galacticraftcore:flag>,
	<galacticraftcore:fuel_canister_partial:1>,
	<galacticraftcore:fuel_loader>,
	<galacticraftcore:glowstone_torch>,
	<galacticraftcore:landing_pad>,
	<galacticraftcore:machine:12>,
	<galacticraftcore:machine>,
	<galacticraftcore:nose_cone>,
	<galacticraftcore:oxygen_compressor>,
	<galacticraftcore:oxygen_concentrator>,
	<galacticraftcore:oxygen_gear>,
	<galacticraftcore:oxygen_mask>,
	<galacticraftcore:oxygen_tank_light_full>,
	<galacticraftcore:parachute:1>,
	<galacticraftcore:parachute:2>,
	<galacticraftcore:parachute:3>,
	<galacticraftcore:parachute:4>,
	<galacticraftcore:parachute:5>,
	<galacticraftcore:parachute:6>,
	<galacticraftcore:parachute:7>,
	<galacticraftcore:parachute:8>,
	<galacticraftcore:parachute:9>,
	<galacticraftcore:parachute:10>,
	<galacticraftcore:parachute:11>,
	<galacticraftcore:parachute:12>,
	<galacticraftcore:parachute:13>,
	<galacticraftcore:parachute:14>,
	<galacticraftcore:parachute:15>,
	<galacticraftcore:parachute>,
	<galacticraftcore:rocket_fins>,
	<galacticraftcore:rocket_workbench>,
	<galacticraftcore:space_glass_clear:1>,
	<galacticraftcore:space_glass_clear>,
	<galacticraftcore:standard_wrench>,
	<galacticraftcore:steel_pole>,

	//Ender Utilities
	<enderutilities:asu>,
	<enderutilities:barrel>,
	<enderutilities:builderswand>,
	<enderutilities:chairwand>,
	<enderutilities:dolly>,
	<enderutilities:draw_bridge:1>,
	<enderutilities:draw_bridge>,
	<enderutilities:ender_elevator>,
	<enderutilities:ender_elevator_layer>,
	<enderutilities:ender_elevator_slab>,
	<enderutilities:enderarrow>,
	<enderutilities:enderbag>,
	<enderutilities:enderbucket>,
	<enderutilities:endercapacitor>,
	<enderutilities:enderlasso>,
	<enderutilities:enderpart:10>,
	<enderutilities:enderpart:15>,
	<enderutilities:enderpart:16>,
	<enderutilities:enderpart:17>,
	<enderutilities:enderpart:21>,
	<enderutilities:enderpart:40>,
	<enderutilities:enderpart:45>,
	<enderutilities:enderpart:50>,
	<enderutilities:enderpart:51>,
	<enderutilities:enderpart:52>,
	<enderutilities:enderpart:53>,
	<enderutilities:enderpart:54>,
	<enderutilities:enderpart:70>,
	<enderutilities:enderpart:71>,
	<enderutilities:enderpart:72>,
	<enderutilities:enderpart:73>,
	<enderutilities:enderpart:80>,
	<enderutilities:enderpearlreusable:1>,
	<enderutilities:enderpearlreusable>,
	<enderutilities:enderporter:1>,
	<enderutilities:enderporter>,
	<enderutilities:endersword>,
	<enderutilities:endertool:1>,
	<enderutilities:endertool:2>,
	<enderutilities:endertool:3>,
	<enderutilities:endertool>,
	<enderutilities:energy_bridge:1>,
	<enderutilities:energy_bridge:2>,
	<enderutilities:energy_bridge>,
	<enderutilities:floor:1>,
	<enderutilities:floor>,
	<enderutilities:frame>,
	<enderutilities:handybag:1>,
	<enderutilities:handybag>,
	<enderutilities:icemelter:1>,
	<enderutilities:icemelter>,
	<enderutilities:inserter:1>,
	<enderutilities:inserter>,
	<enderutilities:inventoryswapper>,
	<enderutilities:linkcrystal:1>,
	<enderutilities:linkcrystal>,
	<enderutilities:livingmanipulator>,
	<enderutilities:machine_0>,
	<enderutilities:machine_1:1>,
	<enderutilities:machine_1:2>,
	<enderutilities:machine_1:3>,
	<enderutilities:machine_1>,
	<enderutilities:mobharness>,
	<enderutilities:molecular_exciter>,
	<enderutilities:msu:1>,
	<enderutilities:msu>,
	<enderutilities:nullifier>,
	<enderutilities:phasing:1>,
	<enderutilities:phasing>,
	<enderutilities:pickupmanager>,
	<enderutilities:portal_panel>,
	<enderutilities:portalscaler>,
	<enderutilities:quickstacker>,
	<enderutilities:ruler>,
	<enderutilities:sound_block>,
	<enderutilities:storage_0:1>,
	<enderutilities:storage_0:2>,
	<enderutilities:storage_0:3>,
	<enderutilities:storage_0:4>,
	<enderutilities:storage_0:5>,
	<enderutilities:storage_0:6>,
	<enderutilities:storage_0:7>,
	<enderutilities:storage_0>,
	<enderutilities:syringe:1>,
	<enderutilities:syringe:2>,
	<enderutilities:syringe:3>,
	<enderutilities:syringe>,
	<enderutilities:void_pickaxe>,

	//Mekanism
	<mekanism:configurator>,
	<mekanism:electrolyticcore>,
	<mekanism:energytablet>,
	<mekanism:gastank>,
	<mekanism:machineblock2:4>,
	<mekanism:machineblock2:11>,
	<mekanism:machineblock2>,
	<mekanism:machineblock:8>,
	<mekanism:mufflingupgrade>,
	<mekanism:transmitter:1>,
	<mekanism:transmitter:2>,

	//Chargers
	<chargers:charger:1>,
	<chargers:charger>
];

for item in itemsForStage {
	mods.recipestages.Recipes.setRecipeStage(STAGE, item);
}
