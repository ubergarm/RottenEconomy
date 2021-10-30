#modloaded thermalexpansion
// Thermal Expansion

import mods.thermalexpansion.Imbuer;
import mods.thermalexpansion.Enchanter;

// mods.thermalexpansion.Imbuer.addRecipe(ILiquidStack output, IItemStack input, ILiquidStack inputFluid, int energy);
// this does not work, not sure how to get a liquid handler for a potion nbt?
// mundane potion + egg = geneticsreborn:substrate potion
// mods.thermalexpansion.Imbuer.addRecipe(
//     <liquid:potion>.withTag({Potion: "minecraft:mundane"})*500,
//     <minecraft:egg>,
//     <liquid:potion>.withTag({Potion: "geneticsreborn:substrate"}*500),
//     4800
// );

// this example works fine
// mods.thermalexpansion.Imbuer.addRecipe(
//     <liquid:lava>*500,
//     <minecraft:egg>,
//     <liquid:water>*500,
//     4800
// );

// Arcane Ensorcellator (a.k.a Enchanter)
//mods.thermalexpansion.Enchanter.addRecipe(IItemStack output, IItemStack input, IItemStack secondInput, int energy, int experience, boolean empowered);
