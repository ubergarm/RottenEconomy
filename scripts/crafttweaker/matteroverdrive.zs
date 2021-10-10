#modloaded matteroverdrive
// Matter Overdrive Mod

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// these items were missing textures in JEI
hide(<matteroverdrive:matter>);
hide(<matteroverdrive:matter:1>);
hide(<matteroverdrive:matter:2>);
hide(<matteroverdrive:weapon_module_holo_sights>);
hide(<matteroverdrive:quantum_fold_manipulator>);
hide(<matteroverdrive:android_spawner>);
hide(<matteroverdrive:matter_plasma>);

// Fixup some display names
<matteroverdrive:molten_tritanium>.displayName = "Molten Tritanium";

// Fixup Ore Dict
<ore:plateTritanium>.add(<matteroverdrive:tritanium_plate>);
