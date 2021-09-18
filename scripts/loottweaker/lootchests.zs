#modloaded loottweaker

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

# add 7 Days to Fly specific pools to be injected into with lostcitychests
val ammoTable = LootTweaker.newTable("zbb:chests/ammochest");
val lifeTable = LootTweaker.newTable("zbb:chests/lifechest");
val oreTable = LootTweaker.newTable("zbb:chests/orechest");

# table.addPool(<pool name>, <minimum rolls>, <maximum rolls>, <minimum bonus rolls>, <maximum bonus rolls>);
val ammoPool = ammoTable.addPool("zbb:ammoPool", 6, 12, 4, 8);
val skillsPool = ammoTable.addPool("zbb:skillsPool", 2, 4, 1, 2);

val healingPool = lifeTable.addPool("zbb:healingPool", 1, 4, 1, 2);
val heartsPool = lifeTable.addPool("zbb:heartsPool", 2, 4, 1, 2);
val foodPool = lifeTable.addPool("zbb:foodPool", 0, 2, 0, 1);

val orePool = oreTable.addPool("zbb:orePool", 4, 6, 2, 4);

# TODO
# add in pools from other mods loot tables
#val pnsdPool = LootTweaker.getTable("pneumaticcraft:inject/simple_dungeon_loot").getPool("main");
#val ieslPool = LootTweaker.getTable("immersiveengineering:chests/stronghold_library").getPool("immersiveengineering_loot_inject");
#val ievbPool = LootTweaker.getTable("immersiveengineering:chests/village_blacksmith").getPool("immersiveengineering_loot_inject");
#val ieehPool0 = LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_0");
#val ieehPool1 = LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_1");
#val ieehPool2 = LootTweaker.getTable("immersiveengineering:chests/engineers_house").getPool("immersiveengineering:engineers_village_house_2");

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
heartsPool.addItemEntry(<scalinghealth:heartcontainer>, 5, 1, [Functions.setCount(1, 2)], []);
heartsPool.addItemEntry(<scalinghealth:difficultychanger>, 5, 1, [Functions.setCount(1, 2)], []);

// food loot pool
foodPool.addItemEntry(<rewired:meat_raw>, 5, 1, [Functions.setCount(2, 6)], []);
foodPool.addItemEntry(<minecraft:bread>, 5, 1, [Functions.setCount(4, 8)], []);
foodPool.addItemEntry(<xlfoodmod:beef_jerky>, 10, 1, [Functions.setCount(2, 8)], []);
foodPool.addItemEntry(<xlfoodmod:burrito>, 5, 1, [Functions.setCount(2, 4)], []);
foodPool.addItemEntry(<pizzacraft:olive_sapling>, 5, 1, [Functions.setCount(1, 2)], []);
foodPool.addItemEntry(<pizzacraft:slice_1>, 5, 1, [Functions.setCount(2, 4)], []);

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
skillsPool.addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:xp+"}), 15, 1, [Functions.setCount(1,1)], []);
skillsPool.addItemEntry(<improvableskills:parchment_fragment>, 10, 1, [Functions.setCount(0,1)], []);
skillsPool.addItemEntry(<epicfight:skill_book>.withTag({skill: "roll"}), 10, 1, [Functions.setCount(1,1)], []);

// ore loot pool
orePool.addItemEntry(<minecraft:gold_ore>, 8, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:iron_ore>, 16, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:coal_ore>, 24, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:lapis_ore>, 8, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:diamond_ore>, 4, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:redstone_ore>, 8, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:emerald_ore>, 2, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:quartz_ore>, 8, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<matteroverdrive:dilithium_ore>, 8, 1, [Functions.setCount(4,8)], []);
orePool.addItemEntry(<matteroverdrive:tritanium_ore>, 8, 1, [Functions.setCount(4,8)], []);
orePool.addItemEntry(<thermalfoundation:ore>, 16, 1, [Functions.setCount(4,8)], []);
orePool.addItemEntry(<thermalfoundation:ore:1>, 16, 1, [Functions.setCount(4,8)], []);
orePool.addItemEntry(<thermalfoundation:ore:3>, 16, 1, [Functions.setCount(4,8)], []);

// add more stuff into ammo chest
ammoPool.addItemEntry(<icbmclassic:grenade>, 5, 1, [Functions.setCount(1, 2)], []);
ammoPool.addItemEntry(<minecraft:tnt>, 10, 1, [Functions.setCount(4, 8)], []);
ammoPool.addItemEntry(<minecraft:gunpowder>, 15, 1, [Functions.setCount(8, 32)], []);
ammoPool.addItemEntry(<hoverboardmod:aerogel>, 5, 1, [Functions.setCount(1, 2)], []);
