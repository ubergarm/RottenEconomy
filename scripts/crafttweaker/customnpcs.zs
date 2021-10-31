#modloaded customnpcs
// Noppes Custom NPCs

import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;

// remove and hide all items from JEI for now
for item in loadedMods["customnpcs"].items {
    removeAndHide(item);
}
