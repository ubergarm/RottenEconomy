// Vanilla

// update vanilla furnace with oredict recipe for nether brick
furnace.remove(<minecraft:netherbrick>);
furnace.addRecipe(<minecraft:netherbrick>, <ore:netherrack>, 0.1);

// fixup this confusing default "Uncraftable Potion" name for recipes that accpy any potion w/o NBT
game.setLocalization("potion.effect.empty", "Any Regular Potion");
game.setLocalization("splash_potion.effect.empty", "Any Splash Potion");
game.setLocalization("lingering_potion.effect.empty", "Any Lingering Potion");

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
