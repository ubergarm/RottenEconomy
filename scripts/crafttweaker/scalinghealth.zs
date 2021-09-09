#modloaded scalinghealth
// Scaling Health

import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.command.ICommandManager;
import crafttweaker.command.ICommandSender;
import crafttweaker.command.ICommand;

// Since we use SERVER_WIDE difficulty need items to change that
// as per player difficulty has no meaning in SERVER_WIDE mode
// fortunately the displayed difficulty is the world_difficulty

// FIXME the loops call 5 times as this event is called twice (mouse down/up = two events maybe???)
// as the hearts are supposed to inc/dec difficulty by 10 points total

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent) {
  var item as IItemStack = event.item as IItemStack;

  if (<scalinghealth:difficultychanger>.matches(item)) {
    // Enchanted Heart
    for i in 0 to 5 {
      server.commandManager.executeCommand(server, "scalinghealth world_difficulty sub 1 " + event.player.name);
    }
  } else if (<scalinghealth:difficultychanger:1>.matches(item)) {
    // Cursed Heart
    for i in 0 to 5 {
      server.commandManager.executeCommand(server, "scalinghealth world_difficulty add 1 " + event.player.name);
    }
  }

  return;
});
