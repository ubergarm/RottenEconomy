#modloaded ic2
// Industrial Craft 2

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// these items were missing textures in JEI
hide(<ic2:booze_mug>);

// this item is too cheap, replace it with tech guns carbon fiber plate
<ore:plateCarbon>.remove(<ic2:crafting:15>);

// fixup display names for the rubber hazmat suit
game.setLocalization("ic2.hazmat_helmet", "Rubber Hazmat Helmet");
game.setLocalization("ic2.hazmat_chestplate", "Rubber Hazmat Suit");
game.setLocalization("ic2.hazmat_leggings", "Rubber Hazmat Leggings");
game.setLocalization("ic2.rubber_boots", "Rubber Hazmat Boots");
<ic2:hazmat_helmet>.addTooltip("§4NOTE: §7This full suit works for *both* IC2 and NuclearCraft radiation!");
<ic2:hazmat_chestplate>.addTooltip("§4NOTE: §7This full suit works for *both* IC2 and NuclearCraft radiation!");
<ic2:hazmat_leggings>.addTooltip("§4NOTE: §7This full suit works for *both* IC2 and NuclearCraft radiation!");
<ic2:rubber_boots>.addTooltip("§4NOTE: §7This full suit works for *both* IC2 and NuclearCraft radiation!");
<ic2:quantum_helmet>.addTooltip("§4NOTE: §7This full suit works for *both* IC2 and NuclearCraft radiation!");
<ic2:quantum_chestplate>.addTooltip("§4NOTE: §7This full suit works for *both* IC2 and NuclearCraft radiation!");
<ic2:quantum_leggings>.addTooltip("§4NOTE: §7This full suit works for *both* IC2 and NuclearCraft radiation!");
<ic2:quantum_boots>.addTooltip("§4NOTE: §7This full suit works for *both* IC2 and NuclearCraft radiation!");

// fixup its recipes to use oredict instead of specific item
// nano suit and stuff
recipes.removeByRecipeName("ic2:124");
recipes.addShaped("ic2.124", <ic2:nano_boots>.withTag({}),
    [
        [null, null, null],
        [<ore:plateCarbon>, null, <ore:plateCarbon>],
        [<ore:plateCarbon>, <ore:energyCrystal>, <ore:plateCarbon>]
    ]
);
recipes.removeByRecipeName("ic2:125");
recipes.addShaped("ic2.125", <ic2:nano_chestplate>.withTag({}),
    [
        [<ore:plateCarbon>, null, <ore:plateCarbon>],
        [<ore:plateCarbon>, <ore:energyCrystal>, <ore:plateCarbon>],
        [<ore:plateCarbon>, <ore:plateCarbon>, <ore:plateCarbon>]
    ]
);
recipes.removeByRecipeName("ic2:126");
recipes.addShaped("ic2.126", <ic2:nano_helmet>.withTag({}),
    [
        [<ore:plateCarbon>, <ore:energyCrystal>, <ore:plateCarbon>],
        [<ore:plateCarbon>, <ic2:nightvision_goggles>, <ore:plateCarbon>],
        [null, null, null],
    ]
);
recipes.removeByRecipeName("ic2:127");
recipes.addShaped("ic2.127", <ic2:nano_leggings>.withTag({}),
    [
        [<ore:plateCarbon>, <ore:energyCrystal>, <ore:plateCarbon>],
        [<ore:plateCarbon>, null, <ore:plateCarbon>],
        [<ore:plateCarbon>, null, <ore:plateCarbon>]
    ]
);
