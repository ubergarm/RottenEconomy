#modloaded storagenetwork
// Simple Storage Network

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// update tooltip to reflect config change
// <storagenetwork:remote>.clearTooltip();
<storagenetwork:remote>.removeTooltip(".*64 blocks distance");
<storagenetwork:remote>.addTooltip("Used to access the network within 32 blocks range.");

// remove and hide all content beyond bare minimum for simple inventory system
// the player is to progress to refined storage for unlimited range etc
removeAndHide(<storagenetwork:inventory>);
removeAndHide(<storagenetwork:controller>);
removeAndHide(<storagenetwork:process_kabel>);
removeAndHide(<storagenetwork:remote:3>);
removeAndHide(<storagenetwork:remote:2>);
removeAndHide(<storagenetwork:remote:1>);
removeAndHide(<storagenetwork:picker_remote>);
removeAndHide(<storagenetwork:collector_remote>);
