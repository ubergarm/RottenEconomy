#modloaded epicsiegemod
// Epic Siege Mod

import crafttweaker.item.IItemStack;

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
