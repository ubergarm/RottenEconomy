#modloaded scalinghealth
// Scaling Health

import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.event.PlayerDeathDropsEvent;
import crafttweaker.command.ICommandManager;
import crafttweaker.command.ICommandSender;
import crafttweaker.command.ICommand;

// add recipe for enchanted heart
recipes.addShaped("scalinghealth.enchanted_heart", <scalinghealth:difficultychanger>,
    [
        [<scalinghealth:heartcontainer>, <minecraft:ghast_tear>, <scalinghealth:heartcontainer>],
        [<scalinghealth:heartcontainer>, <minecraft:cake>, <scalinghealth:heartcontainer>],
        [<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>],
    ]
);

// add recipe for cursed heart
recipes.addShaped("scalinghealth.cursed_heart", <scalinghealth:difficultychanger:1>,
    [
        [<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>],
        [<scalinghealth:heartcontainer>, <dimensionalcake:blockendcake>, <scalinghealth:heartcontainer>],
        [<scalinghealth:heartcontainer>, <minecraft:ghast_tear>, <scalinghealth:heartcontainer>],
    ]
);

## Since we use SERVER_WIDE difficulty need items to change that
## as per player difficulty has no meaning in SERVER_WIDE mode
## fortunately the displayed difficulty is the world_difficulty
## make sure to use world.isRemote() or it will fire this function twice

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent) {
    var world = event.world;
    var item = event.item as IItemStack;

    if(world.isRemote()) { return; }

    if (<scalinghealth:difficultychanger>.matches(item)) {
        // Enchanted Heart
        for i in 0 to 10 {
            server.commandManager.executeCommand(server, "scalinghealth world_difficulty sub 1 " + event.player.name);
        }
    } else if (<scalinghealth:difficultychanger:1>.matches(item)) {
        // Cursed Heart
        for i in 0 to 10 {
            server.commandManager.executeCommand(server, "scalinghealth world_difficulty add 1 " + event.player.name);
        }
    }

    return;
});

// When a player dies reduce global difficulty
events.onPlayerDeathDrops(function(event as crafttweaker.event.PlayerDeathDropsEvent) {
    var world = event.player.world;
    var name = event.player.name;

    if(world.isRemote()) { return; }

    server.commandManager.executeCommand(server, "say Let's make it easier because " + name +" died! §b(Difficulty -1.0)§r");
    server.commandManager.executeCommand(server, "scalinghealth world_difficulty sub 1 " + name);
    server.commandManager.executeCommand(server, "weather2 storm killall");

    return;
});
