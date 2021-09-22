#modloaded alchemistry
// Alchemistry

// Increase basic machine recipe difficulty and integrate with other mods
var ironCasing = <rockhounding_chemistry:misc_items:5>;
var blockEnderium = <ore:blockEnderium>;
var heatingElement = <mekanism:basicblock2:5>;

recipes.removeByRecipeName("alchemistry:chemical_dissolver");
recipes.addShaped("alchemistry/chemical_dissolver", <alchemistry:chemical_dissolver>,
  [
    [ironCasing, <rockhounding_chemistry:misc_items:6>, ironCasing],
    [ironCasing, heatingElement, ironCasing],
    [ironCasing, blockEnderium, ironCasing]
  ]
);

recipes.removeByRecipeName("alchemistry:chemical_combiner");
recipes.addShaped("alchemistry/chemical_combiner", <alchemistry:chemical_combiner>,
  [
    [ironCasing, <rockhounding_chemistry:misc_items:9>, ironCasing],
    [ironCasing, <ore:plateVanadium>, ironCasing],
    [ironCasing, blockEnderium, ironCasing]
  ]
);
