#modloaded nuclearcraft
// Nuclearcraft: Overhauled

## Remove Alloy Furnace Recipe for Obsidian Steel Ingots
mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(<techguns:itemshared:84>);

## might as well put it on pizza too
<ore:listAllmushroom>.add(<nuclearcraft:glowing_mushroom>);
<ore:mushroomAny>.add(<nuclearcraft:glowing_mushroom>);

// Manufactory
// mods.nuclearcraft.Manufactory.addRecipe(IIngredient itemInput, IIngredient itemOutput, {double timeMultiplier, double powerMultiplier, double processRadiation});
// Alchemistry Mineral Salt to Regular Salt
mods.nuclearcraft.Manufactory.addRecipe(
    <alchemistry:mineral_salt>,
    <mekanism:salt>
);
// Galena Ore Doubling to Lead
mods.nuclearcraft.Manufactory.addRecipe(
    <ore:oreGalena>,
    <thermalfoundation:material:67>*2
);
