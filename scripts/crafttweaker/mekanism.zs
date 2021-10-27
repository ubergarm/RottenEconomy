#modloaded mekanism
// Mekanism

## Add Metallurgic Infuser recipe for Tech Guns "Obsidian Steel" ingot
mods.mekanism.infuser.addRecipe("OBSIDIAN", 10, <ore:ingotSteel>, <techguns:itemshared:84>);

## Add Crusher recipe for Netherrack Dust
mods.mekanism.crusher.addRecipe(<ore:netherrack>, <ic2:dust:30>);

## Add Enrichment Chamber recipe to upgrade scaling health heart dust into heart crystal shards
//mods.mekanism.enrichment.addRecipe(IIngredient inputStack, IItemStack outputStack);
mods.mekanism.enrichment.addRecipe(<scalinghealth:heartdust>*3, <scalinghealth:crystalshard>);
