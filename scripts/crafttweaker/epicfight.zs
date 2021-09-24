#modloaded epicfight
// Epic Fight

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// cool item but not to be seen in the JEI
hide(<epicfight:katana_sheath>);

// up difficulty for greatsword
recipes.removeByRecipeName("epicfight:greatsword");
recipes.addShaped("epicfight.greatsword", <epicfight:greatsword>,
    [
        [null, <ore:ingotObsidianSteel>, <ore:ingotObsidianSteel>],
        [<ore:ingotObsidianSteel>, <ore:ingotObsidianSteel>, <ore:ingotObsidianSteel>],
        [<spartanweaponry:material>, <ore:ingotObsidianSteel>, null]
    ]
);
<epicfight:greatsword>.displayName = "Hardened Obsidian Steel Greatsword";
