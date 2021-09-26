#modloaded air_support
// Air Support

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// remove the un-configurable junk medical crate
removeAndHide(<air_support:medical_crate>);
removeAndHide(<air_support:medical_crate_drop_remote>);

// remove the circuit board as it is loot prize only now
recipes.removeByRecipeName("air_support:recipe_circuit_board");
<air_support:circuit_board>.addTooltip(format.gold("Lucky find in urban loot chests!"));
