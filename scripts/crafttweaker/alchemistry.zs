#modloaded alchemistry
// Alchemistry

// Increase basic machine recipe difficulty and integrate with other mods
var ironCasing = <rockhounding_chemistry:misc_items:5>;
var heatingElement = <mekanism:basicblock2:5>;

recipes.removeByRecipeName("alchemistry:chemical_dissolver");
recipes.addShaped("alchemistry/chemical_dissolver", <alchemistry:chemical_dissolver>,
  [
    [ironCasing, <rockhounding_chemistry:misc_items:6>, ironCasing],
    [ironCasing, heatingElement, ironCasing],
    [ironCasing, <ore:plateStellite>, ironCasing]
  ]
);

recipes.removeByRecipeName("alchemistry:chemical_combiner");
recipes.addShaped("alchemistry/chemical_combiner", <alchemistry:chemical_combiner>,
  [
    [ironCasing, <rockhounding_chemistry:misc_items:9>, ironCasing],
    [ironCasing, <ore:plateVanadium>, ironCasing],
    [ironCasing, <vehicle:jack>, ironCasing]
  ]
);

// mods.alchemistry.Dissolver.addRecipe(IIngredient input, boolean relativeProbability, int rolls, Object[][] probabilityGroups);
// create 4x protien from raw or cooked long pork
mods.alchemistry.Dissolver.addRecipe(<rewired:meat_raw>, true, 1,
    [
        [ 100, <alchemistry:compound:9>*4 ],
    ]
);

mods.alchemistry.Dissolver.addRecipe(<rewired:meat_cooked>, true, 1,
    [
        [ 100, <alchemistry:compound:9>*4 ],
    ]
);

