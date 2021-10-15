#modloaded fartgen
// Fart Generator

<fartgen:generator>.addTooltip("§eNOTE: §7Connect a Mekanism Universal Cable or Thermal Fluxduct or Energy Cell to bottom side.");
<fartgen:generator>.addShiftTooltip("Goat or Pig: 1RF/t\nDeer or Cow: 2RF/t\nMooshroom or Blackbear: 3RF/t\nBrownbear or Reindeer: 4RF/t\nMoose: 5RF/t");

// update recipe to make it a little more interesting and themed for this modpack
recipes.removeByRecipeName("fartgen:fartgen");
recipes.addShaped("fartgen.fartgen", <fartgen:generator>,
    [
        [<minecraft:lead>, null, <betteranimalsplus:trillium> | <ore:listAllberry>],
        [<minecraft:glass_pane>, <minecraft:iron_bars>, null],
        [<minecraft:redstone_block>, <minecraft:heavy_weighted_pressure_plate>, <minecraft:hay_block>]
    ]
);
