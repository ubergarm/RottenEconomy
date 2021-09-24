#modloaded techguns
// Tech Guns

import mods.jei.JEI.removeAndHide;

## it now has itemRubber and materialRubber just to be safe
<ore:materialRubber>.add(<techguns:itemshared:56>);

## get rid of blast furnace and make obsidian steel using mekanism only
## harder as it now takes some diamonds in the chain to get good guns
## regular steel and bronze can be made in other mods easily enough still
removeAndHide(<techguns:simplemachine:11>);

## give everything a nice shiny new long-ass name to make it more obvious
<techguns:itemshared:51>.displayName = "Hardened Obsidian Plate Steel";
<techguns:itemshared:84>.displayName = "Hardened Obsidian Steel Ingot";
<techguns:itemshared:101>.displayName = "Turret Armor (Hardened Obsidian Steel)";
<techguns:itemshared:135>.displayName = "Small Ore Drill (Hardened Obidian Steel)";
<techguns:itemshared:138>.displayName = "Medium Ore Drill (Hardened Obsidian Steel)";
<techguns:itemshared:141>.displayName = "Large Ore Drill (Hardened Obsidian Steel)";
<techguns:itemshared:35>.displayName = "Hardened Obsidian Steel Receiver";
<techguns:itemshared:39>.displayName = "Hardened Obsidian Steel Barrel";
<techguns:itemshared:58>.displayName = "Mechanical Parts (Hardened Obsidian Steel)";
<techguns:itemshared:102>.displayName = "Turret Armor (Carbon Fiber)";
<techguns:itemshared:36>.displayName = "Carbon Fiber Receiver";
<techguns:itemshared:40>.displayName = "Carbon Fiber Barrel";
<techguns:itemshared:44>.displayName = "Carbon Fiber Gun Stock";
<techguns:itemshared:59>.displayName = "Mechanical Parts (Carbon Fiber)";
<techguns:itemshared:122>.displayName = "Powerhammer Head (Carbon Fiber)";
<techguns:itemshared:124>.displayName = "Chainsaw Blades (Carbon Fiber)";
<techguns:ladder0:11>.displayName = "Ladder (Carbon Fiber)";

## random fixup of original mod copy paste typo error
<techguns:itemshared:137>.displayName = "Medium Ore Drill (Steel)";

## Chem Lab now only makes 1x Carbon Fibers per inputs (double original cost)
mods.techguns.ChemLab.removeRecipe(<techguns:itemshared:64>,null);
mods.techguns.ChemLab.addRecipe(
    <minecraft:diamond>,        // first input slot (auto oreDict)
    1,                          // quantity of first input
    <minecraft:blaze_powder>,   // second input slot (required even if 0) - filtered sand
    1,                          // quantity of second input (or 0 for null input)
    <liquid:lava>*1000,         // input liquid and qty
    true,                       // allow swap
    <techguns:itemshared:64>*1, // output slot and qty
    <liquid:toxic_waste>*100,   // output liquid and qty
    32                          // required RF/tick cost
);

## The "right thing" to do would be to move "Carbon Plate" to its own oreDict
#  and to to and update all recipes in tech guns that use it to avoid the namespace
#  issue that is coming up with cheap coal carbon plates from ic2 and tech reborn...
#  instead i just removed those guys namespaces and changed their small quantity of recipes
#  Sorry not sorry. LMAO xD
# <ore:plateCarbon>.remove(<techguns:itemshared:53>);
# <ore:plateCarbonFiber>.add(<techguns:itemshared:53>);
<techguns:itemshared:53>.displayName = "Carbon Fiber Plate";
<techguns:itemshared:120>.displayName = "Mining Drill (Carbon Fiber)";
<techguns:itemshared:136>.displayName = "Small Ore Drill (Carbon Fiber)";
<techguns:itemshared:139>.displayName = "Medium Ore Drill (Carbon Fiber)";
<techguns:itemshared:142>.displayName = "Large Ore Drill (Carbon Fiber)";

// Metal Press now only makes 1x Carbon Plate per 2x Carbon Fibers inputs (double original cost)
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:53>);
mods.techguns.MetalPress.addRecipe("fiberCarbon","fiberCarbon", <techguns:itemshared:53>, false);

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
        <mekanism:dust:2>,           // osmium dust full size
        <techreborn:smalldust:54>    // titanium dust small
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
        0.10
    ]
);
