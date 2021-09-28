#modloaded pocketnether
// Pocket Nether Link

## Reduce uses from 512 down to 64 only if going with
## cobblestone -> netherrack -> rotten netherrack -> rotten flesh
## <pocketnether:nether_link>.maxDamage = 64;

## Increase crafting difficulty a bit
## mushrooms can be found growing in buildings
recipes.removeByRecipeName("pocketnether:nether_link");
recipes.addShaped("pocketnether.nether_link", <pocketnether:nether_link>,
    [
        [<ore:mushroomAny>, <minecraft:obsidian>, <ore:mushroomAny>],
        [<minecraft:obsidian>, <minecraft:flint_and_steel:*>, <minecraft:obsidian>],
        [<ore:mushroomAny>, <minecraft:obsidian>, <ore:mushroomAny>]
    ]
);
