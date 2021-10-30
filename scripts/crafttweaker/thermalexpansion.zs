#modloaded thermalexpansion
// Thermal Expansion

import mods.thermalexpansion.Imbuer;
import mods.thermalexpansion.Enchanter;

// mods.thermalexpansion.Imbuer.addRecipe(ILiquidStack output, IItemStack input, ILiquidStack inputFluid, int energy);
// mundane potion + egg = geneticsreborn:substrate potion
mods.thermalexpansion.Imbuer.addRecipe(
    <liquid:potion>.withTag({Potion: "geneticsreborn:substrate"})*500,
    <minecraft:egg>,
    <liquid:potion>.withTag({Potion: "minecraft:mundane"})*500,
    4800
);

// Arcane Ensorcellator (a.k.a Enchanter)
//mods.thermalexpansion.Enchanter.addRecipe(IItemStack output, IItemStack input, IItemStack secondInput, int energy, int experience, boolean empowered);
