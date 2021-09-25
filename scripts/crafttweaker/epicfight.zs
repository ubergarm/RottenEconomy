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
        [null, <ore:ingotSteel>, <ore:ingotSteel>],
        [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
        [<spartanweaponry:material>, <ore:ingotSteel>, null]
    ]
);
<epicfight:greatsword>.displayName = "Heavy Steel Greatsword";
