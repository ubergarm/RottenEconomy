#modloaded rockhounding_chemistry
// Rockhounding Chemistry

// TOXIC MUTATION
//input stack: the item to mutate
//output stack: the mutated item
mods.rockhounding_chemistry.ToxicMutation.add(<minecraft:leather>, <minecraft:rotten_flesh>);
mods.rockhounding_chemistry.ToxicMutation.add("seedWheat", <minecraft:wheat>);

// TRANSPOSER
//Note: to just allow the Gas Pipeline recognize gases from other mods, input and output below must be set same
//input: the fluid/gas input
//output: the converted fluid/gas
mods.rockhounding_chemistry.Transposer.add(<liquid:ic2oxygen>*1000, <liquid:oxygen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:compressed_air>*1000, <liquid:fluidcompressedair>*1000);

// LAB BLENDER
//Note 1: input will be extended to their oredicts. Plans to improve this.
//input array: the list of ingredients with their quantity
//output stack: the resulting mixture and its quantity
mods.rockhounding_chemistry.LabBlender.add(
    [
        <minecraft:redstone>*9,
        <minecraft:gunpowder>*4,
        <minecraft:glowstone_dust>*2
    ],
    <minecraft:magma_cream>*9
);

// PROFILING BENCH
// input stack: the specific item to be shaped
// output stack: the reshaped item
// pattern: the casting pattern (0:generic, 1:coil, 2:rod, 3:foil, 4:arm, 5:casing, 6:gear, 7:ingot, 8:gauze, 9:coin, 10:plate )
mods.rockhounding_chemistry.ProfilingBench.add(
    "ingotEnderium",
    <contenttweaker:enderium_catalyst>,
    8
);
