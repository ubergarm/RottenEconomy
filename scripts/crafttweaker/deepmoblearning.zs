#modloaded deepmoblearning
// Deep Mob Learning keeps it Funky

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// take over a few data models and pristine matters for mobs specific to this modpack
// make sure to have the matching deepmoblearning.cfg so the drops all line up correctly
<deepmoblearning:pristine_matter_zombie>.displayName = "Pristine Rotten Matter";
<deepmoblearning:pristine_matter_ghast>.displayName = "Pristine Gritty Matter";
<deepmoblearning:pristine_matter_blaze>.displayName = "Pristine Irradiated Matter"; // add into nuclearcraft.cfg for rads
<deepmoblearning:pristine_matter_enderman>.displayName = "Pristine Jumpy Matter";
<deepmoblearning:pristine_matter_shulker>.displayName = "Pristine Assimilated Matter";

// make sure to have the updated textures in the resources directory to line up correctly
<deepmoblearning:data_model_ghast>.displayName = "§bHusk Data Model";
<deepmoblearning:data_model_ghast>.addTooltip("§eNOTE: §7please ignore that it shows a ghast in the deep learner!");
<deepmoblearning:data_model_blaze>.displayName = "§bToxic Ghoul Data Model";
<deepmoblearning:data_model_blaze>.addTooltip("§eNOTE: §7please ignore that it shows a blaze in the deep learner!");
<deepmoblearning:data_model_shulker>.displayName = "§bAssimilated Parasite Data Model";
<deepmoblearning:data_model_shulker>.addTooltip("§eNOTE: §7please ignore that it shows a shulker in the deep learner!");

// fixup adjusted data model recipes
recipes.removeByRecipeName("deepmoblearning:data_model/data_model_enderman");
recipes.addShapeless("deepmoblearning.data_model/data_model_enderman", <deepmoblearning:data_model_enderman>,
    [<deepmoblearning:data_model_blank>, <contenttweaker:jumpy_flesh>]
);

recipes.removeByRecipeName("deepmoblearning:data_model/data_model_ghast");
recipes.addShapeless("deepmoblearning.data_model/data_model_husk", <deepmoblearning:data_model_ghast>,
    [<deepmoblearning:data_model_blank>, <contenttweaker:gritty_flesh>]
);

recipes.removeByRecipeName("deepmoblearning:data_model/data_model_blaze");
recipes.addShapeless("deepmoblearning.data_model/data_model_ghoul", <deepmoblearning:data_model_blaze>,
    [<deepmoblearning:data_model_blank>, <qmd:flesh>]
);

recipes.removeByRecipeName("deepmoblearning:data_model/data_model_shulker");
recipes.addShapeless("deepmoblearning.data_model/data_model_parasite", <deepmoblearning:data_model_shulker>,
    [<deepmoblearning:data_model_blank>, <srparasites:assimilated_flesh>]
);

// remove the netherstar from extaterrestrial recipe it seem a bit OP in this modpack
recipes.removeByRecipeName("deepmoblearning:living_matter_exchange/transmutes2_extraterrestrial/recipe3_nether_star");

// increase recipe cost a bit for the polymer clay required for training models
recipes.removeByRecipeName("deepmoblearning:simulation_chamber/inputs/recipe1_polymer_clay");
recipes.addShaped("deepmoblearning.simulation_chamber/inputs/recipe1_polymer_clay", <deepmoblearning:polymer_clay> * 16,
    [
        [<minecraft:clay_ball>, <ore:dustNetherrack>, <minecraft:clay_ball>],
        [<ore:dustGold>, <ore:gemLapis>, <ore:dustQuartz>],
        [<minecraft:clay_ball>, <ore:dustObsidian>, <minecraft:clay_ball>]
    ]
);
