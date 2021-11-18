#modloaded customnpcs
// Noppes Custom NPCs

import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.EntityLivingSpawnEvent;
import crafttweaker.event.EntityLivingExtendedSpawnEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.world.IWorld;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

// script local globals
var marsDimID = 16;

// remove and hide all items from JEI for now
for item in loadedMods["customnpcs"].items {
    removeAndHide(item);
}

// add all the overhead of this event just to detect a player hitting Brahma w/ Manjusri's Sword xD
events.onPlayerInteractEntity(function(event as crafttweaker.event.PlayerInteractEntityEvent)  {
    if isNull(event) { return; }

    if isNull(event.player) { return; }
    var player = event.player as IPlayer;

    if isNull(player.world) { return; }
    var world = player.world as IWorld;
    if (world.isRemote()) { return; }

    // don't be wasting computation unless the player is on mars
    if (world.getDimension() != marsDimID) { return; }

    if isNull(player.currentItem) { return; }
    var item = player.currentItem as IItemStack;

    if isNull(event.target) { return; }
    var entity = event.target as IEntity;

    if isNull(entity.definition) { return; }
    var definition = entity.definition as IEntityDefinition;

    if isNull(definition.name) { return; }
    var name = definition.name;
    if (name != "CustomNpc") { return; }

    if isNull(entity.displayName) { return; }
    var displayName = entity.displayName;
    // server.commandManager.executeCommand(server, "say displayName: "+displayName);

    if (!displayName.contains("Brahma")) { return; }

    if (!<spartanweaponry:saber_diamond:*>.matches(item)) { return; }

    if isNull(item.tag) { return; }
    var tag = item.tag as IData;

    if isNull(tag.display) { return; }
    var display = tag.display as IData;

    if isNull(display.Name) { return; }
    if (!display.Name.asString().contains("Vajra Cutter")) { return; }

    // so now the player has right clicked on Brahma the creator with Manjusri's Vajra Club
    server.commandManager.executeCommand(server,
        "title @a times 20 200 20"
    );
    server.commandManager.executeCommand(server,
        'title @a subtitle {"text":"You truly attained nothing from complete, unexcelled Enlightenment.","color":"gray"}'
    );
    server.commandManager.executeCommand(server,
        'title @a title {"text":"You Win!","color":"red"}'
    );

    // make Brahma no longer spawn boss NPCs and change his name to player's name
    var x = entity.x as int;
    var y = entity.y as int;
    var z = entity.z as int;
    var pname = player.name;
    // server.commandManager.executeCommand(server, 'say [x='+x+',y='+y+',z='+z+']');

    // not sure how to do this next one better, as the only way to get it to work seems to spam chat log
    server.commandManager.executeCommand(server,
        'execute @e[name=Brahma] ~ ~ ~ entitydata @e[name=Brahma] {NpcJob:0,Name:"'+pname+'"}'
    );

    // this nasty hack is to flush the chat log so it is slightly less immersian breaking at win time lmao
    server.commandManager.executeCommand(server,
        'tellraw @p ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]'
    );

    // no idea why these don't seem visible??
    server.commandManager.executeCommand(server,
        'particle fireworksSpark '+x+' '+(y+1)+' '+z+' 5 5 5 1 2000'
    );

    server.commandManager.executeCommand(server,
        'playsound contenttweaker:record_one record @a '+x+' '+y+' '+z+' 100'
    );

    // can't kill any of the leftover NPC bosses as can't target select with a space in name lmao no @e[name="Melon Husk"] FAIL
});
