#modloaded capsule
// Capsule

## this mod seems like it could break the server easily so nerf as much as possible
## is it possible to *only* allow the one time use kind? apparently not.. might remove this.. lol
## I tested backup capsule is properly linked so you cannot DUPE your entire inventory LMAO!

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

## too much work to configure some "over powered" capsule so only give one kind
recipes.removeByRecipeName("capsule:capsule_op");
removeAndHide(<capsule:capsule>.withTag({color: 16777215, size: 1, overpowered: 1}));
