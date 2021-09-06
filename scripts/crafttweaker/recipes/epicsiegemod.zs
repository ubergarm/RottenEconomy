#modloaded epicsiegemod
// Epic Siege Mod

import crafttweaker.item.IItemStack;

// Label items marked in epicsiegemod.cfg digging blacklist
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
        <mekanism:reinforcedplasticblock:*>,
        <malisisdoors:verticalhatch:*>,
        <malisisdoors:laboratory_door:*>,
        <malisisdoors:factory_door:*>,
        <malisisdoors:sliding_trapdoor:*>,
        <malisisdoors:garage_door:*>,
        <malisisdoors:hitechdoor:*>
] as IItemStack[];

for item in zombieDiggingResistant {
    item.addTooltip(format.green("Zombie digging resistant!"));
}
