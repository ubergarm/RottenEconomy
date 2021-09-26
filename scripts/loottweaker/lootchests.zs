#modloaded loottweaker

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

# add 7 Days to Fly specific pools to be injected into with lostcitychests
val ammoTable = LootTweaker.newTable("rotteneconomy:chests/ammochest");
val lifeTable = LootTweaker.newTable("rotteneconomy:chests/lifechest");
val oreTable = LootTweaker.newTable("rotteneconomy:chests/orechest");

# table.addPool(<pool name>, <minimum rolls>, <maximum rolls>, <minimum bonus rolls>, <maximum bonus rolls>);
val ammoPool = ammoTable.addPool("rotteneconomy:ammoPool", 8, 16, 4, 8);
val skillsPool = ammoTable.addPool("rotteneconomy:skillsPool", 1, 3, 1, 2);

val healingPool = lifeTable.addPool("rotteneconomy:healingPool", 3, 6, 1, 2);
val heartsPool = lifeTable.addPool("rotteneconomy:heartsPool", 1, 2, 1, 2);
val foodPool = lifeTable.addPool("rotteneconomy:foodPool", 6, 8, 1, 2);

val orePool = oreTable.addPool("rotteneconomy:orePool", 8, 12, 2, 4);

# pool.addItemEntry(<IItemStack  * qty>, <weight>);
# pool.addItemEntry(<IItemStack>, weight, dunno, [Functions.setCount(<min>, <max>, [<optional Conditions>]);

// healing loot pool
healingPool.addItemEntry(<firstaid:plaster>, 10, 1, [Functions.setCount(2, 4)], []);
healingPool.addItemEntry(<firstaid:bandage>, 5, 1, [Functions.setCount(1, 2)], []);
healingPool.addItemEntry(<scalinghealth:healingitem>, 10, 1, [Functions.setCount(2, 4)], []);
healingPool.addItemEntry(<scalinghealth:healingitem:1>, 5, 1, [Functions.setCount(1, 2)], []);
healingPool.addItemEntry(<firstaid:morphine>, 5, 1, [Functions.setCount(0, 1)], []);
healingPool.addItemEntry(<minecraft:potion>.withTag({Potion: "cofhcore:healing3"}), 5, 1, [Functions.setCount(1, 2)], []);

heartsPool.addItemEntry(<scalinghealth:crystalshard>, 10, 1, [Functions.setCount(2, 8)], []);
heartsPool.addItemEntry(<scalinghealth:heartdust>, 10, 1, [Functions.setCount(2, 8)], []);
heartsPool.addItemEntry(<scalinghealth:heartcontainer>, 5, 1, [Functions.setCount(0, 2)], []);
heartsPool.addItemEntry(<scalinghealth:difficultychanger>, 5, 1, [Functions.setCount(0, 1)], []);

// food loot pool (plus more flesh)
foodPool.addItemEntry(<rewired:meat_raw>, 5, 1, [Functions.setCount(2, 6)], []);
foodPool.addItemEntry(<minecraft:bread>, 5, 1, [Functions.setCount(4, 8)], []);
foodPool.addItemEntry(<xlfoodmod:beef_jerky>, 10, 1, [Functions.setCount(2, 8)], []);
foodPool.addItemEntry(<xlfoodmod:burrito>, 5, 1, [Functions.setCount(2, 4)], []);
foodPool.addItemEntry(<pizzacraft:olive_sapling>, 5, 1, [Functions.setCount(1, 2)], []);
foodPool.addItemEntry(<pizzacraft:slice_1>, 5, 1, [Functions.setCount(2, 4)], []);

foodPool.addItemEntry(<minecraft:rotten_flesh>, 20, 1, [Functions.setCount(16, 32)], []);
foodPool.addItemEntry(<contenttweaker:gritty_flesh>, 5, 1, [Functions.setCount(12, 24)], []);
foodPool.addItemEntry(<contenttweaker:jumpy_flesh>, 5, 1, [Functions.setCount(8, 16)], []);
foodPool.addItemEntry(<qmd:flesh>, 5, 1, [Functions.setCount(8, 16)], []);

foodPool.addItemEntry(<air_support:circuit_board>, 5, 1, [Functions.setCount(1,1)], []);


// skills loot pool
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:obsidian_skin"}), 10, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:luck_of_the_sea"}), 5, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:health"}), 5, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:growth"}), 5, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:alchemist"}), 5, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:generic_protection"}), 10, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:treasure_sands"}), 5, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:atkdmg_ranged"}), 10, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:enchanter"}), 5, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:ender_manipulator"}), 5, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:xp+"}), 10, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:parchment_fragment>, 10, 1, [Functions.setCount(0,1)], []);
skillsPool.addItemEntry(<epicfight:skill_book>.withTag({skill: "roll"}), 10, 1, [Functions.setCount(1,1)], []);

// ore loot pool
orePool.addItemEntry(<minecraft:rotten_flesh>, 10, 1, [Functions.setCount(16, 32)], []);
orePool.addItemEntry(<contenttweaker:gritty_flesh>, 5, 1, [Functions.setCount(12, 24)], []);
orePool.addItemEntry(<contenttweaker:jumpy_flesh>, 10, 1, [Functions.setCount(8, 16)], []);
orePool.addItemEntry(<qmd:flesh>, 5, 1, [Functions.setCount(8, 16)], []);
orePool.addItemEntry(<minecraft:iron_ingot>, 5, 1, [Functions.setCount(2,4)], []);
orePool.addItemEntry(<mekanism:ingot:1>, 5,  1, [Functions.setCount(2,4)], []);
orePool.addItemEntry(<minecraft:diamond>, 5,  1, [Functions.setCount(0,1)], []);

// add more stuff into ammo chest
ammoPool.addItemEntry(<techguns:itemshared>, 5, 1, [Functions.setCount(16,32)], []); // stone bullets
ammoPool.addItemEntry(<techguns:itemshared:1>, 10, 1, [Functions.setCount(16,32)], []); // pistol rounds
ammoPool.addItemEntry(<techguns:itemshared:2>, 10, 1, [Functions.setCount(16,32)], []); // shotgun shells
ammoPool.addItemEntry(<techguns:itemshared:3>, 10, 1, [Functions.setCount(16,32)], []); // rifle rounds
ammoPool.addItemEntry(<techguns:stielgranate>, 5, 1, [Functions.setCount(4, 8)], []);
ammoPool.addItemEntry(<minecraft:tnt>, 5, 1, [Functions.setCount(4, 8)], []);
ammoPool.addItemEntry(<minecraft:gunpowder>, 10, 1, [Functions.setCount(16, 32)], []);
ammoPool.addItemEntry(<hoverboardmod:aerogel>, 5, 1, [Functions.setCount(1, 2)], []);
ammoPool.addItemEntry(<vehicle:jerry_can>.withTag({fuel: 4000.0 as float}), 5, 1, [Functions.setCount(1,1)], []);

ammoPool.addItemEntry(<air_support:circuit_board>, 10, 1, [Functions.setCount(0,1)], []);
ammoPool.addItemEntry(<raiders:sat_transmitter_part>, 2, 1, [Functions.setCount(0,1)], []);
