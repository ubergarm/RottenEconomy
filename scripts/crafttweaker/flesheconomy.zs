#modloaded alchemistry rockhounding_chemistry
// Flesh Economy Scratch-Offs

// Tier 1 Scratch-Offs
// Alchemistry Dissolver
// Rotten Flesh
mods.alchemistry.Dissolver.removeRecipe(<minecraft:rotten_flesh:0>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:rotten_flesh:0>, true, 2,
    [
        [ 50.0, <minecraft:gravel>],        // gravel
        [ 10.0, <pickletweaks:coal_piece>], // coal
        [ 20.0, <techreborn:smalldust:61>], // redstone
        [ 20.0, <techreborn:smalldust:27>], // iron
        [ 15.0, <techreborn:smalldust:14>], // copper
        [ 15.0, <techreborn:smalldust:29>], // lead
        [ 15.0, <techreborn:smalldust:53>], // tin
        [ 10.0, <techreborn:smalldust:34>], // nickel
        [  5.0, <techreborn:smalldust:24>], // gold
        [ 10.0, <minecraft:string>]         // string
    ]
);

// Irradiated Rotten Flesh
<qmd:flesh>.displayName = "Irradiated Rotten Flesh";
mods.alchemistry.Dissolver.addRecipe(<qmd:flesh:0>, true, 3,
    [
        [ 50.0, <minecraft:gravel>],        // gravel
        [ 10.0, <pickletweaks:coal_piece>], // coal
        [ 20.0, <techreborn:smalldust:61>], // redstone
        [ 20.0, <techreborn:smalldust:27>], // iron
        [ 15.0, <techreborn:smalldust:14>], // copper
        [ 15.0, <techreborn:smalldust:29>], // lead
        [ 15.0, <techreborn:smalldust:53>], // tin
        [ 10.0, <techreborn:smalldust:34>], // nickel
        [  5.0, <techreborn:smalldust:24>], // gold
        [ 10.0, <minecraft:string>]         // string
    ]
);

// Crispy Rotten Flesh
<xlfoodmod:flesh>.displayName = "Crispy Rotten Flesh";
mods.alchemistry.Dissolver.addRecipe(<xlfoodmod:flesh:0>, true, 1,
    [
        [ 50.0, <minecraft:gravel>],        // gravel
        [ 10.0, <pickletweaks:coal_piece>], // coal
        [ 20.0, <techreborn:smalldust:61>], // redstone
        [ 20.0, <techreborn:smalldust:27>], // iron
        [ 15.0, <techreborn:smalldust:14>], // copper
        [ 15.0, <techreborn:smalldust:29>], // lead
        [ 15.0, <techreborn:smalldust:53>], // tin
        [ 10.0, <techreborn:smalldust:34>], // nickel
        [  5.0, <techreborn:smalldust:24>], // gold
        [ 10.0, <minecraft:string>]         // string
    ]
);



// Gritty Flesh
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:gritty_flesh:0>, true, 1,
    [
        [ 50.0, <minecraft:sand>],                              // sand
        [ 20.0, <rockhounding_chemistry:uninspected_mineral>],  // uninspected mineral
        [ 40.0, <techreborn:smalldust:44>],                     // saltpeter
        [ 20.0, <nuclearcraft:gem_dust:2>],                     // cruhed (nether) quartz
        [ 15.0, <ic2:crafting:23>],                             // scrap
        [  8.0, <mekanism:shard:2>],                            // osmium shard
        [  8.0, <mekanism:shard:5>],                            // silver shard
        [  8.0, <mekores:mekanismore:31>],                      // aluminum shard
        [  2.0, <mekores:mekanismore:1>],                       // uranium shard
        [  0.5, <mekores:mekanismore:16>]                       // platinum shard
    ]
);

// Jumpy Flesh
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:jumpy_flesh:0>, true, 1,
    [
        [ 30.0, <techreborn:smalldust:35>],       // obsidian
        [ 20.0, <minecraft:glowstone_dust>],      // glowstone
        [ 20.0, <inventorypets:nugget_ender>],    // ender pearl
        [ 15.0, <inventorypets:nugget_lapis>],    // lapis
        [  8.0, <inventorypets:nugget_diamond>],  // diamond
        [  5.0, <inventorypets:nugget_emerald>],  // emerald
        [  5.0, <scalinghealth:heartdust>],       // heartdust
        [  0.1, <mekores:mekanismore:86>],        // titanium shard
        [  0.1, <mekores:mekanismore:126>],       // dilithium shard
        [  2.0, <techreborn:uumatter>]            // UU-Matter
    ]
);

// Tier 2 Scratch-Offs
// TODO
// Maybe nuclearcraft fluid enricher + lava
//       enriched lava into advanced rocketry cedntrifuge ???
// Maybe just rely on rockhounding chemistry to generate stuff from materials? Or maybe Alchemistry proper?
// Maybe use some "enriched" or "charged" or "irradiated" version of the flesh for more chances/rolls?

// Tier 1 Generation
// Rockhounding Chemistry Lab Blender
//Note 1: input will be extended to their oredicts. Plans to improve this.
//input array: the list of ingredients with their quantity
//output stack: the resulting mixture and its quantity

// 4:1 Rotten Flesh to Gritty Flesh
mods.rockhounding_chemistry.LabBlender.add(
    [
        <minecraft:rotten_flesh>*8,
        <rockhounding_chemistry:chemical_items:18>*4,  // filtered sand
    ],
    <contenttweaker:gritty_flesh>*2
);

// 4:1 Gritty Flesh to Jumpy Flesh
mods.rockhounding_chemistry.LabBlender.add(
    [
        <contenttweaker:gritty_flesh>*8,
        <thermalfoundation:material:770>*4   // pulverized obsidian
    ],
    <contenttweaker:jumpy_flesh>*2
);

// Tier 2 Generation

// 2:1 Rotten Flesh to Gritty Flesh

// 4x Rotten Flesh + 200mB Water -> Rockhounding Slurry Pond @10% Solution + Some RF -> 200mB Organic Slurry
// 125 mB Water -> Alchemistry Evaporator -> 1x <alchemistry:mineral_salt>
// 1 Rotten Flesh -> Mek Crusher = 2x Bio Fuel -> Mek Bio-Generator -> 34.72 kRF @ 280.0 RF/t
// Tech Guns Chemistry Lab
mods.techguns.ChemLab.addRecipe(
    <alchemistry:mineral_salt>,      // first input slot (auto oreDict)
    1,                               // quantity of first input
    <rockhounding_chemistry:chemical_items:18>,  // second input slot (required even if 0) - filtered sand
    1,                               // quantity of second input (or 0 for null input)
    <liquid:organic_slurry>*100,     // input liquid and qty
    false,                           // allow swap
    <contenttweaker:gritty_flesh>*1, // output slot and qty
    <liquid:toxic_waste>*50,         // output liquid and qty
    32                               // required RF/tick cost
);

// 1x Rotten Flesh + 1x Gritty Flesh to 1x Jumpy Flesh

// Rockhounding Lab Oven Reactor
// 50mB Organic Slurry + 250mB Toxic Waste + 10% Refined Obsidian Catalyst 1x Gritty Flesh + RF -> Lab Oven Reactor -> 250 mB fluid:ender_sap
// Note 1: the solute must be always used. Solvent and the Solution cannot be null
// Note 2: the catalyst must be a damageable item (any item with a durability).
// display name: alternative name for the recipe selector. Can be null if not necessary
// solute stack: the main ingredient (required)
// catalyst: the damageable ingredient (optional)
// solvent fluid: the main solvent and its quantity
// reagent fluid: the secondary solvent and its quantity (optional)
// solution fluid: the output fluid and its quantity
// byproduct: the secondary output and its quantity (optional)
mods.rockhounding_chemistry.LabOven.add(
    "Ender Sap",
    <thermalfoundation:material:770>, // pulverized obsidian
    <contenttweaker:enderium_catalyst>,
    <liquid:organic_slurry>*50,
    <liquid:toxic_waste>*250,
    <liquid:ender_sap>*250,
    <liquid:toxic_sludge>*5
);

// Rockhounding Precipitation Chamber
// 250mB fluid:ender_sap = 1x Jumpy Flesh
// **Note: the solute must be always used. Solvent and Solution cannot be null
// display name: alternative name for the recipe selector. Can be null if not necessary
// solute stack or roedict string: the main ingredient (required)
// catalyst: the damageable ingredient (optional)
// solvent fluid: the main solvent
// solution fluid: the output fluid
// precipitate: the solid output
mods.rockhounding_chemistry.Precipitator.add(
    "Jumpy Flesh",
    <contenttweaker:gritty_flesh>,
    null,
    <liquid:ender_sap>*250,
    <liquid:toxic_waste>*200,
    <contenttweaker:jumpy_flesh>*1
);


// Recycle Crap Drops back into the Rotten Economy
