#modloaded techguns
// Tech Guns

// it now has itemRubber and materialRubber just to be safe
<ore:materialRubber>.add(<techguns:itemshared:56>);

// chem lab recipe to change rockhounding_chemistry toxic slime ball to vanilla slime ball
mods.techguns.ChemLab.addRecipe(
    <rockhounding_chemistry:mob_items>,  // first input slot (auto oreDict)
    1,                                   // quantity of first input
    <rockhounding_chemistry:mob_items>,  // second input slot (required even if 0) - filtered sand
    0,                               // quantity of second input (or 0 for null input)
    <liquid:water>*1000,             // input liquid and qty
    false,                           // allow swap
    <minecraft:slime_ball>*1,        // output slot and qty
    <liquid:toxic_waste>*500,        // output liquid and qty
    32                               // required RF/tick cost
);

// grinder to get gunpowder back out of old stone bullets
mods.techguns.Grinder.addRecipe(
    <techguns:itemshared>,        // input item
    [
        <minecraft:cobblestone>,  // array of output items
        <minecraft:gunpowder>
    ],
    [
        0.1875,                   // chance of output
        0.0625
    ]
);
