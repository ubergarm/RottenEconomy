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
