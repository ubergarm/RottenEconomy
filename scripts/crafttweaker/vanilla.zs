// Vanilla

// update vanilla furnace with oredict recipe for nether brick
furnace.remove(<minecraft:netherbrick>);
furnace.addRecipe(<minecraft:netherbrick>, <ore:netherrack>, 0.1);

// Add recipe for name tag and a warning note about despawning passive mobs
<minecraft:name_tag>.addTooltip("§4WARNING: §7Passive mobs despawn so name your pets!");
recipes.addShapeless("rotten_economy.name_tag", <minecraft:name_tag>,
    [
        <pickletweaks:hammer>,
        <ore:nuggetGold>,
        <ore:paper>,
        <ore:string>
    ]
);
