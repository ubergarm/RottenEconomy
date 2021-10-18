#modloaded reccomplex
// Recurrent Complex

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// remove and hide all these builders items and loot jawns
// jei blacklist all the ones that this cannot take care of
for item in loadedMods["reccomplex"].items {
    removeAndHide(item);
}

