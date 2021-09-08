#modloaded storagedrawers
// Storage Drawers

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// Set this to false if you want to see these items in JEI
var hideItems = true as bool;
if(hideItems) {
  // Creative Items
  removeAndHide(<storagedrawers:upgrade_creative>);
  removeAndHide(<storagedrawers:upgrade_creative:1>);
}
