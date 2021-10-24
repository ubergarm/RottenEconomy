#modloaded advancedrocketry
// Advanced Rocketry

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

import crafttweaker.world.IWorld;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingAttackedEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.damage.IDamageSource;

// fixup some missing libvulpes localization names
game.setLocalization("item.battery.0.name", "Basic Rocketry Battery");
game.setLocalization("item.battery.1.name", "Advanced Rocketry Battery");

// set hardness and blast resistance of launchpad and structure tower blocks
<advancedrocketry:launchpad:*>.asBlock().definition.hardness = 2.5;
<advancedrocketry:launchpad:*>.asBlock().definition.resistance = 35.0;
<advancedrocketry:structuretower:*>.asBlock().definition.hardness = 2.5;
<advancedrocketry:structuretower:*>.asBlock().definition.resistance = 35.0;

// seriously just use a block of coal don't make an ingot of coal
// says the guy who just fell into <ore:plateCarbon> hell LMAO xD
removeAndHide(<advancedrocketry:misc:1>);
<ore:ingotCarbon>.remove(<advancedrocketry:misc:1>);

recipes.removeByRecipeName("advancedrocketry:oxygenscrubber");
recipes.addShaped("advancedrocketry.oxygenscrubber", <advancedrocketry:oxygenscrubber>,
    [
        [<minecraft:iron_bars>, <ore:fanSteel>, <minecraft:iron_bars>],
        [<minecraft:iron_bars>, <ore:blockMotor>, <minecraft:iron_bars>],
        [<minecraft:iron_bars>, <ore:blockCoal>, <minecraft:iron_bars>]
    ]
);

// add event to prevent low oxygen damage to android mobs
events.onEntityLivingAttacked(function(event as crafttweaker.event.EntityLivingAttackedEvent) {
    if isNull(event) { return; }

    if isNull(event.entity) { return; }
    var entity = event.entity as IEntity;

    if isNull(entity.world) { return; }
    var world = entity.world as IWorld;
    if (world.isRemote()) { return; }

    if isNull(event.damageSource) { return; }
    var damageSource = event.damageSource as IDamageSource;

    if isNull(damageSource.damageType) { return; }
    var damageType = damageSource.damageType as string;

    if (damageType != "Vacuum") { return; }

    if isNull(entity.definition) { return; }
    var definition = entity.definition;

    if isNull(definition.name) { return; }
    var name = definition.name;

    //server.commandManager.executeCommand(server, "say a "+name+" was damaged by "+damageType);
    if (name == "ranged_rogue_android") {
        event.cancel();
    } else if (name == "rogue_android") {
        event.cancel();
    } else if (name == "drone") {
        event.cancel();
    } else if (name == "lcrdrfs.laser_creeper") {
        event.cancel();
    } else if (name == "lcrdrfs.robo_dino") {
        event.cancel();
    } else if (name == "lcrdrfs.jet_pack_spider") {
        event.cancel();
    }

    return;
});
