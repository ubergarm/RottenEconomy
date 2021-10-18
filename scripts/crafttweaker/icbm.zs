#modloaded icbmclassic
// ICBM Classic

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingDeathEvent;

// EMP doesn't seem to actually drain batteries and tower crashes server
removeAndHide(<icbmclassic:explosives:16>);
removeAndHide(<icbmclassic:missile:16>);
removeAndHide(<icbmclassic:bombcart:16>);
removeAndHide(<icbmclassic:emptower>);

// Anti-Grav/Ender lags server and moves a ton of blocks LMAO nope
removeAndHide(<icbmclassic:explosives:19>);
removeAndHide(<icbmclassic:explosives:20>);

## THAR BE DRAGINS BELOW

## possible weights of explosives for a mob to drop on death via events?
## "10=icbmclassic:explosives:6",
## "10=icbmclassic:explosives",
## "8=icbmclassic:explosives:1",
## "5=icbmclassic:explosives:9",
## "10=icbmclassic:explosives:2",
## "10=icbmclassic:explosives:10",
## "5=icbmclassic:explosives:13",
## "5=icbmclassic:explosives:11",
## "5=mekanism:obsidiantnt"

#events.onEntityLivingDeath(function(event as crafttweaker.event.EntityLivingDeathEvent) {
#    var entity = event.entityLivingBase;
#    var name = entity.definition.name;
#    var world = entity.world;
#
#    if(world.isRemote()) { return; }
#
#    TODO: make sure this is a mob and not a player
#    possibly can drop powerful explosives on some mob deaths on some conditions in the future
#
#    server.commandManager.executeCommand(server, "say Looks like a " + name +
#                                                 " just died at" +
#                                                 "x: " + entity.posX +
#                                                 ", y: " + entity.posY +
#                                                 ", z: " + entity.posZ);
#    return;
#});
