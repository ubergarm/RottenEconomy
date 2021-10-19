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
        <minecraft:gunpowder>,
        <thermalfoundation:material:771> // dustSulfur
    ],
    [
        0.75,                            // chance of output
        0.75,
        0.25,
        0.25
    ]
);

## Add it into ore dict for netherrack for easy use bypassing bonus
<ore:oreNetherrack>.add(<contenttweaker:rotten_netherrack>);

<sonarcore:stableglass:*>.asBlock().definition.hardness = 3.0;
<sonarcore:stableglass:*>.asBlock().definition.resistance = 20.0;
<sonarcore:clearstableglass:*>.asBlock().definition.hardness = 3.0;
<sonarcore:clearstableglass:*>.asBlock().definition.resistance = 20.0;
<sonarcore:reinforcedstoneblock:*>.asBlock().definition.hardness = 3.0;
<sonarcore:reinforcedstoneblock:*>.asBlock().definition.resistance = 15.0;
<sonarcore:reinforcedstonestairs:*>.asBlock().definition.hardness = 3.0;
<sonarcore:reinforcedstonestairs:*>.asBlock().definition.resistance = 15.0;
<rewired:ecglass:*>.asBlock().definition.hardness = 3.0;
<rewired:ecglass:*>.asBlock().definition.resistance = 25.0;

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
    <techguns:concrete:*>,
    <techguns:stairs_concrete:*>,
    <minecraft:obsidian:*>,
    <chisel:obsidian:*>,
    <ic2:glass:*>,
    <ic2:reinforced_door:*>,
    <mekanism:reinforcedplasticblock:*>,
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
    <sonarcore:reinforcedstonestairs:*>,
    <rewired:ecglass:*>,
    <matteroverdrive:decorative.clean:*>,
    <matteroverdrive:decorative.tritanium_plate:*>,
    <matteroverdrive:decorative.tritanium_plate_stripe:*>,
    <matteroverdrive:decorative.carbon_fiber_plate:*>,
    <matteroverdrive:decorative.white_plate:*>,
    <matteroverdrive:decorative.tritanium_plate_colored:*>,
    <matteroverdrive:industrial_glass:*>
] as IItemStack[];

for item in zombieDiggingResistant {
    item.addTooltip(format.green("Parasite and Zombie griefing resistant!"));
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
