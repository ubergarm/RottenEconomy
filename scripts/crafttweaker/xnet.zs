#modloaded xnet
// xnet

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import crafttweaker.event.PlayerPickupItemEvent;
import crafttweaker.block.IBlockState;
import crafttweaker.data.IData;

// // force displayName to make it easier to distinguish network and routing stuff
// // network cables already have clear names

// network connectors need clear names
// <xnet:connector:0>.displayName = "Blue Network Connector";
game.setLocalization("tile.xnet.connector_blue.name", "Blue Network Connector");
// this next jawn has to be "Connector" because once broken they lose the correct name UGH MCJty!!! xD
game.setLocalization("tile.xnet.connector.name", "Ambigious Connector");
// <xnet:connector:1>.displayName = "Red Network Connector";
game.setLocalization("tile.xnet.connector_red.name", "Red Network Connector");
// <xnet:connector:2>.displayName = "Yellow Network Connector";
game.setLocalization("tile.xnet.connector_yellow.name", "Yellow Network Connector");
// <xnet:connector:3>.displayName = "Green Network Connector";
game.setLocalization("tile.xnet.connector_green.name", "Green Network Connector");

// advanced network connectors need clear names
// <xnet:advanced_connector:0>.displayName = "Advanced Blue Network Connector";
game.setLocalization("tile.xnet.advanced_connector_blue.name", "Advanced Blue Network Connector");
game.setLocalization("tile.xnet.advanced_connector.name", "Advanced Network Connector");
// <xnet:advanced_connector:1>.displayName = "Advanced Red Network Connector";
game.setLocalization("tile.xnet.advanced_connector_red.name", "Advanced Red Network Connector");
// <xnet:advanced_connector:2>.displayName = "Advanced Yellow Network Connector";
game.setLocalization("tile.xnet.advanced_connector_yellow.name", "Advanced Yellow Network Connector");
// <xnet:advanced_connector:3>.displayName = "Advanced Green Network Connector";
game.setLocalization("tile.xnet.advanced_connector_green.name", "Advanced Green Network Connector");

// router cables need clear names
// <xnet:netcable:4>.displayName = "Router Cable";
game.setLocalization("tile.xnet.netcable_routing.name", "Router Cable");
game.setLocalization("tile.xnet.netcable.name", "Router Cable");

// router connectors need clear names
// <xnet:connector:4>.displayName = "Router Connector";
game.setLocalization("tile.xnet.connector_routing.name", "Router Connector");

// fixup router connector name so it shows the correct NBT localized name
recipes.removeByRecipeName("xnet:connector_routing");
recipes.addShaped("xnet.connector_routing", <xnet:connector:4>.withTag({display: {LocName: "tile.xnet.connector_routing.name"}}),
    [
        [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
        [<minecraft:gold_nugget>, <xnet:connector:0>, <minecraft:gold_nugget>],
        [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]
    ]
);

// // FIXME: this is not setting the tag for some reason
// // perhaps event.item.item is a copy and not actually the item
// // because event.item.item cannot actually be set ??? who knows...
// // this is overkill but register event handler item pickup to properly disambiguated network vs router cable NBT name tags
// events.onPlayerPickupItem(function(event as crafttweaker.event.PlayerPickupItemEvent) {
//     if isNull(event) { return; }
//     if isNull(event.item) { return; }
//     if isNull(event.player) { return; }

//     var player = event.player;
//     var item = event.item.item;

//     var world = player.world;
//     if(world.isRemote()) { return; }

//     // check if the item is one of the connectors for which we want to disambiguate the name with NBT tags
//     if (<xnet:connector:0>.matches(item)) {
//         // event.item.item.displayName = "Blue Network Connector";
//         event.item.item.updateTag({display: {LocName: "tile.xnet.connector_blue.name"}});
//     } else if (<xnet:connector:1>.matches(item)) {
//         // event.item.item.displayName = "Red Network Connector";
//         event.item.item.updateTag({display: {LocName: "tile.xnet.connector_red.name"}});
//     } else if (<xnet:connector:2>.matches(item)) {
//         // event.item.item.displayName = "Yellow Network Connector";
//         event.item.item.updateTag({display: {LocName: "tile.xnet.connector_yellow.name"}});
//     } else if (<xnet:connector:3>.matches(item)) {
//         // event.item.item.displayName = "Green Network Connector";
//         event.item.item.updateTag({display: {LocName: "tile.xnet.connector_green.name"}});
//     } else if (<xnet:connector:4>.matches(item)) {
//         // event.item.item.displayName = "Router Connector";
//         event.item.item.updateTag({display: {LocName: "tile.xnet.connector_routing.name"}});
//     } else if (<xnet:advanced_connector:0>.matches(item)) {
//         // event.item.item.displayName = "Advanced Blue Network Connector";
//         event.item.item.updateTag({display: {LocName: "tile.xnet.advanced_connector_blue.name"}});
//     } else if (<xnet:advanced_connector:1>.matches(item)) {
//         // event.item.item.displayName = "Advanced Red Network Connector";
//         event.item.item.updateTag({display: {LocName: "tile.xnet.advanced_connector_red.name"}});
//     } else if (<xnet:advanced_connector:2>.matches(item)) {
//         // event.item.item.displayName = "Advanced Yellow Network Connector";
//         event.item.item.updateTag({display: {LocName: "tile.xnet.advanced_connector_yellow.name"}});
//     } else if (<xnet:advanced_connector:3>.matches(item)) {
//         // event.item.item.displayName = "Advanced Green Network Connector";
//         event.item.item.updateTag({display: {LocName: "tile.xnet.advanced_connector_green.name"}});
//     }

//     return;
// });

// add a hint about lapis vs blue dye powder
<xnet:connector:0>.addTooltip("§eHINT: §7blue dye powder works as lapis in recipe!");

// quadruple recipe output for basic connectors
recipes.removeByRecipeName("xnet:connector_0");
recipes.addShaped("xnet.connector_0", <xnet:connector:0>.withTag({display: {LocName: "tile.xnet.connector_blue.name"}})*4,
    [
        [<ore:dyeBlue>, <ore:chest>, <ore:dyeBlue>],
        [<minecraft:redstone>, <minecraft:gold_ingot>, <minecraft:redstone>],
        [<ore:dyeBlue>, <minecraft:redstone>, <ore:dyeBlue>]
    ]
);

recipes.removeByRecipeName("xnet:connector_upgrade");
recipes.addShaped("xnet.connector_upgrade", <xnet:connector_upgrade>*4,
    [
        [<minecraft:paper>, <minecraft:ender_pearl>],
        [<minecraft:diamond>, <minecraft:redstone>]
    ]
);

recipes.removeByRecipeName("xnet:advanced_connector_0");
recipes.addShaped("xnet.advanced_connector_0", <xnet:advanced_connector:0>.withTag({display: {LocName: "tile.xnet.advanced_connector_blue.name"}})*4,
    [
        [<xnet:connector:0>, <minecraft:diamond>, <xnet:connector:0>],
        [null, <minecraft:ender_pearl>, null],
        [<xnet:connector:0>, <minecraft:redstone>, <xnet:connector:0>]
    ]
);
