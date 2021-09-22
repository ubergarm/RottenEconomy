#modloaded epicsiegemod
// Epic Siege Mod

import crafttweaker.item.IItemStack;

## Convert the pillaring nerd pole block to/from rotten flesh
recipes.addShaped("rotteneconomy.chisel.netherrack.10", <chisel:netherrack:10>,
  [
    [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, null],
    [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, null],
    [null, null, null]
  ]
);

// recipes.addShapeless("rotteneconomy.rotten_flesh", <minecraft:rotten_flesh> * 4,
//   [ <chisel:netherrack:10> ]
// );
// use grinder on that netherrack instead lmao
mods.techguns.Grinder.addRecipe(
    <chisel:netherrack:10>,        // input item
    [
        <minecraft:rotten_flesh>*4,  // array of output items
        <minecraft:gunpowder>
    ],
    [
        0.75,                   // chance of output
        0.10
    ]
);

## probably make my own custom block for this w/ different sounds but good nuff for now
## make it a bit slippery and a little softer than regular netherrack
<chisel:netherrack:10>.asBlock().definition.defaultSlipperiness = 0.9;
<chisel:netherrack:10>.asBlock().definition.hardness = 2.0;
<chisel:netherrack:10>.asBlock().definition.setHarvestLevel("shovel", 0); // shovel, stone level

## Label items marked in epicsiegemod.cfg digging blacklist
val zombieDiggingResistant = [
        <minecraft:concrete:*>,
        <securitycraft:reinforced_concrete:*>,
        <securitycraft:reinforced_iron_trapdoor:*>,
        <securitycraft:door_indestructible_iron_item:*>,
        <ompd:hardened:*>,
        <ompd:wall:*>,
        <thermalfoundation:glass:*>,
        <thermalfoundation:glass_alloy:*>,
        <icbmclassic:concrete:*>,
        <icbmclassic:reinforcedglass:*>,
        <advancedrocketry:concrete:*>,
        <ic2:glass:*>,
        <ic2:reinforced_door:*>,
        <malisisdoors:big_door_iron_3x3:*>,
        <malisisdoors:big_door_rusty_3x3>,
        <malisisdoors:rustyhatch:*>,
        <malisisdoors:sliding_trapdoor:*>,
        <malisisdoors:garage_door:*>,
        <malisisdoors:hitechdoor:*>,
        <malisisdoors:forcefielditem>
] as IItemStack[];

for item in zombieDiggingResistant {
    item.addTooltip(format.green("Zombie digging resistant!"));
}

## FUTURE SELF - THIS DOES NOT SEEM TO WORK UNFORTUNATELY???
## Make some doors more blast resistant because TNT
# hardness is strictly how long it takes to mine
# resistance is blast resistance
# Wither ~ 7
# End Crystal Destroyed ~ 6
# Charged Creeper ~ 6
# Bed used in wrong dimension ~ 5
# TNT ~ 4
# Creeper ~ 3
# Ghast fireball ~ 1
# <techguns:item_bunkerdoor:*>.asBlock().definition.hardness = 60;
# <techguns:item_bunkerdoor:*>.asBlock().definition.resistance = 60;
