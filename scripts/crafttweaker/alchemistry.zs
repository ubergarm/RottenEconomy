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

// add a recipe to make stellite ingot from constituent parts instead of rockhounding chemistry metal alloyer
// usually alchemistry uses 16:1 ratio of parts to an ingot so lets do the best given these ratios:
var stelliteIngot = <rockhounding_chemistry:alloy_items_tech:10>;
var cobalt = <alchemistry:element:27>; // cobalt: 57ppc
var chromium = <alchemistry:element:24>; // chromium: 28ppc
var tungsten = <alchemistry:element:74>; // tungsten: 11ppc
var carbon = <alchemistry:element:6>; // carbon: 2ppc
var silicon = <alchemistry:element:14>; // silicon: 1ppc
var molybdenum = <alchemistry:element:42>; // molybdenum: 1ppc
// mods.alchemistry.Combiner.addRecipe(IItemStack output, IItemstack[] input);
mods.alchemistry.Combiner.addRecipe(stelliteIngot,
    [
        cobalt * 9,
        chromium * 4,
        tungsten * 2,
        carbon * 1,
        silicon * 1,
        molybdenum * 1
    ]
);

// add a recipe to make didymium bricks (and therefore glasses)
var didymiumBrick = <rockhounding_chemistry:misc_items:23>;
var lanthanum = <alchemistry:element:57>; // lanthanum 46
var neodynium = <alchemistry:element:60>; // neodynium 34
var praseodynium = <alchemistry:element:59>; // praseodynium 11
var samarium = <alchemistry:element:62>; // samarium 5
var gadolinium = <alchemistry:element:64>; // gadolinium 4
// var silicon = <alchemistry:element:14>; // sand 60 (2:1 silicon to oxygen)]
var oxygen = <alchemistry:element:8>;  // oxygen
mods.alchemistry.Combiner.addRecipe(didymiumBrick*8,
    [
        lanthanum * 5,
        neodynium * 3,
        praseodynium * 1,
        samarium * 1,
        gadolinium * 1,
        silicon * 2,
        oxygen * 4
    ]
);

// add recipe to make nuclearcraft dust calcium sulfate
var calcium = <alchemistry:element:20>;
var sulfate = <alchemistry:element:16>;
mods.alchemistry.Combiner.addRecipe(<nuclearcraft:compound>,
    [
        calcium * 4,
        sulfate * 4,
        oxygen * 16
    ]
);
