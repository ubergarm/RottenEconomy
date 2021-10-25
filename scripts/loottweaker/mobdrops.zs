#modloaded loottweaker

## USE INCONTROL MOD loot.json for MODDED mobs and THIS FILE for VANILLA mobs
# Because JEResources picks this up for JEI for vanilla mobs at least

# Documentation Here
# https://loottweaker-docs.readthedocs.io/en/latest/type-docs/loot-table.html
# pool.addItemEntryHelper(<IItemStack>, weight, dunno, [Functions.setCount(<min>, <max>, [<optional Conditions>]);

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

## minecraft:zombie
## get existing loot table for a mob with existing table
val zombieTable = LootTweaker.getTable("minecraft:entities/zombie");
## inject additional custom pool
val zombiePool = zombieTable.addPool("RottenEconomy", 1, 2, 1, 2);
## add drops for when killed by player
zombiePool.addItemEntryHelper(<minecraft:rotten_flesh>, 10, 1,
    [Functions.setCount(0,3), Functions.lootingEnchantBonus(1, 2, 3)],
    [Conditions.killedByPlayer()]
);
## add drops for when killed by non player
zombiePool.addItemEntryHelper(<minecraft:rotten_flesh>, 10, 1,
    [Functions.setCount(0,2)], [Conditions.killedByNonPlayer()]
);

# minecraft:husk
val huskTable = LootTweaker.getTable("minecraft:entities/husk");
## inject additional custom pool
val huskPool = huskTable.addPool("RottenEconomy", 1, 2, 1, 2);
huskPool.addItemEntryHelper(<contenttweaker:gritty_flesh>, 10, 1,
    [Functions.setCount(0,3), Functions.lootingEnchantBonus(1, 2, 3)],
    [Conditions.killedByPlayer()]
);
huskPool.addItemEntryHelper(<contenttweaker:gritty_flesh>, 10, 1,
    [Functions.setCount(0,2)], [Conditions.killedByNonPlayer()]
);

# minecraft:enderman
val endermanTable = LootTweaker.getTable("minecraft:entities/enderman");
## inject additional custom pool
val endermanPool = endermanTable.addPool("RottenEconomy", 1, 2, 1, 2);
endermanPool.addItemEntryHelper(<contenttweaker:jumpy_flesh>, 10, 1,
    [Functions.setCount(1,3), Functions.lootingEnchantBonus(1, 2, 3)],
    [Conditions.killedByPlayer()]
);
endermanPool.addItemEntryHelper(<contenttweaker:jumpy_flesh>, 10, 1,
    [Functions.setCount(0,2)], [Conditions.killedByNonPlayer()]
);
