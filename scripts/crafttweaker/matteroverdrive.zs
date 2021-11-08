#modloaded matteroverdrive
// Matter Overdrive Mod

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

import crafttweaker.item.IItemStack;
import crafttweaker.container.IContainer;
import crafttweaker.server.IServer;
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockPattern;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockStateMatcher;
import crafttweaker.block.IBlockProperties;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.command.ICommandSender;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerOpenContainerEvent;
import crafttweaker.data.IData;
import crafttweaker.util.Position3f;

// Fixup some display names using tooltips as localization is null
game.setLocalization("tile.null.name", "Ambigious Liquid");
<matteroverdrive:molten_tritanium>.addTooltip("Molten Tritanium");
<matteroverdrive:matter_plasma>.addTooltip("Matter Plasma");

// Fixup Ore Dict
<ore:plateTritanium>.add(<matteroverdrive:tritanium_plate>);

// Add a recipe for the nice Industrial Glass
recipes.addShaped("matteroverdrive.industrial_glass", <matteroverdrive:industrial_glass>*6,
    [
        [null, null, null],
        [<sonarcore:stableglass>, <sonarcore:stableglass>, <sonarcore:stableglass>],
        [<matteroverdrive:decorative.tritanium_plate_stripe>, <matteroverdrive:decorative.tritanium_plate_stripe>, <matteroverdrive:decorative.tritanium_plate_stripe>],
    ]
);

// set hardness and blast resistance for some nice griefing resistant blocks
<matteroverdrive:decorative.clean:*>.asBlock().definition.hardness = 3.0;
<matteroverdrive:decorative.clean:*>.asBlock().definition.resistance = 25.0;
<matteroverdrive:decorative.tritanium_plate:*>.asBlock().definition.hardness = 3.0;
<matteroverdrive:decorative.tritanium_plate:*>.asBlock().definition.resistance = 25.0;
<matteroverdrive:decorative.tritanium_plate_stripe:*>.asBlock().definition.hardness = 3.0;
<matteroverdrive:decorative.tritanium_plate_stripe:*>.asBlock().definition.resistance = 25.0;
<matteroverdrive:decorative.carbon_fiber_plate:*>.asBlock().definition.hardness = 3.0;
<matteroverdrive:decorative.carbon_fiber_plate:*>.asBlock().definition.resistance = 25.0;
<matteroverdrive:decorative.white_plate:*>.asBlock().definition.hardness = 3.0;
<matteroverdrive:decorative.white_plate:*>.asBlock().definition.resistance = 25.0;
<matteroverdrive:decorative.tritanium_plate_colored:*>.asBlock().definition.hardness = 3.0;
<matteroverdrive:decorative.tritanium_plate_colored:*>.asBlock().definition.resistance = 25.0;
<matteroverdrive:industrial_glass:*>.asBlock().definition.hardness = 3.0;
<matteroverdrive:industrial_glass:*>.asBlock().definition.resistance = 25.0;

// set all tritanium crates to be pretty tough and rather blast proof
var tritaniumCrates = [
    <matteroverdrive:tritanium_crate_purple>,
    <matteroverdrive:tritanium_crate_white>,
    <matteroverdrive:tritanium_crate_red>,
    <matteroverdrive:tritanium_crate_orange>,
    <matteroverdrive:tritanium_crate_magenta>,
    <matteroverdrive:tritanium_crate_cyan>,
    <matteroverdrive:tritanium_crate>,
    <matteroverdrive:tritanium_crate_brown>,
    <matteroverdrive:tritanium_crate_yellow>,
    <matteroverdrive:tritanium_crate_gray>,
    <matteroverdrive:tritanium_crate_blue>,
    <matteroverdrive:tritanium_crate_lime>,
    <matteroverdrive:tritanium_crate_green>,
    <matteroverdrive:tritanium_crate_light_blue>,
    <matteroverdrive:tritanium_crate_black>,
    <matteroverdrive:tritanium_crate_silver>,
    <matteroverdrive:tritanium_crate_pink>
] as IItemStack[];

for tritaniumCrate in tritaniumCrates {
    tritaniumCrate.asBlock().definition.hardness = 3.0;
    tritaniumCrate.asBlock().definition.resistance = 100.0;
}

recipes.addShaped("matteroverdrive.dense_pattern_drive",
    <matteroverdrive:pattern_drive>.withTag({Capacity:8 as short,display:{Name:"§l§bDense §ePattern Drive"}}),
    [
        [null, <ore:enderpearl>, null],
        [<ore:blockRedstone>, <matteroverdrive:machine_casing>, <ore:blockRedstone>],
        [null, <matteroverdrive:isolinear_circuit:3>, null]
    ]
);
