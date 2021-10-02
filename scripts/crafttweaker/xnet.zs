#modloaded xnet
// xnet

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// quadruple recipe output for basic cables and connectors

recipes.removeByRecipeName("xnet:connector_0");
recipes.addShaped("xnet.connector_0", <xnet:connector>*4,
    [
        [<ore:dyeBlue>, <ore:chest>, <ore:dyeBlue>],
        [<minecraft:redstone>, <minecraft:gold_ingot>, <minecraft:redstone>],
        [<ore:dyeBlue>, <minecraft:redstone>, <ore:dyeBlue>]
    ]
);

recipes.removeByRecipeName("xnet:connector_upgrade");
recipes.addShaped("xnet.connector_upgrade", <xnet:connector_upgrade>*4,
    [
        [<minecraft:paper>, <minecraft:ender_pearl>],
        [<minecraft:diamond>, <minecraft:redstone>]
    ]
);


recipes.removeByRecipeName("xnet:advanced_connector_0");
recipes.addShaped("xnet.advanced_connector_0", <xnet:advanced_connector>*4,
    [
        [<xnet:connector>, <minecraft:ender_pearl>],
        [<minecraft:diamond>, <minecraft:redstone>]
    ]
);
