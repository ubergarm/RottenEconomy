#modloaded loottweaker

## USE INCONTROL MOD loot.json for MODDED mobs and THIS FILE for VANILLA mobs
# Because JEResources picks this up for JEI for vanilla mobs at least

# Documentation Here
# https://loottweaker-docs.readthedocs.io/en/latest/type-docs/loot-table.html
# pool.addItemEntry(<IItemStack>, weight, dunno, [Functions.setCount(<min>, <max>, [<optional Conditions>]);

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

var smallIronDust = <techreborn:smalldust:27>;

## minecraft:zombie
## get existing loot table for a mob with existing table
val zombieTable = LootTweaker.getTable("minecraft:entities/zombie");
## inject additional custom pool
val zombiePool = zombieTable.addPool("RottenEconomy", 2, 4, 1, 2);

## add drops for when killed by player
zombiePool.addItemEntry(<minecraft:rotten_flesh>, 10, 1,
    [Functions.setCount(2,4), Functions.lootingEnchantBonus(1, 3, 5)],
    [Conditions.killedByPlayer()]
);
zombiePool.addItemEntry(smallIronDust, 5, 1,
    [Functions.setCount(2,4), Functions.lootingEnchantBonus(1, 3, 5)],
    [Conditions.killedByPlayer()]);
## add drops for when killed by non player
zombiePool.addItemEntry(<minecraft:rotten_flesh>, 10, 1,
    [Functions.setCount(1,2)], [Conditions.killedByNonPlayer()]
);

# minecraft:husk
val huskTable = LootTweaker.getTable("minecraft:entities/husk");
val huskMainPool = huskTable.getPool("main");
huskMainPool.addItemEntry(<contenttweaker:gritty_flesh>, 10, 1,
    [Functions.setCount(1,2), Functions.lootingEnchantBonus(1, 3, 5)],
    [Conditions.killedByPlayer()]
);
val huskPool = huskTable.addPool("RottenEconomy", 2, 4, 1, 2);
huskPool.addItemEntry(<contenttweaker:gritty_flesh>, 10, 1,
    [Functions.setCount(2,4), Functions.lootingEnchantBonus(1, 3, 5)],
    [Conditions.killedByPlayer()]
);
huskPool.addItemEntry(smallIronDust, 5, 1,
    [Functions.setCount(2,4), Functions.lootingEnchantBonus(1, 3, 5)],
    [Conditions.killedByPlayer()]);
huskPool.addItemEntry(<contenttweaker:gritty_flesh>, 10, 1,
    [Functions.setCount(1,2)], [Conditions.killedByNonPlayer()]
);

# minecraft:enderman
val endermanTable = LootTweaker.getTable("minecraft:entities/enderman");
val endermanMainPool = endermanTable.getPool("main");
endermanMainPool.addItemEntry(<contenttweaker:jumpy_flesh>, 10, 1,
    [Functions.setCount(1,2), Functions.lootingEnchantBonus(1, 3, 5)],
    [Conditions.killedByPlayer()]
);
val endermanPool = endermanTable.addPool("RottenEconomy", 2, 4, 1, 2);
endermanPool.addItemEntry(<contenttweaker:jumpy_flesh>, 10, 1,
    [Functions.setCount(2,4), Functions.lootingEnchantBonus(1, 3, 5)],
    [Conditions.killedByPlayer()]
);
endermanPool.addItemEntry(<inventorypets:nugget_ender>, 5, 1,
    [Functions.setCount(3,6), Functions.lootingEnchantBonus(1, 3, 5)],
    [Conditions.killedByPlayer()]);
endermanPool.addItemEntry(<contenttweaker:jumpy_flesh>, 10, 1,
    [Functions.setCount(1,2)], [Conditions.killedByNonPlayer()]
);


