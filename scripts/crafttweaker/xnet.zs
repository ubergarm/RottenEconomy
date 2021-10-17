#modloaded xnet
// xnet

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockPattern;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockProperties;

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLeftClickBlockEvent;

import crafttweaker.data.IData;
import crafttweaker.util.Position3f;

// tl;dr it is too difficult to distinguish Network and Routing Connectors!
// it is impossible to fixup the names as breaking/placing connectors loses
// the NBT tag as the block is not a tileentity probably so just get rid of
// all routing cables and connectors and properly name that regular ones a
// little bit better so its less confusing i tried all kinds of shenanigans
// to detect and apply NBT onPickup and various block break events- NO DICE!
// setting displayName does not work as there is like one name for all items
// putting the actual name in a tooltip seems to be the best solution for now

// this generic name is ambigious once the cable is broken it loses its name UGH! MCJty!!! xD
game.setLocalization("tile.xnet.netcable.name", "Ambigious XNet Cable");
game.setLocalization("tile.xnet.netcable_blue.name", "Blue Network Cable");
<xnet:netcable:0>.addTooltip("Blue Network Cable");
game.setLocalization("tile.xnet.netcable_red.name", "Red Network Cable");
<xnet:netcable:1>.addTooltip("Red Network Cable");
game.setLocalization("tile.xnet.netcable_yellow.name", "Yellow Network Cable");
<xnet:netcable:2>.addTooltip("Yellow Network Cable");
game.setLocalization("tile.xnet.netcable_green.name", "Green Network Cable");
<xnet:netcable:3>.addTooltip("Green Network Cable");
game.setLocalization("tile.xnet.netcable_routing.name", "Router Cable");
<xnet:netcable:4>.addTooltip("Router Cable");

// this generic name is ambigious once the connector is broken it loses its name UGH! MCJty!!! xD
game.setLocalization("tile.xnet.connector.name", "Ambigious XNet Connector");
game.setLocalization("tile.xnet.connector_blue.name", "Blue Network Connector");
<xnet:connector:0>.addTooltip("Blue Network Connector");
game.setLocalization("tile.xnet.connector_red.name", "Red Network Connector");
<xnet:connector:1>.addTooltip("Red Network Connector");
game.setLocalization("tile.xnet.connector_yellow.name", "Yellow Network Connector");
<xnet:connector:2>.addTooltip("Yellow Network Connector");
game.setLocalization("tile.xnet.connector_green.name", "Green Network Connector");
<xnet:connector:3>.addTooltip("Green Network Connector");
game.setLocalization("tile.xnet.connector_routing.name", "Router Connector");
<xnet:connector:4>.addTooltip("Router Connector");

// same for the generic advanced connector name
game.setLocalization("tile.xnet.advanced_connector.name", "Ambigious XNet Advanced Network Connector");
game.setLocalization("tile.xnet.advanced_connector_blue.name", "Advanced Blue Network Connector");
<xnet:advanced_connector:0>.addTooltip("Advanced Blue Network Connector");
game.setLocalization("tile.xnet.advanced_connector_red.name", "Advanced Red Network Connector");
<xnet:advanced_connector:1>.addTooltip("Advanced Red Network Connector");
game.setLocalization("tile.xnet.advanced_connector_yellow.name", "Advanced Yellow Network Connector");
<xnet:advanced_connector:2>.addTooltip("Advanced Yellow Network Connector");
game.setLocalization("tile.xnet.advanced_connector_green.name", "Advanced Green Network Connector");
<xnet:advanced_connector:3>.addTooltip("Advanced Green Network Connector");

// quadruple recipe output for basic network connectors
recipes.removeByRecipeName("xnet:connector_0");
recipes.addShaped("xnet.connector_0", <xnet:connector:0>.withTag({display: {LocName: "tile.xnet.connector_blue.name"}})*4,
    [
        [<ore:dyeBlue>, <ore:chest>, <ore:dyeBlue>],
        [<minecraft:redstone>, <minecraft:gold_ingot>, <minecraft:redstone>],
        [<ore:dyeBlue>, <minecraft:redstone>, <ore:dyeBlue>]
    ]
);

// quadruple recipe output for advanced network connector upgrades
recipes.removeByRecipeName("xnet:connector_upgrade");
recipes.addShaped("xnet.connector_upgrade", <xnet:connector_upgrade>*4,
    [
        [<minecraft:paper>, <minecraft:ender_pearl>],
        [<minecraft:diamond>, <minecraft:redstone>]
    ]
);

// make a 4x recipe for advanced network connectors
recipes.removeByRecipeName("xnet:advanced_connector_0");
recipes.addShaped("xnet.advanced_connector_0", <xnet:advanced_connector:0>.withTag({display: {LocName: "tile.xnet.advanced_connector_blue.name"}})*4,
    [
        [<xnet:connector:0>, <minecraft:diamond>, <xnet:connector:0>],
        [null, <minecraft:ender_pearl>, null],
        [<xnet:connector:0>, <minecraft:redstone>, <xnet:connector:0>]
    ]
);

// fixup network cable name in output of recipe so it shows correct NBT localized name
recipes.removeByRecipeName("xnet:netcable_0");
recipes.addShaped("xnet.netcable_0", (<xnet:netcable>*16).withTag({display: {LocName: "tile.xnet.netcable_blue.name"}}),
    [
        [<ore:string>, <minecraft:redstone>, <ore:string>],
        [<minecraft:redstone>, <minecraft:gold_nugget>, <minecraft:redstone>],
        [<ore:string>, <minecraft:redstone>, <ore:string>]
    ]
);

// fixup router cable name in output of recipe so it shows correct NBT localized name
recipes.removeByRecipeName("xnet:netcable_routing");
recipes.addShaped("xnet.netcable_routing", (<xnet:netcable:4>*32).withTag({display: {LocName: "tile.xnet.netcable_routing.name"}}),
    [
        [<ore:string>, <minecraft:redstone_block>, <ore:string>],
        [<minecraft:redstone_block>, <minecraft:gold_ingot>, <minecraft:redstone_block>],
        [<ore:string>, <minecraft:redstone_block>, <ore:string>]
    ]
);

// fixup the router connector recipe name so it shows the correct NBT localized name
recipes.removeByRecipeName("xnet:connector_routing");
recipes.addShaped("xnet.connector_routing", <xnet:connector:4>.withTag({display: {LocName: "tile.xnet.connector_routing.name"}}),
    [
        [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
        [<minecraft:gold_nugget>, <xnet:connector:0>, <minecraft:gold_nugget>],
        [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]
    ]
);

// when the player whacks an xnet controller with a stick it "jump starts" it with a few free RF of power
<xnet:controller>.addTooltip("§eNOTE: §7Whack controller with a stick to jump start it when out of power.");
events.onPlayerLeftClickBlock(function(event as crafttweaker.event.PlayerLeftClickBlockEvent) {
    if isNull(event) { return; }
    if isNull(event.world) { return; }

    // always bail if world isRemote() to avoid desyncing server and double execution
    var world = event.world as IWorld;
    if (world.isRemote()) { return; }

    // bail if the player is not whacking with a stick
    if isNull(event.item) { return; }
    var item = event.item;
    if (!<minecraft:stick>.matches(item)) { return; }

    if isNull(event.position) { return; }
    var pos = event.position;

    var block = world.getBlock(pos) as IBlock;
    if isNull(block) { return; }

    var state = world.getBlockState(pos) as IBlockState;
    if isNull(state) { return; }

    if isNull(block.data) { return; }
    var data = block.data as IData;
    if (data.id.asString() != "xnet:controller") { return; }

    // only "jump start" if it has less than 15RF currently stored
    if(data.Energy >= 15) { return; }

    // give it 10 RF for each individual click (hold left click only triggers once)
    val override as IData = {
        Energy : (data.Energy + 10) as long
    };
    world.setBlockState(state, data + override, pos);

    return;
});
