#modloaded advancedrocketry
// Advanced Rocketry

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

import crafttweaker.world.IWorld;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingAttackedEvent;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.damage.IDamageSource;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.data.IData;

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

// add event to prevent space Vacuum damage to android mobs and players
events.onEntityLivingAttacked(function(event as crafttweaker.event.EntityLivingAttackedEvent) {
    if isNull(event) { return; }

    if isNull(event.entity) { return; }
    var entity = event.entity as IEntity;

    if isNull(entity.world) { return; }
    var world = entity.world as IWorld;
    if (world.isRemote()) { return; }

    if isNull(event.entityLivingBase) { return; }
    var elb = event.entityLivingBase as IEntityLivingBase;

    if isNull(event.damageSource) { return; }
    var damageSource = event.damageSource as IDamageSource;

    if isNull(damageSource.damageType) { return; }
    var damageType = damageSource.damageType as string;

    // TODO only checking for space vacuum damage right now
    // could add another case for "fatal_rads" to customize more
    // server.commandManager.executeCommand(server, "say entity hit by damage type: "+damageType);
    if (damageType != "Vacuum") { return; }

    // handle player entities taking damage by checking player nbt data
    // check if they are 1. an android and 2. have respirocytes ability unlocked
    // TODO: could possibly check Tech Guns special slots for oxygen tank etc?
    if isNull(elb.nbt) { return; }
    var nbt = elb.nbt as IData;
    // server.commandManager.executeCommand(server, "say player data:"+nbt.asString());

    if isNull(nbt.ForgeCaps) { return; }
    var forgeCaps = nbt.ForgeCaps;

    if isNull(forgeCaps.memberGet("matteroverdrive: legacy edition:moplayer")) { return; }
    var moCaps = forgeCaps.memberGet("matteroverdrive: legacy edition:moplayer") as IData;

    if isNull(moCaps.Android) { return; }
    var android = moCaps.Android;

    if isNull(android.AndroidPlayer) { return; }
    var androidPlayer = android.AndroidPlayer;

    if isNull(androidPlayer.isAndroid) { return; }
    var isAndroid = androidPlayer.isAndroid;

    if (isAndroid == 0) { return; }
    // server.commandManager.executeCommand(server, "say player is an android");

    if isNull(androidPlayer.S) { return; }
    var s = androidPlayer.S;

    if isNull(s.oxygen) { return; }
    var oxygen = s.oxygen;

    if (oxygen == 0) { return; }
    // server.commandManager.executeCommand(server, "say player has respirocytes");
    event.cancel();

    // this hack is probably best one can do without modifying Advanced Rocketry or making an actual compat mod.
    // there is no easy way to simulate having 4x items for AtmosphereNeedsSuit.isImmune(EntityLivingBase player)...
    // Advanced Rocketry gives ~3 potion effects right after attacking with Vacuum damage every 10 ticks:
    // Slowness V, Mining Fatigue V, and Nausea II
    // but because "However, it is not possible to apply the same effect
    //              multiple times, even if they are of different levels (e.g. Strength
    //              and Strength II). When applying an effect already active on the
    //              player, higher levels overwrite lower levels, and higher durations
    //              overwrite lower durations of the same level."
    // the approach here is to give "worse" effects with duration 0 right before so Advanced Rocketry effects will fail
    // also set `B:disable_android_fov=false` MatterOverdrive.cfg file or the screen will keep zooming in and out
    // pot.makePotionEffect(int duration, int amplifier, boolean ambientEffect, boolean particlesShown);
    elb.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(0, 2, false, false));
    elb.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(0, 5, false, false));
    elb.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(0, 5, false, false));

    // unfortunately it still says "Warning: Atmosphere lacks oxygen!" constantly... unsure how to fix that hrm...

    return;
});
