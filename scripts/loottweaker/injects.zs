#modloaded loottweaker

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

# Inject some specific items into other mods loot tables
# Documentation Here
# https://loottweaker-docs.readthedocs.io/en/latest/type-docs/loot-table.html
# pool.addItemEntryHelper(<IItemStack>, weight, dunno, [Functions.setCount(<min>, <max>, [<optional Conditions>]);

## minecraft:zombie
## get existing loot table for a mob with existing table
val gasPool = LootTweaker.getTable("techguns:chests/gasstation").getPool("resources");

## inject additional custom pool
gasPool.addItemEntryHelper(<vehicle:jerry_can>.withTag({fuel: 4000.0 as float}), 20, 1, [Functions.setCount(1,1)], []);
gasPool.addItemEntryHelper(<vehicle:industrial_jerry_can>.withTag({fuel: 12000.0 as float}), 15, 1, [Functions.setCount(1,1)], []);
gasPool.addItemEntryHelper(<air_support:circuit_board>, 10, 1, [Functions.setCount(1,1)], []);
gasPool.addItemEntryHelper(<raiders:sat_transmitter_part>, 1, 1, [Functions.setCount(0,1)], []);
