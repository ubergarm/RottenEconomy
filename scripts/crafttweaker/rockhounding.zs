#modloaded rockhounding_chemistry
// Rockhounding Chemistry

// TOXIC MUTATION
//input stack: the item to mutate
//output stack: the mutated item
mods.rockhounding_chemistry.ToxicMutation.add("seedWheat", <minecraft:wheat>);
mods.rockhounding_chemistry.ToxicMutation.add("listAllmeatraw", <minecraft:rotten_flesh>);
mods.rockhounding_chemistry.ToxicMutation.removeByInput(<minecraft:potato>);
mods.rockhounding_chemistry.ToxicMutation.add(<minecraft:poisonous_potato>, <minecraft:chorus_flower>);

// limb swapping
mods.rockhounding_chemistry.ToxicMutation.add(<rewired:necrolimb:0>, <rewired:necrolimb:1>);  // left to right arm
mods.rockhounding_chemistry.ToxicMutation.add(<rewired:necrolimb:1>, <rewired:necrolimb:2>);  // right arm to left leg
mods.rockhounding_chemistry.ToxicMutation.add(<rewired:necrolimb:2>, <rewired:necrolimb:3>);  // left leg to right leg
mods.rockhounding_chemistry.ToxicMutation.add(<rewired:necrolimb:3>, <rewired:necrolimb:0>);  // right leg to left arm

// color mutations
mods.rockhounding_chemistry.ToxicMutation.add("dyeWhite", <pickletweaks:dye_powder:1>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeOrange", <pickletweaks:dye_powder:2>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeMagenta", <pickletweaks:dye_powder:3>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeLightBlue", <pickletweaks:dye_powder:4>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeYellow", <pickletweaks:dye_powder:5>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeLime", <pickletweaks:dye_powder:6>);
mods.rockhounding_chemistry.ToxicMutation.add("dyePink", <pickletweaks:dye_powder:7>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeGray", <pickletweaks:dye_powder:8>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeLightGray", <pickletweaks:dye_powder:9>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeCyan", <pickletweaks:dye_powder:10>);
mods.rockhounding_chemistry.ToxicMutation.add("dyePurple", <pickletweaks:dye_powder:11>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeBlue", <pickletweaks:dye_powder:12>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeBrown", <pickletweaks:dye_powder:13>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeGreen", <pickletweaks:dye_powder:14>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeRed", <pickletweaks:dye_powder:15>);
mods.rockhounding_chemistry.ToxicMutation.add("dyeBlack", <pickletweaks:dye_powder:0>);

// TRANSPOSER
//Note: to just allow the Gas Pipeline recognize gases from other mods, input and output below must be set same
//input: the fluid/gas input
//output: the converted fluid/gas
mods.rockhounding_chemistry.Transposer.add(<liquid:ic2oxygen>*1000, <liquid:oxygen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:oxygen>*1000, <liquid:ic2oxygen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:refined_fuel>*1000, <liquid:fuelium>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:fuelium>*1000, <liquid:refined_fuel>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:brine>*1000, <liquid:salt_brine>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:salt_brine>*1000, <liquid:brine>*1000);

// LAB BLENDER
//Note 1: input will be extended to their oredicts. Plans to improve this.
//input array: the list of ingredients with their quantity
//output stack: the resulting mixture and its quantity
// testing recipes with magma cream recipe
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

// LAB OVEN REACTOR
// display name: alternative name for the recipe selector. Can be null if not necessary
// solute stack: the main ingredient (required)
// catalyst: the damageable ingredient (optional)
// solvent fluid: the main solvent and its quantity
// reagent fluid: the secondary solvent and its quantity (optional)
// solution fluid: the output fluid and its quantity
// byproduct: the secondary output and its quantity (optional)
mods.rockhounding_chemistry.LabOven.add(
    "Enriched Lava",
    "dustNetherrack",
    null,
    <liquid:organic_slurry>*100,
    <liquid:lava>*500,
    <liquid:enrichedlava>*500,
    <liquid:toxic_waste>*50
);

// SEASONING RACK
mods.rockhounding_chemistry.SeasoningRack.add(
    <minecraft:wheat>,
    <minecraft:wheat_seeds>
);
mods.rockhounding_chemistry.SeasoningRack.add(
    <alchemistry:mineral_salt>,
    <mekanism:salt>
);

