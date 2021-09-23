#modloaded alchemistry rockhounding_chemistry
// Flesh Economy Scratch-Offs

// Crispy Rotten Flesh
<xlfoodmod:flesh>.displayName = "Crispy Rotten Flesh";

## Scratch Off Base Chances
// Rotten Flesh
var coalChance = 0.12;
var redstoneChance = 0.12;
var ironChance = 0.12;
var copperChance = 0.08;
var leadChance = 0.08;
var tinChance = 0.08;
var nickelChance = 0.05;
var goldChance = 0.015;
var woolChance = 0.08;

// Gritty Flesh
var mineralChance = 0.15;
var quartzChance = 0.12;
var scrapChance = 0.12;
var saltpeterChance = 0.50;
var sulfurChance = 0.25;
var osmiumChance = 0.08;
var silverChance = 0.06;
var aluminumChance = 0.03;
var platinumChance = 0.01;

// Jumpy Flesh
var enderChance = 0.10;
var lapisChance = 0.15;
var diamondChance = 0.05;
var emeraldChance = 0.05;
var heartChance = 0.05;
var tungstenChance = 0.10;
var titaniumChance = 0.015;
var dilithiumChance = 0.015;
var matterChance = 0.06;

// Irradiated Flesh
var graniteChance = 0.10;
var dioriteChance = 0.10;
var andesiteChance = 0.10;
var glowstoneChance = 0.15;
var thoriumChance = 0.08;
var uraniumChance = 0.08;
var boronChance = 0.08;          // only full size dust available
var lithiumChance = 0.08;        // only tiny dust available
var magnesiumChance = 0.08;

## Tier 1 Scratch-Offs
## Tech Guns Grinder into small dust / nuggets
## 5 minutes 20 seconds to process full stack of 64 flesh
// Rotten Flesh
mods.techguns.Grinder.addRecipe(
    <minecraft:rotten_flesh>,
    [
        <pickletweaks:coal_piece>, // coal
        <techreborn:smalldust:61>, // redstone
        <techreborn:smalldust:27>, // iron
        <techreborn:smalldust:14>, // copper
        <techreborn:smalldust:29>, // lead
        <techreborn:smalldust:53>, // tin
        <techreborn:smalldust:34>, // nickel
        <techreborn:smalldust:24>, // gold
        <cyberware:body_part:6>    // string
    ],
    [
        4.0*coalChance,
        2.0*redstoneChance,
        2.0*ironChance,
        2.0*copperChance,
        2.0*leadChance,
        2.0*tinChance,
        2.0*nickelChance,
        2.0*goldChance,
        2.0*woolChance
    ]
);

// Gritty Flesh
mods.techguns.Grinder.addRecipe(
    <contenttweaker:gritty_flesh>,
    [
        <rockhounding_chemistry:uninspected_mineral>,  // uninspected mineral
        <nuclearcraft:gem_dust:2>,                     // crushed (nether) quartz
        <ic2:crafting:23>,                             // scrap
        <techreborn:smalldust:44>,                     // saltpeter
        <techreborn:smalldust:52>,                     // sulfur dust small
        <mekanism:dust:2>,                             // osmium dust full size
        <techreborn:smalldust:47>,                     // silver dust small
        <techreborn:smalldust:1>,                      // aluminum dust small
        <techreborn:smalldust:38>                      // platinum dust small
    ],
    [
        0.5*mineralChance,
        0.5*quartzChance,
        0.5*scrapChance,
        0.5*saltpeterChance,
        0.5*sulfurChance,
        0.5*osmiumChance,
        2.0*silverChance,
        2.0*aluminumChance,
        2.0*platinumChance
    ]
);


// Jumpy Flesh
mods.techguns.Grinder.addRecipe(
    <contenttweaker:jumpy_flesh>,
    [
        <inventorypets:nugget_ender>,    // ender nugget
        <inventorypets:nugget_lapis>,    // lapis nugget
        <inventorypets:nugget_diamond>,  // diamond nugget
        <inventorypets:nugget_emerald>,  // emerald nugget
        <scalinghealth:heartdust>,       // heartdust
        <techreborn:smalldust:55>,       // tungsten dust small
        <techreborn:smalldust:54>,       // titanium dust small
        <mekores:mekanismore:126>,       // dilithium shard
        <techreborn:uumatter>            // UU-Matter
    ],
    [
        4.0*enderChance,
        4.0*lapisChance,
        4.0*diamondChance,
        4.0*emeraldChance,
        2.0*heartChance,
        2.0*tungstenChance,
        2.0*titaniumChance,
        0.5*dilithiumChance,
        0.5*matterChance
    ]
);

// Irradiated Flesh
mods.techguns.Grinder.addRecipe(
    <qmd:flesh>,
    [
        <minecraft:stone:1>,        // granite
        <minecraft:stone:3>,        // diorite
        <minecraft:stone:5>,        // andesite
        <techreborn:smalldust:62>,  // glowstone small dust
        <techreborn:smalldust:67>,  // thorium small dust
        <techreborn:smalldust:68>,  // uranium small dust
        <nuclearcraft:dust:5>,      // full size boron dust
        <ic2:dust:24>,              // tiny size lithium dust
        <techreborn:smalldust:30>   // magnesium small dust
    ],
    [
        0.5*graniteChance,
        0.5*dioriteChance,
        0.5*andesiteChance,
        2.0*glowstoneChance,
        2.0*thoriumChance,
        2.0*uraniumChance,
        0.5*boronChance,
        9.0/8.0*lithiumChance,
        2.0*magnesiumChance
    ]
);


## Tier 2 Scratch-Offs
## Alchemistry Dissolver into full size items and mekanism dirty dust
// Rotten Flesh
mods.alchemistry.Dissolver.removeRecipe(<minecraft:rotten_flesh:0>);
mods.alchemistry.Dissolver.addRecipe(<minecraft:rotten_flesh:0>, false, 1,
    [
        [ 33.0,               <minecraft:gravel> ],        // gravel
        [ 100.0*coalChance,     <minecraft:coal> ],          // coal full
        [ 100.0*redstoneChance, <minecraft:redstone> ],      // redstone full
        [ 100.0*ironChance,     <mekanism:dirtydust> ],      // iron dirty dust full
        [ 100.0*copperChance,   <mekanism:dirtydust:3> ],    // copper dirty dust full
        [ 100.0*leadChance,     <mekanism:dirtydust:6> ],    // lead dirty dust full
        [ 100.0*tinChance,      <mekanism:dirtydust:4> ],    // tin dirty dust full
        [ 100.0*nickelChance,   <mekores:mekanismore:13> ],  // nickel dirty dust full
        [ 100.0*goldChance,     <mekanism:dirtydust:1> ],    // gold dirty dust full
        [ 100.0*woolChance,     <cyberware:body_part:6> *4 ] // wool
    ]
);

// Gritty Flesh
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:gritty_flesh:0>, false, 1,
    [

        [ 33.0,                  <minecraft:sand> ],                              // sand
        [ 100.0*mineralChance,   <rockhounding_chemistry:uninspected_mineral> ],  // uninspected mineral
        [ 100.0*quartzChance,    <nuclearcraft:gem_dust:2> ],                            // (nether) quartz
        [ 100.0*scrapChance,     <ic2:crafting:24> ],                             // scrap box
        [ 100.0*saltpeterChance, <techreborn:dust:44> ],                          // saltpeter
        [ 100.0*sulfurChance,    <thermalfoundation:material:771> ],              // sulfur
        [ 100.0*osmiumChance,    <mekanism:dirtydust:2> ],                        // osmium dirty dust full
        [ 100.0*silverChance,    <mekanism:dirtydust:5> ],                        // silver dirty dust full
        [ 100.0*aluminumChance,  <mekores:mekanismore:33> ],                      // aluminum dirty dust full
        [ 100.0*platinumChance,  <mekores:mekanismore:18> ]                       // platinum dirty dust full
    ]
);

// Jumpy Flesh
mods.alchemistry.Dissolver.addRecipe(<contenttweaker:jumpy_flesh:0>, false, 1,
    [
        [ 33.0,                  <thermalfoundation:material:770> ],  // obsidian
        [ 100.0*enderChance,     <minecraft:ender_pearl> ],           // ender pearl
        [ 100.0*lapisChance,     <minecraft:dye:4> ],                 // lapis
        [ 100.0*diamondChance,   <minecraft:diamond> ],               // diamond
        [ 100.0*emeraldChance,   <minecraft:emerald> ],               // emerald
        [ 100.0*heartChance,     <scalinghealth:crystalshard> ],      // heart crystal shard
        [ 100.0*tungstenChance,  <mekores:mekanismore:108> ],         // tungsten dirty dust full
        [ 100.0*titaniumChance,  <mekores:mekanismore:88> ],          // titanium dirty dust full
        [ 100.0*dilithiumChance, <mekores:mekanismore:128> ],         // dilithium dirty dust full
        [ 100.0*matterChance,    <techreborn:uumatter> ]              // UU-Matter
    ]
);

// Irradiated Flesh
<qmd:flesh>.displayName = "Irradiated Flesh";
mods.alchemistry.Dissolver.addRecipe(<qmd:flesh:0>, false, 1,
    [
        [ 33.0,                   <minecraft:mycelium>],        // mycelium
        [ 100.0*graniteChance,    <minecraft:stone:1> ],        // granite
        [ 100.0*dioriteChance,    <minecraft:stone:3> ],        // diorite
        [ 100.0*andesiteChance,   <minecraft:stone:5> ],        // andesite
        [ 100.0*glowstoneChance,  <minecraft:glowstone_dust> ], // glowstone
        [ 100.0*thoriumChance,    <mekores:mekanismore:78> ],   // thorium dirty dust full
        [ 100.0*uraniumChance,    <mekores:mekanismore:3> ],    // uranium dirty dust full
        [ 100.0*boronChance,      <mekores:mekanismore:63> ],   // boron dirty dust full
        [ 100.0*lithiumChance,    <mekores:mekanismore:68> ],   // lithium dirty dust full
        [ 100.0*magnesiumChance,  <mekores:mekanismore:73> ]    // magnesium dirty dust full
    ]
);

## Tier 1 Generation
// Rockhounding Chemistry Lab Blender
// Note 1: input will be extended to their oredicts. Plans to improve this.
// input array: the list of ingredients with their quantity
// output stack: the resulting mixture and its quantity

// 4:1 Rotten Flesh to Gritty Flesh
mods.rockhounding_chemistry.LabBlender.add(
    [
        <minecraft:rotten_flesh>*8,
        <rockhounding_chemistry:chemical_items:18>*4,  // filtered sand
    ],
    <contenttweaker:gritty_flesh>*2
);

// 4:1 Gritty Flesh to Jumpy Flesh
mods.rockhounding_chemistry.LabBlender.add(
    [
        <contenttweaker:gritty_flesh>*8,
        <thermalfoundation:material:770>*4   // pulverized obsidian
    ],
    <contenttweaker:jumpy_flesh>*2
);

## Tier 2 Generation

// 2:1 Rotten Flesh to Gritty Flesh
// 4x Rotten Flesh + 200mB Water -> Rockhounding Slurry Pond @10% Solution + Some RF -> 200mB Organic Slurry
// 125 mB Water -> Alchemistry Evaporator -> 1x <alchemistry:mineral_salt>
// 1 Rotten Flesh -> Mek Crusher = 2x Bio Fuel -> Mek Bio-Generator -> 34.72 kRF @ 280.0 RF/t
// Tech Guns Chemistry Lab
mods.techguns.ChemLab.addRecipe(
    <alchemistry:mineral_salt>,      // first input slot (auto oreDict)
    1,                               // quantity of first input
    <rockhounding_chemistry:chemical_items:18>,  // second input slot (required even if 0) - filtered sand
    1,                               // quantity of second input (or 0 for null input)
    <liquid:organic_slurry>*100,     // input liquid and qty
    false,                           // allow swap
    <contenttweaker:gritty_flesh>*1, // output slot and qty
    <liquid:toxic_waste>*50,         // output liquid and qty
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
    <liquid:toxic_waste>*250,
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
    <liquid:toxic_waste>*200,
    <contenttweaker:jumpy_flesh>*1
);
