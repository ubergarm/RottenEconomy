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

// Pulverizer Recipes
// mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
//mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:diamond>, <minecraft:stick>, 1500, <minecraft:stone>, 20);
mods.thermalexpansion.Pulverizer.addRecipe(
    <contenttweaker:jumpy_flesh>,
    <srparasites:assimilated_flesh>,
    2000,
    <contenttweaker:jumpy_flesh>,
    20
);

mods.thermalexpansion.Pulverizer.addRecipe(
    <srparasites:assimilated_flesh>*8,
    <nocubessrpaddon:evolutioncore>,
    4000,
    <srparasites:assimilated_flesh>*2,
    50
);

mods.thermalexpansion.Pulverizer.addRecipe(
    <srparasites:assimilated_flesh>*4,
    <nocubessrpaddon:adaptivecore>,
    3000,
    <srparasites:assimilated_flesh>,
    50
);

// Arcane Ensorcellator (a.k.a Enchanter)
//mods.thermalexpansion.Enchanter.addRecipe(IItemStack output, IItemStack input, IItemStack secondInput, int energy, int experience, boolean empowered);

