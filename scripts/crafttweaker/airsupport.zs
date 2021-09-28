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
var medicalBlock = <air_support:medical_crate>.asBlock() as IBlock;
var utilityBlock = <air_support:utility_crate>.asBlock() as IBlock;
var livestockBlock = <air_support:livestock_crate>.asBlock() as IBlock;
var cratePattern = ( medicalBlock | utilityBlock | livestockBlock ) as IBlockPattern;

## setup drops array of type List<WeightedItemStack>
## specify NBT here as well for more complex items
## NOTE: I don't know how to remove the `air_support.cfg` configured item drop
##       and you can't leave its config empty or it will give a null error.

## Medical Crate Drops
var medicalDrops = [
    (<minecraft:cake>*1).weight(0.25),
    (<minecraft:potion>*1).withTag({Potion: "cofhcore:healing3"}).weight(0.25),
    (<firstaid:plaster>*4).weight(0.25),
    (<firstaid:bandage>*4).weight(0.50),
    (<scalinghealth:healingitem>*4).weight(0.25),
    (<scalinghealth:healingitem:1>*2).weight(0.50),
    (<firstaid:morphine>*2).weight(0.50),
    (<pizzacraft:slice_1>*4).weight(0.50),
    (<cyberware:body_part:2>*1).weight(0.08),
    (<cyberware:body_part>*1).weight(0.08),
    (<cyberware:body_part:1>*1).weight(0.08),
    (<cyberware:body_part:3>*1).weight(0.08),
    (<cyberware:body_part:4>*1).weight(0.08),
    (<cyberware:body_part:5>*1).weight(0.08),
    (<cyberware:body_part:7>*1).weight(0.08),
    (<cyberware:body_part:8>*1).weight(0.08),
    (<cyberware:body_part:9>*1).weight(0.08),
    (<cyberware:body_part:10>*1).weight(0.08),
    (<cyberware:body_part:11>*1).weight(0.08),
] as WeightedItemStack[];

for i in 0 to 4 {
    medicalDrops += <scalinghealth:heartcontainer>.weight(0.25);
    medicalDrops += <scalinghealth:difficultychanger>.weight(0.50);
    medicalDrops += <nuclearcraft:dominos>.weight(0.50);
    medicalDrops += <nuclearcraft:milk_chocolate>.weight(0.25);
    medicalDrops += <nuclearcraft:marshmallow>.weight(0.25);
    medicalDrops += <nuclearcraft:graham_cracker>.weight(0.75);
}

for i in 0 to 64 {
    medicalDrops += <scalinghealth:heartdust>.weight(0.75);
    medicalDrops += <scalinghealth:crystalshard>.weight(0.25);
    medicalDrops += <cyberware:neuropozyne>.weight(0.50);
    medicalDrops += <minecraft:packed_ice>.weight(0.25);
}

## Utility Crate drops
var utilityDrops = [
    <techguns:boltaction>.withTag({ammo: 6 as short, ammovariant: "default", camo: 1 as byte}).weight(0.25),
    <techguns:goldenrevolver>.withTag({ammo: 6 as short, ammovariant: "default", camo: 0 as byte}).weight(0.25),
    (<techguns:stielgranate>*4).weight(0.25),
    (<icbmclassic:grenade>*4).weight(0.25),
    <vehicle:jerry_can>.withTag({fuel: 3500.0 as float}).weight(0.50),
    <vehicle:industrial_jerry_can>.withTag({fuel: 12500.0 as float}).weight(0.25),
    <vehicle:vehicle_crate>.withTag({BlockEntityTag: {engineTier: 0, wheelType: 0, vehicle: "vehicle:shopping_cart"}}).weight(0.15),
    <vehicle:vehicle_crate>.withTag({BlockEntityTag: {engineTier: 0, wheelType: 0, vehicle: "vehicle:mini_bike"}}).weight(0.10),
    <vehicle:vehicle_crate>.withTag({BlockEntityTag: {engineTier: 0, wheelType: 0, vehicle: "vehicle:golf_cart"}}).weight(0.10),
    <vehicle:vehicle_crate>.withTag({BlockEntityTag: {engineTier: 0, wheelType: 0, vehicle: "vehicle:atv"}}).weight(0.10),
    (<hoverboardmod:aerogel>*2).weight(0.50),
    (<minecraft:dragon_breath>*2).weight(0.02),
    <minecraft:nether_star>.weight(0.005)
] as WeightedItemStack[];

## ProTip: drop loot like this in many small piles to "make it rain"
for i in 0 to 64 {
    utilityDrops += <minecraft:rotten_flesh>.weight(0.90);
    utilityDrops += <contenttweaker:gritty_flesh>.weight(0.50);
    utilityDrops += <contenttweaker:jumpy_flesh>.weight(0.25);
    utilityDrops += <qmd:flesh>.weight(0.50);
    utilityDrops += <minecraft:gunpowder>.weight(0.75);
    utilityDrops += <techguns:itemshared:0>.weight(0.75);
    utilityDrops += <techguns:itemshared:1>.weight(0.75);
    utilityDrops += <techguns:itemshared:2>.weight(0.75);
    utilityDrops += <techguns:itemshared:3>.weight(0.75);
}

## Livestock Crate Drops (for custom entity spawning look below in event callback)
var livestockDrops = [
    (<minecraft:wheat>*16).weight(0.75),
    <minecraft:lead>.weight(1.0),
    <betteranimalsplus:golden_goose_egg>.weight(0.75),
    (<betteranimalsplus:pheasantraw>*4).weight(1.0)
] as WeightedItemStack[];

## register event for all block block harvest drops
events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
    ## this is excessive but defensive
    if isNull(event) { return; }
    if isNull(event.world) { return; }
    if isNull(event.block) { return; }
    if isNull(event.drops) { return; }
    if isNull(event.position) { return; }
    if isNull(event.player) { return; }

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

            if (world.random.nextFloat() < 0.25) {
                ## 25% chance to spawn 6-10 head pack of husks in the distant vacinity
                for i in 0 to ((world.random.nextFloat() * 4.1 + 6.0) as int) {
                    server.commandManager.executeCommand(
                        server,
                        "summon minecraft:husk " +
                        (event.position.x+world.random.nextFloat() * 4.0 * 5.0 - 10.0) + " " +
                        (event.position.y+world.random.nextFloat() * 4.0      ) + " " +
                        (event.position.z+world.random.nextFloat() * 4.0 * 5.0 - 10.0)
                    );
                }
            } else if (world.random.nextFloat() < 0.50) {
                ## otherwise 50% chance to spawn 2-4 slimes in the distant vacinity
                for i in 0 to ((world.random.nextFloat() * 2.1 + 2.0) as int) {
                    server.commandManager.executeCommand(
                        server,
                        "summon minecraft:slime " +
                        (event.position.x+world.random.nextFloat() * 4.0 * 5.0 - 10.0) + " " +
                        (event.position.y+world.random.nextFloat() * 4.0      ) + " " +
                        (event.position.z+world.random.nextFloat() * 4.0 * 5.0 - 10.0)
                    );
                }
            }

        } else {

            ## Handle Livestock Crate
            ## server.commandManager.executeCommand(server, "say You just broke a livestock crate!");
            event.drops = livestockDrops;

            ## do custom entity spawning here using server commands if desired
            ## Add a few fun possible exclusive events
            if (world.random.nextFloat() < 0.15) {
                ## 25% chance to spawn a tame horse and toss an additional guaranteed name tag
                event.drops += <minecraft:name_tag>.weight(1.00);
                server.commandManager.executeCommand(
                    server,
                    "summon minecraft:horse " +
                    (event.position.x+1.0) + " " +
                    (event.position.y+1.0) + " " +
                    (event.position.z+1.0) + " " +
                    "{Tame:1, SaddleItem:{id:saddle,Count:1}}"
                );
            } else if (world.random.nextFloat() < 0.25) {
                ## otherwise 25% chance to spawn 4-12 head deer heard nearby
                for i in 0 to ((world.random.nextFloat() * 8.1 + 4.0) as int) {
                    server.commandManager.executeCommand(
                        server,
                        "summon betteranimalsplus:deer " +
                        (event.position.x+world.random.nextFloat() * 4.0 - 2.0) + " " +
                        (event.position.y+world.random.nextFloat() * 4.0      ) + " " +
                        (event.position.z+world.random.nextFloat() * 4.0 - 2.0)
                    );
                }
            } else if (world.random.nextFloat() < 0.25) {
                ## otherwise 25% chance to spawn 3-6 foxes in the distant vacinity
                for i in 0 to ((world.random.nextFloat() * 3.1 + 3.0) as int) {
                    server.commandManager.executeCommand(
                        server,
                        "summon betteranimalsplus:fox " +
                        (event.position.x+world.random.nextFloat() * 4.0 * 5.0 - 10.0) + " " +
                        (event.position.y+world.random.nextFloat() * 4.0      ) + " " +
                        (event.position.z+world.random.nextFloat() * 4.0 * 5.0 - 10.0)
                    );
                }
            } else if (world.random.nextFloat() < 0.25) {
                ## otherwise 25% chance to spawn 4-6 black bears in the distant vacinity
                for i in 0 to ((world.random.nextFloat() * 2.1 + 4.0) as int) {
                    server.commandManager.executeCommand(
                        server,
                        "summon betteranimalsplus:blackbear " +
                        (event.position.x+world.random.nextFloat() * 4.0 * 5.0 - 10.0) + " " +
                        (event.position.y+world.random.nextFloat() * 4.0      ) + " " +
                        (event.position.z+world.random.nextFloat() * 4.0 * 5.0 - 10.0)
                    );
                }
            } else if (world.random.nextFloat() < 0.50) {
                ## otherwise 50% chance to spawn 6-8 head herd cattle in distant vacinity
                for i in 0 to ((world.random.nextFloat() * 2.1 + 4.0) as int) {
                    server.commandManager.executeCommand(
                        server,
                        "summon minecraft:cow " +
                        (event.position.x+world.random.nextFloat() * 4.0 * 5.0 - 10.0) + " " +
                        (event.position.y+world.random.nextFloat() * 4.0      ) + " " +
                        (event.position.z+world.random.nextFloat() * 4.0 * 5.0 - 10.0)
                    );
                }
            }
        }

    }

    return;
});

## Add Scaling Health World Difficulty Increase when using some air support remotes
events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent) {
    if isNull(event) { return; }
    if isNull(event.world) { return; }
    if isNull(event.item) { return; }
    if isNull(event.player) { return; }

    var world = event.world;
    if(world.isRemote()) { return; }

    var item = event.item as IItemStack;

    if (<air_support:medical_crate_drop_remote>.matches(item)) {
        ## Increase Difficulty by 3 in increments of 1
        for i in 0 to 3 {
            server.commandManager.executeCommand(server, "scalinghealth world_difficulty add 1 " + event.player.name);
        }
    } else if (<air_support:utility_crate_drop_remote>.matches(item)) {
        ## Increase Difficulty by 5 in increments of 1
        for i in 0 to 5 {
            server.commandManager.executeCommand(server, "scalinghealth world_difficulty add 1 " + event.player.name);
        }
    }

    return;
});
