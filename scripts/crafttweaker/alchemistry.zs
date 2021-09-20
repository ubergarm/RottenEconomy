#modloaded alchemistry
// Alchemistry

// Increase basic machine recipe difficulty and integrate with other mods
var ironCasing = <rockhounding_chemistry:misc_items:5>;
var machineScaffold = <rockhounding_chemistry:misc_blocks_a>;

recipes.removeByRecipeName("alchemistry:chemical_dissolver");
recipes.addShaped("alchemistry/chemical_dissolver", <alchemistry:chemical_dissolver>,
  [
    [ironCasing, <rockhounding_chemistry:misc_items:6>, ironCasing],
    [ironCasing, <minecraft:magma>, ironCasing],
    [ironCasing, machineScaffold, ironCasing]
  ]
);

recipes.removeByRecipeName("alchemistry:chemical_combiner");
recipes.addShaped("alchemistry/chemical_combiner", <alchemistry:chemical_combiner>,
  [
    [ironCasing, <rockhounding_chemistry:misc_items:9>, ironCasing],
    [ironCasing, <rockhounding_chemistry:va_catalyst>, ironCasing],
    [ironCasing, machineScaffold, ironCasing]
  ]
);
