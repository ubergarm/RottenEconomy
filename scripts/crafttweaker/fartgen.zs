#modloaded fartgen
// Fart Generator

import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;

import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockProperties;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.ITickEvent;
import crafttweaker.data.IData;
import crafttweaker.util.IRandom;
import crafttweaker.util.Position3f;

<fartgen:generator>.addTooltip("§eNOTE: §7Connect a Mekanism Universal Cable or Thermal Fluxduct or Energy Cell to bottom side.\nHold §bSHIFT §7for more info.");
<fartgen:generator>.addShiftTooltip("Goat or Pig: 1RF/t\nDeer or Cow: 2RF/t\nMooshroom or Blackbear: 3RF/t\nBrownbear or Reindeer: 4RF/t\nMoose: 5RF/t\n§4WARNING: §7You might get sick if you stand too close without the proper gas mask!");

// update recipe to make it a little more interesting and themed for this modpack
recipes.removeByRecipeName("fartgen:fartgen");
recipes.addShaped("fartgen.fartgen", <fartgen:generator>,
    [
        [<minecraft:lead>, null, <betteranimalsplus:trillium> | <ore:listAllberry>],
        [<minecraft:glass_pane>, <minecraft:iron_bars>, null],
        [<minecraft:redstone_block>, <minecraft:heavy_weighted_pressure_plate>, <minecraft:hay_block>]
    ]
);

// 33% chance of nausea effect every 5 seconds when a player is within 4 block radius of a fart generator
var nauseaChance = 0.33;
// assume 20 ticks-per-second when server is running good
// only run this brute force computation once every ~5 seconds
var tickCheckRate = 100;
<mekanism:gasmask>.addTooltip("§eBONUS: §7Grants immunity to nausea effect caused by Fart Generators when worn!");

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    if isNull(event) { return; }

    if isNull(event.player) { return; }
    var player = event.player;

    if isNull(player.world) { return; }
    var world = player.world;
    if (world.isRemote()) { return; }
    if (event.phase != "START") { return; }

    if ((world.getWorldTime() % tickCheckRate) != 0) { return; }

    // grant immunity to farts if wearing a <mekanism:gasmask>
    // slot 39 seems to be the armor head slot
    // unfortunately cannot access baubles or Tech Guns special slots
    var headSlot = 39;
    if !isNull(player.getInventoryStack(headSlot)) {
        var item = player.getInventoryStack(headSlot);
        if (<mekanism:gasmask>.matches(item)) {
            return;
        }
    }

    // only bother to run the triple for loop search if chance roll succeeds first
    if (world.random.nextFloat() > nauseaChance) { return; }

    if isNull(player.position) { return; }
    var pos = player.position;

    // search radius of 4 on x and z axis, and radius of 2 on y axis
    for dx in 0 to 9 {
        for dy in 0 to 5 {
            for dz in 0 to 9 {

                var dPos = crafttweaker.util.Position3f.create(pos.x + dx - 4, pos.y + dy - 2, pos.z + dz - 4);
                var block = world.getBlock(dPos.asBlockPos()) as IBlock;
                if isNull(block.data) { continue; }

                var data = block.data as IData;
                if (data.id.asString() != "fartgen:generator") { continue; }

                // only if an animal is plugged in and farting
                if isNull(data.has_entity) { continue; }
                if data.has_entity != 1 { continue; }

                // the one who smell't it dealt it
                // effect <player> <effect> [seconds] [amplifier] [hideParticles]
                server.commandManager.executeCommand(server, "effect " + player.name + " minecraft:nausea 10 0 false");
                return;
            }
        }
    }
});
