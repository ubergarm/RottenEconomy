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


## grind all that cyberware junk after it has been decomposed at the engineering table
mods.techguns.Grinder.addRecipe(
    <cyberware:component:*>,
    [
        <techreborn:smalldust:61>*4, // redstone
        <techreborn:smalldust:27>*8, // iron
        <techreborn:smalldust:14>*4, // copper
        <techreborn:smalldust:29>*4, // lead
        <techreborn:smalldust:53>*4, // tin
        <techreborn:smalldust:34>*2, // nickel
        <techreborn:smalldust:24>,   // gold
        <mekanism:dust:2>,           // big osmium dust
        <mekores:mekanismore:86>     // titanium shard

    ],
    [
        0.75,
        0.75,
        0.50,
        0.50,
        0.50,
        0.50,
        0.25,
        0.25,
        0.001
    ]
);


