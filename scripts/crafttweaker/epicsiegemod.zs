#modloaded epicsiegemod
// Epic Siege Mod

import crafttweaker.item.IItemStack;

## Convert the pillaring nerd pole block to/from rotten flesh
recipes.addShaped("rotteneconomy.rotten_netherrack", <contenttweaker:rotten_netherrack>,
  [
    [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, null],
    [<minecraft:rotten_flesh>, <minecraft:rotten_flesh>, null],
    [null, null, null]
  ]
);

## grind rotten netherrack for sweet bonus flesh
mods.techguns.Grinder.addRecipe(
    <contenttweaker:rotten_netherrack>,  // input item
    [
        <minecraft:rotten_flesh>*4,      // array of output items
        <minecraft:netherrack>,
        <minecraft:gunpowder>
    ],
    [
        0.50,                            // chance of output
        1.00,
        0.25
    ]
);

## Add it into ore dict for netherrack for easy use bypassing bonus
<ore:oreNetherrack>.add(<contenttweaker:rotten_netherrack>);

## TODO think about this with more gameplay and testing
## could easily add a cobble gen resource engine here with something like
## cobble -> pocket nether link -> netherrack -> (add new recipe here) ->
## rotten netherrack -> grinder -> rotten flesh

<sonarcore:stableglass:*>.asBlock().definition.hardness = 5.0;
<sonarcore:stableglass:*>.asBlock().definition.resistance = 20.0;
<sonarcore:clearstableglass:*>.asBlock().definition.hardness = 5.0;
<sonarcore:clearstableglass:*>.asBlock().definition.resistance = 20.0;
<sonarcore:reinforcedstoneblock:*>.asBlock().definition.hardness = 5.0;
<sonarcore:reinforcedstoneblock:*>.asBlock().definition.resistance = 15.0;
<sonarcore:reinforcedstonestairs:*>.asBlock().definition.hardness = 5.0;
<sonarcore:reinforcedstonestairs:*>.asBlock().definition.resistance = 15.0;

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
        <malisisdoors:forcefielditem:*>,
        <sonarcore:stableglass:*>,
        <sonarcore:clearstableglass:*>,
        <sonarcore:reinforcedstoneblock:*>,
        <sonarcore:reinforcedstonestairs:*>
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
