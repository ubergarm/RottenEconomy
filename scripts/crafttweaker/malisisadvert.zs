#modloaded malisisadvert
// Malisis Adverts

import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;

import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockPattern;

import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockProperties;

import crafttweaker.events.IEventManager;
import crafttweaker.event.IBlockEvent;
import crafttweaker.event.EntityJoinWorldEvent;

import crafttweaker.data.IData;
import crafttweaker.util.IRandom;

// TODO maybe need a command block to properly summon a tile entity with correct data?
// unfortunately Lost Cities just places it as a block, unsure how to make it "pop open"
// register event for when a player looks at the advert
// events.onEntityJoinWorld(function(event as crafttweaker.event.EntityJoinWorldEvent) {
//     ## this is excessive but defensive
//     if isNull(event) { return; }
//     if isNull(event.world) { return; }
//     if isNull(event.entity) { return; }
//     // if isNull(event.block) { return; }
//     // if isNull(event.position) { return; }
//     // if isNull(event.player) { return; }

//     // ## always bail if world isRemote() to avoid desyncing server and double execution
//     var world = event.world as IWorld;
//     if(world.isRemote()) { return; }

//     server.commandManager.executeCommand(server, "say Entity: " + event.entity.definition.name + " just joined the world!");

//     // tile entity data
//     var data = {
//         selections:
//         [
//             {
//                 u: 0.0F,
//                 U: 1.0F,
//                 v: 0.0F,
//                 V: 1.0F,
//                 index: 0 as byte,
//                 advert: 2
//             }
//         ],
//         x: 405,
//         wall_mounted:0 as byte,
//         footType: 2,
//         y: 97,
//         z: 69,
//         model: "panel",
//         id: "minecraft:adverttileentity"
//     } as IData;

//     // ## check if the block from eventl matches one of the air support crates
//     // var block = event.block as IBlock;
//     // if (cratePattern has block) {
//     //     server.commandManager.executeCommand(server, "say You just broke a medical crate!");
//     // }

//     return;
// });
