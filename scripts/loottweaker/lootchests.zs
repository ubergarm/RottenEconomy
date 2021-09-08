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
healingPool.addItemEntry(<firstaid:plaster>, 5, 1, [Functions.setCount(2, 4)], []);
healingPool.addItemEntry(<firstaid:bandage>, 2, 1, [Functions.setCount(1, 2)], []);
healingPool.addItemEntry(<scalinghealth:healingitem>, 5, 1, [Functions.setCount(2, 4)], []);
healingPool.addItemEntry(<scalinghealth:healingitem:1>, 2, 1, [Functions.setCount(0, 1)], []);
healingPool.addItemEntry(<firstaid:morphine>, 2, 1, [Functions.setCount(0, 1)], []);

heartsPool.addItemEntry(<scalinghealth:crystalshard>, 10, 1, [Functions.setCount(2, 8)], []);
heartsPool.addItemEntry(<scalinghealth:heartdust>, 10, 1, [Functions.setCount(2, 8)], []);
heartsPool.addItemEntry(<scalinghealth:heartcontainer>, 1, 1, [Functions.setCount(1, 2)], []);

// food loot pool
foodPool.addItemEntry(<minecraft:bread>, 2, 1, [Functions.setCount(0, 8)], []);
foodPool.addItemEntry(<minecraft:apple>, 2, 1, [Functions.setCount(0, 8)], []);
foodPool.addItemEntry(<xlfoodmod:beef_jerky>, 2, 1, [Functions.setCount(4, 16)], []);

// ore loot pool
orePool.addItemEntry(<minecraft:gold_ore>, 8, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:iron_ore>, 16, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:coal_ore>, 24, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:lapis_ore>, 8, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:diamond_ore>, 4, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:redstone_ore>, 8, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:emerald_ore>, 2, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<minecraft:quartz_ore>, 8, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<mw:copperore>, 20, 1, [Functions.setCount(4, 8)], []);
orePool.addItemEntry(<mw:sulfurore>, 5, 1, [Functions.setCount(4, 8)], []);

// add more stuff into ammo chest
ammoPool.addItemEntry(<mw:bullet556x45>, 10, 1, [Functions.setCount(16, 48)], []);
