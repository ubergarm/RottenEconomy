#modloaded omlib
// OMLib

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// these items were missing textures in JEI
hide(<omlib:network_cable>);
hide(<omlib:fake_sword>);

// note for ompd walls and exchangers
<ompd:fence:*>.addTooltip("§4NOTE: §7Exchanging this block removes trusted player list.");
//<ompd:hardened:*>.addTooltip("§4NOTE: §7Using this block with exchangers does not keep trusted players.");
//<ompd:wall:*>.addTooltip("§4NOTE: §7Using this block with exchangers does not keep trusted players.");
