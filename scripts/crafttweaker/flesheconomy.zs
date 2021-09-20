#modloaded alchemistry rockhounding_chemistry
// Flesh Economy Scratch-Offs

// Tier 1 Scratch-Offs
// Alchemistry Dissolver
// Rotten Flesh
mods.alchemistry.Dissolver.removeRecipe(<minecraft:rotten_flesh:0>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:rotten_flesh:0>, true, 3,
    [
        [ 40.0, <minecraft:gravel>],        // gravel
        [ 10.0, <pickletweaks:coal_piece>], // coal
        [ 20.0, <techreborn:smalldust:61>], // redstone
        [ 20.0, <techreborn:smalldust:27>], // iron
        [ 15.0, <techreborn:smalldust:14>], // copper
        [ 15.0, <techreborn:smalldust:29>], // lead
        [ 10.0, <techreborn:smalldust:34>], // nickel
        [ 10.0, <techreborn:smalldust:53>], // tin
        [  5.0, <techreborn:smalldust:24>], // gold
        [ 10.0, <minecraft:string>]         // string
    ]
);

// Gritty Flesh
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:gritty_flesh:0>, true, 2,
    [
        [ 40.0, <minecraft:sand>],                              // sand
        [ 20.0, <rockhounding_chemistry:uninspected_mineral>],  // uninspected mineral
        [ 40.0, <techreborn:smalldust:44>],                     // saltpeter
        [ 10.0, <nuclearcraft:gem_dust:2>],                     // cruhed (nether) quartz
        [ 10.0, <ic2:crafting:23>],                             // scrap
        [ 10.0, <mekores:mekanismore:31>],                      // aluminum
        [ 15.0, <mekanism:shard:5>],                            // silver
        [  5.0, <mekores:mekanismore:1>],                       // uranium
        [ 10.0, <mekanism:shard:2>],                            // osmium
        [  5.0, <mekores:mekanismore:16>]                       // platinum
    ]
);

// Jumpy Flesh
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:jumpy_flesh:0>, true, 1,
    [
        [ 30.0, <minecraft:mycelium>],            // mycelium
        [ 20.0, <minecraft:glowstone_dust>],      // glowstone
        [ 15.0, <techreborn:smalldust:35>],       // obsidian
        [ 10.0, <inventorypets:nugget_lapis>],    // lapis
        [ 10.0, <inventorypets:nugget_ender>],    // ender pearl
        [  8.0, <inventorypets:nugget_diamond>],  // diamond
        [  5.0, <inventorypets:nugget_emerald>],  // emerald
        [  5.0, <scalinghealth:heartdust>],       // heartdust
        [  5.0, <mekores:mekanismore:86>],        // titanium
        [  2.0, <techreborn:uumatter>]            // UU-Matter
    ]
);

// Tier 2 Scratch-Offs
// TODO
// Maybe nuclearcraft fluid enricher + lava
//       enriched lava into advanced rocketry cedntrifuge ???
// Maybe going through rockhounding chemistry?

// Tier 1 Generation
// Rockhounding Chemistry Lab Blender
//Note 1: input will be extended to their oredicts. Plans to improve this.
//input array: the list of ingredients with their quantity
//output stack: the resulting mixture and its quantity

mods.rockhounding_chemistry.LabBlender.add(
    [
        <minecraft:rotten_flesh>*8,
        <minecraft:sand>*4
    ],
    <contenttweaker:gritty_flesh>*2
);

mods.rockhounding_chemistry.LabBlender.add(
    [
        <contenttweaker:gritty_flesh>*8,
        <minecraft:mycelium>*4
    ],
    <contenttweaker:jumpy_flesh>*2
);

// Tier 2 Generation
// TODO
// Maybe going to bio liquid then mixing and reforming?
