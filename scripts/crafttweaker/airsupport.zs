#modloaded air_support
###########################
## Air Support Mod
## https://www.curseforge.com/minecraft/mc-mods/air-support
##
## Custom CraftTweaker 1.12.2 ZenScript
## https://www.curseforge.com/minecraft/mc-mods/crafttweaker
##
## Make Air Support Crates drop more than one item including NBT!
## Install this file into `minecraft/scripts/crafttweaker/` and restart
##
## Reference Documentation Here:
## https://docs.blamejared.com/1.12/en/Vanilla/Events/Events/BlockHarvestDrops/
##
## Author
## ubergarm (emptyduck)
## Rotten Economy Modpack: https://www.curseforge.com/minecraft/modpacks/rotten-economy
## Rotten Economy Source: https://github.com/ubergarm/RottenEconomy/
##
## License
## CC BY-NC 3.0 Creative Commons Attribution-NonCommercial 3.0 Unported
############################

## Imports always go first
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;

import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockPattern;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockProperties;

import crafttweaker.events.IEventManager;
import crafttweaker.event.IBlockEvent;
import crafttweaker.event.BlockHarvestDropsEvent;

import crafttweaker.data.IData;
import crafttweaker.util.IRandom;

## remove the circuit board as it is now a loot prize only
## (added via a different loottweaker script)
recipes.removeByRecipeName("air_support:recipe_circuit_board");
<air_support:circuit_board>.addTooltip(format.gold("Lucky find in urban loot chests!"));

## make the harvest level, tool, hardness, and blast resistance consistent
## hardness 15 makes it just a little thwackier to opoen up adding suspense
## blast resistance 15 means it barely can NOT take a direct TNT blast
var crates = [
    <air_support:medical_crate>,
    <air_support:utility_crate>,
    <air_support:livestock_crate>
] as IItemStack[];

for crate in crates {
    crate.asBlock().definition.setHarvestLevel("axe", 0);
    crate.asBlock().definition.hardness = 15;
    crate.asBlock().definition.resistance = 15;
}

## make our own names for easier referencing and checking
var medicalBlock = <air_support:medical_crate>.asBlock();
var utilityBlock = <air_support:utility_crate>.asBlock() as IBlock;
var livestockBlock = <air_support:livestock_crate>.asBlock() as IBlock;
var cratePattern = ( medicalBlock | utilityBlock | livestockBlock ) as IBlockPattern;

## setup drops array of type List<WeightedItemStack>
## specify NBT here as well for more complex items
## NOTE: I don't know how to remove the `air_support.cfg` configured item drop
##       and you can't leave its config empty or it will give a null error.

## Medical Crate Drops
var medicalDrops = [
    (<minecraft:apple>*16).weight(1.0),
    <minecraft:cake>.weight(0.75),
    <minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}).weight(0.75),
    (<minecraft:potion>.withTag({Potion: "minecraft:healing"})*4).weight(0.50)
] as WeightedItemStack[];

## Utility Crate drops
var utilityDrops = [
    <minecraft:stone_pickaxe:23>.weight(0.90)
] as WeightedItemStack[];

## ProTip: drop loot like this in many small piles to "make it rain"
for i in 0 to 64 {
    utilityDrops += <minecraft:rotten_flesh>.weight(0.90);
    utilityDrops += <minecraft:coal>.weight(0.75);
    utilityDrops += <minecraft:redstone>.weight(0.50);
}

## Livestock Crate Drops (for custom entity spawning look below in event callback)
var livestockDrops = [
    (<minecraft:wheat>*16).weight(0.75),
    <minecraft:saddle>.weight(0.75),
    <minecraft:lead>.weight(0.75)
] as WeightedItemStack[];

## register event for all block block harvest drops
events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
    ## this is excessive but defensive
    if isNull(event) { return; }
    if isNull(event.world) { return; }
    if isNull(event.block) { return; }
    if isNull(event.drops) { return; }
    if isNull(event.position) { return; }

    ## always bail if world isRemote() to avoid desyncing server and double execution
    var world = event.world as IWorld;
    if(world.isRemote()) { return; }

    ## check if the block from eventl matches one of the air support crates
    var block = event.block as IBlock;
    if (cratePattern has block) {
        if (block in medicalBlock) {

            ## Handle Medical Crate
            ## server.commandManager.executeCommand(server, "say You just broke a medical crate!");
            event.drops = medicalDrops;

        } else if (block in utilityBlock) {

            ## Handle Utility Crate
            ## server.commandManager.executeCommand(server, "say You just broke a utility crate!");
            event.drops = utilityDrops;

        } else {

            ## Handle Livestock Crate
            ## server.commandManager.executeCommand(server, "say You just broke a livestock crate!");
            event.drops = livestockDrops;

            ## optionally do this silenty (this isn't a proper toggle but a good enough hack for now)
            server.commandManager.executeCommand(server, "gamerule sendCommandFeedback false");

            ## do custom entity spawning here using server commands if desired
            ## Add a few fun possible exclusive events
            if (world.random.nextFloat() < 0.25) {
                ## 25% chance to spawn a tame horse and toss an additional guaranteed name tag
                event.drops += <minecraft:name_tag>.weight(1.00);
                server.commandManager.executeCommand(
                    server,
                    "summon Horse " +
                    (event.position.x+1.0) + " " +
                    (event.position.y+1.0) + " " +
                    (event.position.z+1.0) + " " +
                    "{Tame:1, SaddleItem:{id:saddle,Count:1}}"
                );
            } else if (world.random.nextFloat() < 0.25) {
                ## otherwise 25% chance to spawn 4-12 head cattle herd nearby
                for i in 0 to ((world.random.nextFloat() * 8.1 + 4.0) as int) {
                    server.commandManager.executeCommand(
                        server,
                        "summon Cow " +
                        (event.position.x+world.random.nextFloat() * 4.0 - 2.0) + " " +
                        (event.position.y+world.random.nextFloat() * 4.0      ) + " " +
                        (event.position.z+world.random.nextFloat() * 4.0 - 2.0)
                    );
                }
            } else if (world.random.nextFloat() < 0.25) {
                ## otherwise 25% chance to spawn 6-10 head pack of zombies nearby
                for i in 0 to ((world.random.nextFloat() * 4.1 + 6.0) as int) {
                    server.commandManager.executeCommand(
                        server,
                        "summon Zombie " +
                        (event.position.x+world.random.nextFloat() * 4.0 - 2.0) + " " +
                        (event.position.y+world.random.nextFloat() * 4.0      ) + " " +
                        (event.position.z+world.random.nextFloat() * 4.0 - 2.0) + " " +
                        "{Tame:1, SaddleItem:{id:saddle,Count:1}}"
                    );
                }
            }

            ## turn this back on assuming it was on to begin with (it will print a message...)
            server.commandManager.executeCommand(server, "gamerule sendCommandFeedback true");

        }

    }
});
