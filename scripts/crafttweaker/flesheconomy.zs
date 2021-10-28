#modloaded alchemistry rockhounding_chemistry
// Flesh Economy Scratch-Offs

// The kind you can just eat safely
<xlfoodmod:flesh>.displayName = "Toasty Flesh";

## Scratch Off Base Chances
// Rotten Flesh
var coalChance = 0.20;
var redstoneChance = 0.20;
var ironChance = 0.20;
var copperChance = 0.15;
var leadChance = 0.15;
var tinChance = 0.15;
var nickelChance = 0.10;
var goldChance = 0.10;
var woolChance = 0.15;

// Gritty Flesh
var mineralChance = 0.15;
var quartzChance = 0.20;
var resonatingOreChance = 0.15;
var saltpeterChance = 0.50;
var oilShaleChance = 0.15;
var osmiumChance = 0.10;
var silverChance = 0.10;
var aluminumChance = 0.10;
var platinumChance = 0.10;

// Jumpy Flesh
var enderChance = 0.20;
var lapisChance = 0.20;
var diamondChance = 0.15;
var emeraldChance = 0.10;
var heartChance = 0.20;
var tungstenChance = 0.10;
var titaniumChance = 0.05;
var dilithiumChance = 0.05;
var matterChance = 0.10;

// Irradiated Flesh
<qmd:flesh>.displayName = "Irradiated Flesh";
var graniteChance = 0.15;
var dioriteChance = 0.15;
var andesiteChance = 0.15;
var glowstoneChance = 0.20;
var thoriumChance = 0.15;
var uraniumChance = 0.15;
var boronChance = 0.15;
var lithiumChance = 0.15;
var magnesiumChance = 0.15;

## Tier 1 Scratch-Offs
## Tech Guns Grinder into ores
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

// Rubber into Substrate
mods.rockhounding_chemistry.LabBlender.add(
    [
        <techguns:itemshared:56>    // materialRubber
    ],
    <mekanism:substrate>*2
);

// 2:1 Rotten Flesh to Gritty Flesh
mods.rockhounding_chemistry.LabBlender.add(
    [
        <minecraft:rotten_flesh>*4,
        <mekanism:salt>,                               // dustSalt
        <rockhounding_chemistry:chemical_items:11>*1,  // silicon compound
        <rockhounding_chemistry:chemical_items:18>*1,  // filtered sand
    ],
    <contenttweaker:gritty_flesh>
);

// 2:1 Gritty Flesh to Jumpy Flesh
// create a new oredict to share for cracked coal and charcoal
<ore:compoundCrackedCarbon>.add(<rockhounding_chemistry:chemical_items>);
<ore:compoundCrackedCarbon>.add(<rockhounding_chemistry:chemical_items:13>);

mods.rockhounding_chemistry.LabBlender.add(
    [
        <minecraft:rotten_flesh>*2,
        <contenttweaker:gritty_flesh>*2,
        <inventorypets:nugget_ender>,
        <rockhounding_chemistry:chemical_items>, // compoundCrackedCarbon
        <thermalfoundation:material:770>*1       // pulverized obsidian
    ],
    <contenttweaker:jumpy_flesh>
);

## Tier 2 Upgrade Conversion
// Rotten Flesh
// Tech Guns Chemistry Lab
mods.techguns.ChemLab.addRecipe(
    <mekanism:substrate>,            // first input slot (auto oreDict)
    1,                               // quantity of first input
    "dustNetherrack",                // second input slot (required even if 0)
    1,                               // quantity of second input (or 0 for null input)
    <liquid:organic_slurry>*100,     // input liquid and qty
    true,                            // allow swap
    <minecraft:rotten_flesh>*1,      // output slot and qty
    <liquid:toxic_waste>*50,         // output liquid and qty
    32                               // required RF/tick cost
);

// Gritty Flesh
// Tech Guns Chemistry Lab
mods.techguns.ChemLab.addRecipe(
    "dustSalt",                      // first input slot (auto oreDict)
    1,                               // quantity of first input
    <rockhounding_chemistry:chemical_items:18>,  // second input slot (required even if 0) - filtered sand
    1,                               // quantity of second input (or 0 for null input)
    <liquid:silicon>*100,            // input liquid and qty
    true,                            // allow swap
    <contenttweaker:gritty_flesh>*1, // output slot and qty
    <liquid:toxic_waste>*50,         // output liquid and qty
    32                               // required RF/tick cost
);

mods.techguns.ChemLab.addRecipe(
    <rockhounding_chemistry:chemical_items:11>,  // first input slot (auto oreDict)
    1,                               // quantity of first input
    <rockhounding_chemistry:chemical_items:18>,  // second input slot (required even if 0) - filtered sand
    1,                               // quantity of second input (or 0 for null input)
    <liquid:brine>*100,              // input liquid and qty
    true,                            // allow swap
    <contenttweaker:gritty_flesh>*1, // output slot and qty
    <liquid:toxic_waste>*50,         // output liquid and qty
    32                               // required RF/tick cost
);

// Jumpy Flesh
// Rockhounding Precipitation Chamber
// **Note: the solute must be always used. Solvent and Solution cannot be null
// display name: alternative name for the recipe selector. Can be null if not necessary
// solute stack or roedict string: the main ingredient (required)
// catalyst: the damageable ingredient (optional)
// solvent fluid: the main solvent
// solution fluid: the output fluid
// precipitate: the solid output
mods.rockhounding_chemistry.Precipitator.add(
    "Jumpy Flesh",
    <thermalfoundation:material:770>,    // pulverized obsidian
    <contenttweaker:enderium_catalyst>,
    <liquid:coal_slurry>*100,
    <liquid:toxic_waste>*50,
    <contenttweaker:jumpy_flesh>
);

// Add a note for plasteel tritanium reinfornced blocks
<contenttweaker:plasteel_tritanium_plate>.addTooltip("Hold §bSHIFT §7for more info.");
<contenttweaker:plasteel_tritanium_plate>.addShiftTooltip("Too difficult to mine. Perhaps an ICBM breaching explosive could penetrate it...");

// Add note for Martian Security Beacon
<contenttweaker:martian_security_beacon>.addTooltip("Hold §bSHIFT §7for more info.");
<contenttweaker:martian_security_beacon>.addShiftTooltip("Place this §6AmaJawn™ §7Cargo Ship beacon in the artifact slot of a Space Station Warp Core to sneak into orbit around Mars without attracting attention!");

// Add note for AmaJawn Tracking ROM
<contenttweaker:amajawn_tracking_rom>.addTooltip("Hold §bSHIFT §7for more info.");
<contenttweaker:amajawn_tracking_rom>.addShiftTooltip("This ROM protected by §6AmaJawn™ §7proprietary DRM. Do *not* copy or replicate under penalty of law.");

// Add note and recipe for scrapper tool
<contenttweaker:scrapper_tool:*>.addTooltip("Hold §bSHIFT §7for more info.");
<contenttweaker:scrapper_tool:*>.addShiftTooltip("(WIP): Right click on a block to see mining hardness and blast resistance. Glitchy w/ OMPD Hardened Blocks currently...");
recipes.addShaped("contenttweaker.scrapper_tool", <contenttweaker:scrapper_tool>,
    [
        [null, <minecraft:diamond>, <minecraft:redstone_block>],
        [null, <ore:ingotCopper>, <minecraft:diamond>],
        [<spartanweaponry:material>, null, null]
    ]
);
