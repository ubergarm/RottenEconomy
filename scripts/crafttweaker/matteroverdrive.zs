#modloaded matteroverdrive
// Matter Overdrive Mod

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

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
