#modloaded alchemistry rockhounding_chemistry
// Flesh Economy Scratch-Offs

// The kind you can just eat safely
<xlfoodmod:flesh>.displayName = "Toasty Flesh";

## Scratch Off Base Chances
// Rotten Flesh
var coalChance = 0.15;
var redstoneChance = 0.15;
var ironChance = 0.15;
var copperChance = 0.10;
var leadChance = 0.10;
var tinChance = 0.10;
var nickelChance = 0.08;
var goldChance = 0.05;
var woolChance = 0.08;

// Gritty Flesh
var mineralChance = 0.10;
var quartzChance = 0.15;
var resonatingOreChance = 0.10;
var saltpeterChance = 0.50;
var oilShaleChance = 0.08;
var osmiumChance = 0.10;
var silverChance = 0.10;
var aluminumChance = 0.08;
var platinumChance = 0.05;

// Jumpy Flesh
var enderChance = 0.10;
var lapisChance = 0.15;
var diamondChance = 0.05;
var emeraldChance = 0.03;
var heartChance = 0.05;
var tungstenChance = 0.10;
var titaniumChance = 0.02;
var dilithiumChance = 0.02;
var matterChance = 0.06;

// Irradiated Flesh
<qmd:flesh>.displayName = "Irradiated Flesh";
var graniteChance = 0.10;
var dioriteChance = 0.10;
var andesiteChance = 0.10;
var glowstoneChance = 0.15;
var thoriumChance = 0.08;
var uraniumChance = 0.08;
var boronChance = 0.08;
var lithiumChance = 0.08;
var magnesiumChance = 0.08;

## Tier 1 Scratch-Offs
## Tech Guns Grinder into small dust / nuggets
## 5 minutes 20 seconds to process full stack of 64 flesh
// Rotten Flesh
mods.techguns.Grinder.addRecipe(<minecraft:rotten_flesh>,
    [
        <minecraft:coal>,          // coal
        <minecraft:redstone>,      // redstone
        <minecraft:iron_ore>,      // iron
        <thermalfoundation:ore:0>, // copper
        <thermalfoundation:ore:3>, // lead
        <thermalfoundation:ore:1>, // tin
        <thermalfoundation:ore:5>, // nickel
        <minecraft:gold_ore>,      // gold
        <cyberware:body_part:6>    // string
    ],
    [
        coalChance,
        redstoneChance,
        ironChance,
        copperChance,
        leadChance,
        tinChance,
        nickelChance,
        goldChance,
        woolChance
    ]
);

// Gritty Flesh
mods.techguns.Grinder.addRecipe(<contenttweaker:gritty_flesh>,
    [
        <rockhounding_chemistry:uninspected_mineral>,  // uninspected mineral
        <minecraft:quartz>,                            // (nether) quartz
        <deepresonance:resonating_ore>,                // deep resonance ore
        <icbmclassic:saltpeter>,                       // saltpeter
        <thermalfoundation:ore_fluid:0>,               // clathrate oil sand
        <mekanism:oreblock:0>,                         // osmium
        <thermalfoundation:ore:2>,                     // silver
        <thermalfoundation:ore:4>,                     // aluminum
        <thermalfoundation:ore:6>                      // platinum
    ],
    [
        mineralChance,
        quartzChance,
        resonatingOreChance,
        saltpeterChance,
        oilShaleChance,
        osmiumChance,
        silverChance,
        aluminumChance,
        platinumChance
    ]
);


// Jumpy Flesh
mods.techguns.Grinder.addRecipe(<contenttweaker:jumpy_flesh>,
    [
        <minecraft:ender_pearl>,   // ender pearl
        <minecraft:dye:4>,         // lapis
        <minecraft:diamond>,       // diamond
        <minecraft:emerald>,       // emerald
        <scalinghealth:heartdust>, // heartdust
        <techreborn:ore:8>,        // tungsten
        <techguns:basicore:3>,     // titanium
        <libvulpes:ore0>,          // dilithium (no that is not a typo lol)
        <techreborn:uumatter>      // UU-Matter
    ],
    [
        enderChance,
        lapisChance,
        diamondChance,
        emeraldChance,
        heartChance,
        tungstenChance,
        titaniumChance,
        dilithiumChance,
        matterChance
    ]
);

// Irradiated Flesh
mods.techguns.Grinder.addRecipe(<qmd:flesh>,
    [
        <minecraft:stone:1>,        // granite
        <minecraft:stone:3>,        // diorite
        <minecraft:stone:5>,        // andesite
        <minecraft:glowstone_dust>, // glowstone
        <nuclearcraft:ore:3>,       // thorium
        <nuclearcraft:ore:4>,       // uranium
        <nuclearcraft:ore:5>,       // boron
        <nuclearcraft:ore:6>,       // lithium
        <nuclearcraft:ore:7>        // magnesium
    ],
    [
        graniteChance,
        dioriteChance,
        andesiteChance,
        glowstoneChance,
        thoriumChance,
        uraniumChance,
        boronChance,
        lithiumChance,
        magnesiumChance
    ]
);

## Tier 1 Upgrade Conversion
// Rockhounding Chemistry Lab Blender
// Note 1: input will be extended to their oredicts. Plans to improve this.
// input array: the list of ingredients with their quantity
// output stack: the resulting mixture and its quantity

// 2:1 Rotten Flesh to Gritty Flesh
mods.rockhounding_chemistry.LabBlender.add(
    [
        <minecraft:rotten_flesh>*4,
        <rockhounding_chemistry:chemical_items:18>*4,  // filtered sand
    ],
    <contenttweaker:gritty_flesh>*2
);

// 2:1 Gritty Flesh to Jumpy Flesh
mods.rockhounding_chemistry.LabBlender.add(
    [
        <contenttweaker:gritty_flesh>*4,
        <thermalfoundation:material:770>*4   // pulverized obsidian
    ],
    <contenttweaker:jumpy_flesh>*2
);

## Tier 2 Upgrade Conversion
// Rotten Flesh from Coal Slurry plus adjuncts
// Tech Guns Chemistry Lab
mods.techguns.ChemLab.addRecipe(
    <mekanism:substrate>,            // first input slot (auto oreDict)
    1,                               // quantity of first input
    "dustNetherrack",                // second input slot (required even if 0)
    1,                               // quantity of second input (or 0 for null input)
    <liquid:coal_slurry>*250,        // input liquid and qty
    false,                           // allow swap
    <minecraft:rotten_flesh>*1,      // output slot and qty
    <liquid:toxic_waste>*25,         // output liquid and qty
    32                               // required RF/tick cost
);

// Gritty Flesh from Organic Slurry plus Adjuncts
// 4x Rotten Flesh + 200mB Water -> Rockhounding Slurry Pond @10% Solution + Some RF -> 200mB Organic Slurry
// 125 mB Water -> Alchemistry Evaporator -> 1x <alchemistry:mineral_salt>
// 1 Rotten Flesh -> Mek Crusher = 2x Bio Fuel -> Mek Bio-Generator -> 34.72 kRF @ 280.0 RF/t
// Tech Guns Chemistry Lab
mods.techguns.ChemLab.addRecipe(
    <alchemistry:mineral_salt>,      // first input slot (auto oreDict)
    1,                               // quantity of first input
    <rockhounding_chemistry:chemical_items:18>,  // second input slot (required even if 0) - filtered sand
    1,                               // quantity of second input (or 0 for null input)
    <liquid:organic_slurry>*50,      // input liquid and qty
    false,                           // allow swap
    <contenttweaker:gritty_flesh>*1, // output slot and qty
    <liquid:toxic_waste>*25,         // output liquid and qty
    32                               // required RF/tick cost
);

// 1x Rotten Flesh + 1x Gritty Flesh to 1x Jumpy Flesh
// Rockhounding Lab Oven Reactor
// 50mB Organic Slurry + 250mB Toxic Waste + 10% Refined Obsidian Catalyst 1x Gritty Flesh + RF -> Lab Oven Reactor -> 250 mB fluid:ender_sap
// Note 1: the solute must be always used. Solvent and the Solution cannot be null
// Note 2: the catalyst must be a damageable item (any item with a durability).
// display name: alternative name for the recipe selector. Can be null if not necessary
// solute stack: the main ingredient (required)
// catalyst: the damageable ingredient (optional)
// solvent fluid: the main solvent and its quantity
// reagent fluid: the secondary solvent and its quantity (optional)
// solution fluid: the output fluid and its quantity
// byproduct: the secondary output and its quantity (optional)
mods.rockhounding_chemistry.LabOven.add(
    "Ender Sap",
    <thermalfoundation:material:770>, // pulverized obsidian
    <contenttweaker:enderium_catalyst>,
    <liquid:organic_slurry>*50,
    <liquid:coal_slurry>*250,
    <liquid:ender_sap>*250,
    <liquid:toxic_sludge>*5
);

// Rockhounding Precipitation Chamber
// 250mB fluid:ender_sap = 1x Jumpy Flesh
// **Note: the solute must be always used. Solvent and Solution cannot be null
// display name: alternative name for the recipe selector. Can be null if not necessary
// solute stack or roedict string: the main ingredient (required)
// catalyst: the damageable ingredient (optional)
// solvent fluid: the main solvent
// solution fluid: the output fluid
// precipitate: the solid output
mods.rockhounding_chemistry.Precipitator.add(
    "Jumpy Flesh",
    <contenttweaker:gritty_flesh>,
    null,
    <liquid:ender_sap>*250,
    <liquid:toxic_waste>*100,
    <contenttweaker:jumpy_flesh>*1
);
