#modloaded wizardry
// Wizardry Mod (not electroblob, but the other one)

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// Set this to false if you want to see these items in JEI
var hideItems = false as bool;
if(hideItems) {
  // Creative Items
  removeAndHide(<wizardry:creative_mana_battery>);
  removeAndHide(<wizardry:halo_creative>);
  removeAndHide(<wizardry:magic_wand>);
}

// these items were missing textures in JEI
hide(<wizardry:altar_sacrament>);
hide(<wizardry:altar_confession>);
hide(<wizardry:underworld_portal>);
hide(<wizardry:fairy_item>);
