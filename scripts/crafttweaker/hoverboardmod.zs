#modloaded hoverboardmod
// Arkif's Hoverboard Mod

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// add a recipe using tech guns carbon fiber plates too
recipes.addShaped("hoverboardmod.recipe_builder_2", <hoverboardmod:builder>,
    [
        [<ore:plateCarbon>, <minecraft:crafting_table:*>, <ore:plateCarbon>],
        [<ore:gearIron>, <hoverboardmod:power_module:*>, <hoverboardmod:battery:*>],
        [<ore:plateCarbon>, <minecraft:crafting_table:*>, <ore:plateCarbon>]
    ]
);
