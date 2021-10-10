#modloaded nuclearcraft
// Nuclearcraft: Overhauled

import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;

## Remove Alloy Furnace Recipe for Obsidian Steel Ingots
mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<techguns:itemshared:84>);

## might as well put it on pizza too
<ore:listAllmushroom>.add(<nuclearcraft:glowing_mushroom>);
<ore:mushroomAny>.add(<nuclearcraft:glowing_mushroom>);

// rename the feral ghoul something more radiation-ish
game.setLocalization("entity.nuclearcraft.feral_ghoul.name","Toxic Ghoul");

// Manufactory
// mods.nuclearcraft.Manufactory.addRecipe(IIngredient itemInput, IIngredient itemOutput, {double timeMultiplier, double powerMultiplier, double processRadiation});
// Alchemistry Mineral Salt to Regular Salt
mods.nuclearcraft.Manufactory.addRecipe(
    <alchemistry:mineral_salt>,
    <mekanism:salt>
);

// Galena Ore Doubling to Lead
mods.nuclearcraft.Manufactory.addRecipe(
    <ore:oreGalena>,
    <thermalfoundation:material:67>*2
);

// SRParasites assimilated flesh to jumpy flesh
mods.nuclearcraft.Manufactory.addRecipe(
    <srparasites:assimilated_flesh>,
    <contenttweaker:jumpy_flesh>
);

// SRParasites flesh to rotten netherrack
mods.nuclearcraft.Manufactory.addRecipe(
    <srparasites:parasitestain:2>,
    <contenttweaker:rotten_netherrack>
);

// make consistent hazmat suit names with techguns and ic2
<nuclearcraft:helm_hazmat>.displayName = "Shielded Hazmat Helmet";
<nuclearcraft:chest_hazmat>.displayName = "Shielded Hazmat Suit";
<nuclearcraft:legs_hazmat>.displayName = "Shielded Hazmat Leggings";
<nuclearcraft:boots_hazmat>.displayName = "Shielded Hazmat Boots";

// give the techguns rad resistance potion effect for duration of a dose of rad-x
// the techguns effect does nothing but it makes it clear to the player something is working
events.onEntityLivingUseItemFinish(function(event as crafttweaker.event.EntityLivingUseItemEvent.Finish) {

    if isNull(event) { return; }
    if isNull(event.player) { return; }
    if !event.isPlayer { return; }
    if isNull(event.item) { return; }

    var player = event.player;
    if isNull(player.world) { return; }
    var world = player.world;
    if(world.isRemote()) { return; }

    var item = event.item as IItemStack;

    if (<nuclearcraft:rad_x>.matches(item)) {
        // effect <player> <effect> [seconds] [amplifier] [hideParticles]
        // seconds default is 30
        // amplifier default is 0
        // hideParticles default is false
        server.commandManager.executeCommand(server, "effect " + player.name + " techguns:radresistance 600 0 true");
    }
});
