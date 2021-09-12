#modloaded alchemistry
// Alchemistry
// Increase basic machine recipe difficulty and integrate with other mods

recipes.removeByRecipeName("alchemistry:chemical_dissolver");
recipes.addShaped("alchemistry/chemical_dissolver", <alchemistry:chemical_dissolver>,
  [
    [<ore:plateChrome>, <rockhounding_chemistry:misc_items:6>, <ore:plateChrome>],
    [<ore:plateChrome>, <minecraft:magma>, <ore:plateChrome>],
    [<ore:plateChrome>, <mekanism:basicblock:8>, <ore:plateChrome>]
  ]
);

recipes.removeByRecipeName("alchemistry:chemical_combiner");
recipes.addShaped("alchemistry/chemical_combiner", <alchemistry:chemical_combiner>,
  [
    [<ore:plateChrome>, <rockhounding_chemistry:misc_items:9>, <ore:plateChrome>],
    [<ore:plateChrome>, <rockhounding_chemistry:va_catalyst>, <ore:plateChrome>],
    [<ore:plateChrome>, <mekanism:basicblock:8>, <ore:plateChrome>]
  ]
);
