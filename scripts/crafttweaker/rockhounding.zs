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
<rockhounding_chemistry:machines_d:11>.addTooltip("§eNOTE: §7Use the Transposer to convert between RockHounding pipelines and other mods!");
//Note: to just allow the Gas Pipeline recognize gases from other mods, input and output below must be set same
//input: the fluid/gas input
//output: the converted fluid/gas

// ic2 <-> nuclearcraft oxygen
mods.rockhounding_chemistry.Transposer.add(<liquid:ic2oxygen>*1000,<liquid:ic2oxygen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:ic2oxygen>*1000, <liquid:oxygen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:oxygen>*1000,<liquid:oxygen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:oxygen>*1000, <liquid:ic2oxygen>*1000);

mods.rockhounding_chemistry.Transposer.add(<liquid:liquidoxygen>*1000,<liquid:liquidoxygen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:liquidoxygen>*1000,<liquid:liquid_oxygen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:liquid_oxygen>*1000,<liquid:liquid_oxygen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:liquid_oxygen>*1000,<liquid:liquidoxygen>*1000);

// ic2 <-> nuclearcraft hydrogen
mods.rockhounding_chemistry.Transposer.add(<liquid:ic2hydrogen>*1000,<liquid:ic2hydrogen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:ic2hydrogen>*1000,<liquid:hydrogen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:hydrogen>*1000,<liquid:hydrogen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:hydrogen>*1000,<liquid:ic2hydrogen>*1000);

mods.rockhounding_chemistry.Transposer.add(<liquid:fluidhydrogen>*1000,<liquid:fluidhydrogen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:fluidhydrogen>*1000,<liquid:liquid_hydrogen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:liquid_hydrogen>*1000,<liquid:liquid_hydrogen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:liquid_hydrogen>*1000,<liquid:fluidhydrogen>*1000);

// nitrogen
mods.rockhounding_chemistry.Transposer.add(<liquid:nitrogen>*1000,<liquid:nitrogen>*1000);

mods.rockhounding_chemistry.Transposer.add(<liquid:liquid_nitrogen>*1000,<liquid:liquid_nitrogen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:liquid_nitrogen>*1000,<liquid:fluidnitrogen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:fluidnitrogen>*1000,<liquid:fluidnitrogen>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:fluidnitrogen>*1000,<liquid:liquid_nitrogen>*1000);

// nitrogen dioxide
mods.rockhounding_chemistry.Transposer.add(<liquid:nitrogen_dioxide>*1000,<liquid:nitrogen_dioxide>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:fluidnitrogendioxide>*1000,<liquid:fluidnitrogendioxide>*1000);

// thermal foundation refined fuel <-> mrcrayfish vehicles fuelium
mods.rockhounding_chemistry.Transposer.add(<liquid:refined_fuel>*1000, <liquid:fuelium>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:fuelium>*1000, <liquid:refined_fuel>*1000);

// mekanism brine <-> rockhounding brine
mods.rockhounding_chemistry.Transposer.add(<liquid:brine>*1000, <liquid:brine>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:brine>*1000, <liquid:salt_brine>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:salt_brine>*1000, <liquid:salt_brine>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:salt_brine>*1000, <liquid:brine>*1000);

// ammonia
mods.rockhounding_chemistry.Transposer.add(<liquid:ammonia>*1000, <liquid:ammonia>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:liquid_ammonia>*1000, <liquid:liquid_ammonia>*1000);

// syngas
mods.rockhounding_chemistry.Transposer.add(<liquid:syngas>*1000, <liquid:syngas>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:raw_syngas>*1000, <liquid:raw_syngas>*1000);

// argon
mods.rockhounding_chemistry.Transposer.add(<liquid:argon>*1000, <liquid:argon>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:liquid_argon>*1000, <liquid:liquid_argon>*1000);

// compressed air
mods.rockhounding_chemistry.Transposer.add(<liquid:compressed_air>*1000, <liquid:compressed_air>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:fluidcompressedair>*1000, <liquid:fluidcompressedair>*1000);

// various steams and british steam
mods.rockhounding_chemistry.Transposer.add(<liquid:ic2steam>*1000, <liquid:ic2steam>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:ic2steam>*1000, <liquid:water_vapour>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:ic2steam>*1000, <liquid:steam>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:steam>*1000, <liquid:steam>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:steam>*1000, <liquid:ic2steam>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:steam>*1000, <liquid:water_vapour>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:water_vapour>*1000, <liquid:water_vapour>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:water_vapour>*1000, <liquid:ic2steam>*1000);
mods.rockhounding_chemistry.Transposer.add(<liquid:water_vapour>*1000, <liquid:steam>*1000);

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

