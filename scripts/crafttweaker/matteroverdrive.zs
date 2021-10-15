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
