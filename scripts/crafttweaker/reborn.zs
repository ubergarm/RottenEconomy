#modloaded techreborn
// Tech Reborn

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// dirty hack to allow tech guns carbon fiber plate to steal this oredict
<ore:plateCarbon>.remove(<techreborn:plates:2>);

// fixup its advanced recipe to use it specifically instead of ore dict
recipes.removeByRecipeName("techreborn:machine_frame_1");
recipes.addShaped("techreborn.machine_frame_1", <techreborn:machine_frame:1>,
    [
        [null, <techreborn:plates:2>, null],
        [<ore:plateAdvancedAlloy>, <ore:machineBlockBasic>, <ore:plateAdvancedAlloy>],
        [null, <techreborn:plates:2>, null]
    ]
);

## add galena to lead ore dict for more compatibility
<ore:oreLead>.add(<techreborn:ore:0>);

## random note to help users
<techreborn:irondrill>.addShiftTooltip("Activate with <sneak>+<right click> to harvest 3x3 area.");
<techreborn:diamonddrill>.addShiftTooltip("Activate with <sneak>+<right click> to harvest 3x3 area.");
<techreborn:advanceddrill>.addShiftTooltip("Activate with <sneak>+<right click> to harvest 3x3 area.");

