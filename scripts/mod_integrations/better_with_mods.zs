import crafttweaker.item.IItemStack;

import mods.betterwithaddons.Condensed;
import mods.betterwithaddons.SoakingBox;
import mods.betterwithaddons.Spindle;
import mods.betterwithmods.Cauldron;
import mods.betterwithmods.Crucible;
import mods.betterwithmods.Mill;
import mods.betterwithmods.Saw;
import mods.betterwithmods.Turntable;

/*
	Turntable

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Turntable/
*/
Turntable.add(<ceramics:clay_barrel_unfired>, <ceramics:clay_barrel_unfired:1>, []);
Turntable.add(<ceramics:clay_barrel_unfired:1>, <ceramics:clay_bucket_block>, []);

/*
	Mill

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Mill/
*/
//Rice Flour
Mill.addRecipe([<actuallyadditions:item_food:16>], [<betterwithaddons:japanmat:4>]);

Mill.addRecipe([<minecraft:dye:15>, <minecraft:clay_ball>, <minecraft:flint>], [<ceramics:unfired_clay:4>]);
Mill.addRecipe([<minecraft:sand>, <minecraft:clay_ball>, <minecraft:gravel>], [<tconstruct:soil> * 2]);

//THERE CAN BE ONLY 1 FLOUR!
//TODO: Mill.remove(<betterwithmods:raw_pastry:3>);
//TODO: Mill.addRecipe([<minecraft:wheat>], [<horsepower:flour>]);
//TODO: Mill.addRecipe([<natura:materials>], [<horsepower:flour>]);

Mill.addRecipe([<actuallyadditions:block_misc:3>], [<actuallyadditions:item_dust:7>]);
Mill.addRecipe([<materialpart:aquamarine:ore_minecraft_stone>], [<astralsorcery:itemcraftingcomponent> * 1]);

Mill.addRecipe([<primal_tech:flint_block>], [<minecraft:flint> * 2]);

Mill.addRecipe([<charcoalblock:charcoal_block>], [<minecraft:coal:1> * 9]);
Mill.addRecipe([<primal_tech:charcoal_block>], [<minecraft:coal:1> * 4]);
Mill.addRecipe([<minecraft:coal_block>], [<minecraft:coal> * 9]);

Mill.addRecipe([<minecraft:cobblestone>], [<tconstruct:stone_stick> * 1]);

//TODO: Move to dyes unique script
Mill.addRecipe([<minecraft:dye:1>], [<pickletweaks:dye_powder:14> * 2]);
Mill.addRecipe([<minecraft:dye:15>], [<pickletweaks:dye_powder> * 2]);
Mill.addRecipe([<minecraft:dye:2>], [<pickletweaks:dye_powder:13> * 2]);
Mill.addRecipe([<minecraft:dye>], [<pickletweaks:dye_powder:15> * 2]);
Mill.addRecipe([<minecraft:dye:3>], [<pickletweaks:dye_powder:12> * 2]);
Mill.addRecipe([<minecraft:dye:4>], [<pickletweaks:dye_powder:11> * 2]);
Mill.addRecipe([<rustic:wildberries>], [<pickletweaks:dye_powder:14> * 2]);
Mill.addRecipe([<actuallyadditions:block_black_lotus>], [<pickletweaks:dye_powder:15> * 2]);

Mill.addRecipe([<astralsorcery:itemcraftingcomponent:1>], [<astralsorcery:itemcraftingcomponent:2>]);

Mill.addRecipe([<minecraft:quartz>], [<actuallyadditions:item_dust:5>]);

Mill.addRecipe([<primal:sharp_bone>], [<primal:bone_knapp>]);

Mill.addRecipe([<primal:shark_tooth>], [<minecraft:dye:15> * 2]);

for bark in <ore:barkWood>.items {
	Mill.addRecipe([bark], [<primal:tannin_ground> * 2]);
}

/*
	Soaking Box

	https://github.com/DaedalusGame/BetterWithAddons/wiki/CraftTweaker-Support#soaking-unit
*/
SoakingBox.remove(<betterwithaddons:log_mulberry>);
SoakingBox.remove(<betterwithaddons:japanmat:36>);

/*
	Spindle

	https://github.com/DaedalusGame/BetterWithAddons/wiki/CraftTweaker-Support#spindle
*/
Spindle.add([<primal:leather_cordage>], <primal:leather_strip> * 4, false);

/*
	Condensed
*/
//Using Spindle Drops Spindle when crafted
Condensed.setContainer(<betterwithaddons:bolt>, <betterwithaddons:spindle>);

/*
	Cauldron

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Cauldron/
*/
//==============================
//Remove
//TODO: Cauldron.remove(<betterwithmods:material:12>);
//TODO: Cauldron.remove(<betterwithmods:material:6>);
//TODO: Cauldron.remove(<rustic:tallow>);

//TODO: I'm pretty sure this doesn't actually work but I'm leaving it here for now
//TODO: Cauldron.remove(<minecraft:glass>);

//==============================
//Unstoked
Cauldron.addUnstoked([<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, <minecraft:rotten_flesh>], [<betterwithmods:material:12>]);
Cauldron.addUnstoked([<ore:pelt>], [<betterwithmods:material:12>]);
Cauldron.addUnstoked([<ore:peltLarge>], [<betterwithmods:material:12> * 2]);
Cauldron.addUnstoked([<animalium:wild_dog_pelt>], [<betterwithmods:material:12>]);

//Remake laxative recipe using foodFlour instead of BWM flour only
//TODO: Cauldron.remove(<betterwithaddons:laxative>);
Cauldron.addUnstoked([<betterwithaddons:food_mulberry> * 3, <minecraft:sugar>, <ore:foodFlour>], [<betterwithaddons:laxative>]);

//==============================
//Stoked

/*
	Crucible

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Crucible/
*/
//TODO: Crucible.remove(<betterwithaddons:decomat:3>);

/*
	Saw

	http://crafttweaker.readthedocs.io/en/latest/#Mods/Modtweaker/BetterWithMods/Saw/
*/
var sawRemovals as IItemStack[] = [
	//Sawing Corners only give 1 gear instead of 2
	<betterwithmods:wood_corner>,
	<betterwithmods:wood_corner:1>,
	<betterwithmods:wood_corner:2>,
	<betterwithmods:wood_corner:3>,
	<betterwithmods:wood_corner:4>,
	<betterwithmods:wood_corner:5>,

	<betterwithmods:saw>,
	<betterwithmods:bellows>,
	<betterwithmods:wooden_gearbox>,
	<betterwithmods:single_machine:2>,
	<betterwithmods:single_machine:1>
];

// Input : [Outputs]
var sawRecipes as IItemStack[][IItemStack] = {
	<minecraft:leaves> : [stick * 2],
	<minecraft:leaves:1> : [stick * 2],
	<minecraft:leaves:2> : [stick * 2],
	<minecraft:leaves:3> : [stick * 2],
	<minecraft:leaves2> : [stick * 2],
	<minecraft:leaves2:1> : [stick * 2],
	<abyssalcraft:dltleaves> : [stick * 2],
	<abyssalcraft:dreadleaves> : [stick * 2],
	<betterwithmods:blood_leaves> : [stick * 2],
	<natura:overworld_leaves> : [stick * 2],
	<natura:overworld_leaves:1> : [stick * 2],
	<natura:overworld_leaves:2> : [stick * 2],
	<natura:overworld_leaves2> : [stick * 2],
	<natura:overworld_leaves:3> : [stick * 2],
	<natura:overworld_leaves2:1> : [stick * 2],
	<natura:overworld_leaves2:2> : [stick * 2],
	<natura:overworld_leaves2:3> : [stick * 2],
	<natura:redwood_leaves> : [stick * 2],
	<natura:nether_leaves> : [stick * 2],
	<natura:nether_leaves:1> : [stick * 2],
	<natura:nether_leaves:2> : [stick * 2],
	<natura:nether_leaves2> : [stick * 2],
	<natura:nether_leaves2:1> : [stick * 2],
	<natura:nether_leaves2:2> : [stick * 2],
	<rustic:leaves_apple> : [stick * 2],
	<twilightforest:twilight_leaves> : [stick * 2],
	<twilightforest:twilight_leaves:1> : [stick * 2],
	<twilightforest:twilight_leaves:2> : [stick * 2],
	<twilightforest:twilight_leaves:3> : [stick * 2],
	<twilightforest:magic_leaves> : [stick * 2],
	<totemic:cedar_leaves> : [stick * 2],
	<traverse:fir_leaves> : [stick * 2],

	//Sawing Corners only give 1 gear instead of 2
	<betterwithmods:wood_corner> : [<betterwithmods:material>],
	<betterwithmods:wood_corner:1> : [<betterwithmods:material>],
	<betterwithmods:wood_corner:2> : [<betterwithmods:material>],
	<betterwithmods:wood_corner:3> : [<betterwithmods:material>],
	<betterwithmods:wood_corner:4> : [<betterwithmods:material>],
	<betterwithmods:wood_corner:5> : [<betterwithmods:material>]
};

for item in sawRemovals {
	//TODO: Saw.remove(item);
}

for input in sawRecipes {
	Saw.add(input, sawRecipes[input]);
}
