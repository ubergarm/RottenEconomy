#modloaded geneticsreborn
// Genetics Reborn

import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;

import crafttweaker.item.IItemStack;
import crafttweaker.server.IServer;
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockPattern;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockStateMatcher;
import crafttweaker.block.IBlockProperties;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.command.ICommandSender;
import crafttweaker.events.IEventManager;
import crafttweaker.world.IExplosion;
import crafttweaker.event.ExplosionStartEvent;
import crafttweaker.data.IData;
import crafttweaker.util.IRandom;
import crafttweaker.util.Position3f;

// remove a few items and use a custom modpack mechanic integrated with SRParasites to progress in Genetics Reborn
var removeItems = [
    <geneticsreborn:cloningmachine>,
    <geneticsreborn:coalgenerator>,
    <geneticsreborn:metalscraper>,
    <geneticsreborn:advancedscraper>,
    <geneticsreborn:overclocker>
] as IItemStack[];

for item in removeItems {
    removeAndHide(item);
}

// add note to help understand how to automate these jawns
var machines = [
    <geneticsreborn:cellanalyser>,
    <geneticsreborn:dnaextractor>,
    <geneticsreborn:dnadecrypter>,
    <geneticsreborn:plasmidinfuser>,
    <geneticsreborn:bloodpurifier>,
    <geneticsreborn:plasmidinjector>,
    <geneticsreborn:incubator>,
    <geneticsreborn:advincubator>,
    <geneticsreborn:airdispersal>
] as IItemStack[];

for machine in machines {
     machine.addTooltip("§eNOTE: §7Exports items on bottom only, can import from all other sides.");
}

// so folks don't get ahead of themselves give a fair warning
<geneticsreborn:organicmatter>.addTooltip("§eNOTE: §7Requires unlocking the Alchemistry Chemical Dissolver before progressing in Genetics Reborn!");

// update recipe to make it a little more interesting and themed for this modpack
recipes.removeByRecipeName("geneticsreborn:dragonhealthcrystal");
recipes.addShaped("geneticsreborn.dragonhealthcrystal", <geneticsreborn:dragonhealthcrystal>,
    [
        [<ore:blockDiamond>, <minecraft:end_crystal>, <ore:blockDiamond>],
        [<betteranimalsplus:trillium>, <minecraft:skull:5>, <betteranimalsplus:trillium>],
        [<ore:blockDiamond>, <minecraft:end_crystal>, <ore:blockDiamond>]
    ]
);

// add a second way to make organic substrate by brewing egg instead od organic matter with mundane potion
//brewing.addBrew(IIngredient input, IIngredient ingredient, IItemStack output, @Optional boolean hidden);
brewing.addBrew(
    <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),
    <minecraft:egg>,
    <minecraft:potion>.withTag({Potion: "geneticsreborn:substrate"}),
    false
);

// Make sure to have an Entity to provide possiblity of each Genetics Reborn Effect
// - [x] Bioluminescence=true
// - [x] Claws=true
// - [x] "Climb Walls"=true
// - [x] Cybernetics=true
// - [x] "Dragon's Breath"=true
// - [x] "Eat Grass"=true
// - [x] Efficiency=true
// - [x] "Emerald Heart"=true
// - [x] "Enabled Viruses"=true
// - [x] "Ender Dragon Health"=true
// - [x] "Explosive Exit"=true
// - [x] Fire-Proof=true
// - [x] "Flight Mutation"=true
// - [x] Haste=true
// - [x] Infinity=true
// - [x] "Invisiblity Mutation"=true
// - [x] "Item Attraction Field"=true
// - [x] "Jump Boost"=true
// - [-] "Keep Inventory"=false - nope too confusing with grave keeper and inventory pet grave pet
// - [x] "Lay Eggs"=true
// - [x] Luck=true
// - [x] Meaty=true
// - [x] Milky=true
// - [x] "Mob Sight"=true
// - [x] "More Hearts"=true
// - [x] "Night Vision"=true
// - [x] "No Fall Damage"=true
// - [x] "No Hunger"=true
// - [x] Photosynthesis=true
// - [x] "Poison Proof"=true
// - [x] Regeneration=true
// - [x] Resistance=true
// - [x] "Scare Creepers"=true
// - [x] "Scare Skeletons"=true
// - [x] "Scare Spiders"=true -- no mobs by default, so register EntitySpiderSpooky
// - [x] "Scare Zombies"=true -- no mobs by default, so register EntityZombieSpooky
// - [x] "Shoot Fireballs"=true
// - [x] Slimy=true
// - [x] Speed=true
// - [x] "Step Assist"=true
// - [x] Strength=true
// - [x] Teleporter=true
// - [x] Thorns=true
// - [x] "Water Breathing"=true
// - [x] "Wither Hit"=true
// - [x] "Wither Proof"=true
// - [x] Wooly=true
// - [x] "XP Attraction Field"=true

// Add Recipe to Alchemistry Chemical Dissolver to convert SRP infested blocks into Genetics Reborn Organic Matter
// true = relative probability
// 1 = rolls
// COMMON comes from Infested Dirt
mods.alchemistry.Dissolver.addRecipe(<srparasites:infestedstain>, true, 1,
    [
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§FCOMMON §7Parasite Sample α",entityCodeName:"EntityCaveSpider"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§FCOMMON §7Parasite Sample β",entityCodeName:"EntityCyberZombie"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§FCOMMON §7Parasite Sample γ",entityCodeName:"EntitySheep"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§FCOMMON §7Parasite Sample δ",entityCodeName:"EntityCow"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§FCOMMON §7Parasite Sample ε",entityCodeName:"EntityCreeper"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§FCOMMON §7Parasite Sample ζ",entityCodeName:"EntityHorse"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§FCOMMON §7Parasite Sample η",entityCodeName:"EntityChicken"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§FCOMMON §7Parasite Sample θ",entityCodeName:"EntitySlime"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§FCOMMON §7Parasite Sample λ",entityCodeName:"EntityPig"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§FCOMMON §7Parasite Sample ω",entityCodeName:"EntityRabbit"}) ]
    ]
);

// UNCOMMON comes from Infested Stone
mods.alchemistry.Dissolver.addRecipe(<srparasites:infestedrubble>, true, 1,
    [
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§1RARE §7Parasite Sample α",entityCodeName:"EntityBlaze"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§1RARE §7Parasite Sample β",entityCodeName:"Wither Skeleton"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§1RARE §7Parasite Sample γ",entityCodeName:"EntityDoppleganger"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§1RARE §7Parasite Sample δ",entityCodeName:"EntityEndermite"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§1RARE §7Parasite Sample ε",entityCodeName:"EntityPigZombie"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§1RARE §7Parasite Sample ζ",entityCodeName:"EntityGuardian"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§1RARE §7Parasite Sample η",entityCodeName:"EntityEnderman"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§1RARE §7Parasite Sample θ",entityCodeName:"EntityOcelot"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§1RARE §7Parasite Sample λ",entityCodeName:"EntitySpiderSpooky"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§1RARE §7Parasite Sample ω",entityCodeName:"EntityMagmaCube"}) ]
    ]
);

// RARE comes from Infested Logs
mods.alchemistry.Dissolver.addRecipe(<srparasites:infestedtrunk>, true, 1,
    [
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§5EPIC §7Parasite Sample α",entityCodeName:"MoCEntityWerewolf"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§5EPIC §7Parasite Sample β",entityCodeName:"Ender Dragon"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§5EPIC §7Parasite Sample γ",entityCodeName:"EntitySilverfish"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§5EPIC §7Parasite Sample δ",entityCodeName:"EntityWolf"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§5EPIC §7Parasite Sample ε",entityCodeName:"EntityPixie"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§5EPIC §7Parasite Sample ζ",entityCodeName:"EntityShulker"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§5EPIC §7Parasite Sample η",entityCodeName:"EntitySpinout"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§5EPIC §7Parasite Sample θ",entityCodeName:"EntityWither"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§5EPIC §7Parasite Sample λ",entityCodeName:"EntityZombieSpooky"}) ],
        [ 10, <geneticsreborn:organicmatter>.withTag({entityName:"§5EPIC §7Parasite Sample ω",entityCodeName:"EntityParrot"}) ]
    ]
);

// setup a pattern of all valid target blocks (and all metas for any block orientations in world)
var infestedResidueBlock = <blockstate:srparasites:infestremain>.matchBlock() as IBlockStateMatcher;
var infestedDirtBlock = <blockstate:srparasites:infestedstain>.matchBlock() as IBlockStateMatcher;
var infestedStoneBlock = <blockstate:srparasites:infestedrubble>.matchBlock() as IBlockStateMatcher;
var infestedLogBlock = <blockstate:srparasites:infestedtrunk>.matchBlock() as IBlockStateMatcher;
var infestedPattern = ( infestedResidueBlock | infestedDirtBlock | infestedStoneBlock | infestedLogBlock ) as IBlockStateMatcher;

// take over the icbmclassic debilitation grenade and add a new effect on top of its existing one
var blastRadius = 8;
var infestedDropChance = 0.33;
<icbmclassic:grenade:3>.displayName = "Anti-Parasite Bug Bomb";
<icbmclassic:grenade:3>.addTooltip("§eNOTE: §7Sterilizes infested blocks in radius "+blastRadius+" sphere with "+infestedDropChance*100.0+"% chance to drop some infested material.");

// requires ExplostionStartEvent (by the time ExplosionDetonateEvent triggers the grenade entity is already gone)
// so we cannot make use of affectedPositions at least in this specific case so need to triple-for-loop it manually
events.onExplosionStart(function(event as crafttweaker.event.ExplosionStartEvent) {
    if isNull(event) { return; }
    if isNull(event.world) { return; }
    var world = event.world as IWorld;
    if (world.isRemote()) { return; }

    if isNull(event.explosion) { return; }
    var explosion = event.explosion as IExplosion;

    // if isNull(event.affectedPositions) { return; }
    // var affectedPositions = event.affectedPositions;

    if isNull(event.position) { return; }
    var pos = event.position as Position3f;

    // run essentially a nop server command with specific entity target just to test for what exactly is exploding
    var result = server.commandManager.executeCommand(
        server,
        "entitydata @e[x="+pos.x+",y="+pos.y+",z="+pos.z+",name=icbm.grenade.icbmclassic:debilitation] {CustomName:BugBomb}"
    ) as int;

    if (result == 0) { return; }

    for dx in 0 to blastRadius*2+1 {
        for dy in 0 to blastRadius*2+1 {
            for dz in 0 to blastRadius*2+1 {

                // check if this block is outside the sphere radius
                if ( (dx - blastRadius) * (dx - blastRadius) +
                     (dy - blastRadius) * (dy - blastRadius) +
                     (dz - blastRadius) * (dz - blastRadius) >
                     (blastRadius * blastRadius) ) { continue; }

                var dPos = crafttweaker.util.Position3f.create(pos.x + dx - blastRadius, pos.y + dy - blastRadius, pos.z + dz - blastRadius);
                var block = world.getBlock(dPos.asBlockPos()) as IBlock;
                var blockState = block.definition.defaultState as IBlockState;

                if (infestedPattern has block.definition.defaultState) {
                    if (infestedResidueBlock has blockState) {
                        if (world.random.nextFloat() < infestedDropChance) {
                            server.commandManager.executeCommand(server, "setblock "+dPos.x+" "+dPos.y+" "+dPos.z+" minecraft:air 0 destroy");
                        } else {
                            server.commandManager.executeCommand(server, "setblock "+dPos.x+" "+dPos.y+" "+dPos.z+" weather2:sand_layer 0 replace");
                        }
                    } else if (infestedDirtBlock has blockState) {
                        if (world.random.nextFloat() < infestedDropChance) {
                            server.commandManager.executeCommand(server, "setblock "+dPos.x+" "+dPos.y+" "+dPos.z+" minecraft:air 0 destroy");
                        } else {
                            server.commandManager.executeCommand(server, "setblock "+dPos.x+" "+dPos.y+" "+dPos.z+" minecraft:sand 0 replace");
                        }
                    } else if (infestedStoneBlock has blockState) {
                        if (world.random.nextFloat() < infestedDropChance) {
                            server.commandManager.executeCommand(server, "setblock "+dPos.x+" "+dPos.y+" "+dPos.z+" minecraft:air 0 destroy");
                        } else {
                            server.commandManager.executeCommand(server, "setblock "+dPos.x+" "+dPos.y+" "+dPos.z+" minecraft:gravel 0 replace");
                        }
                    } else if (infestedLogBlock has blockState) {
                        if (world.random.nextFloat() < infestedDropChance) {
                            server.commandManager.executeCommand(server, "setblock "+dPos.x+" "+dPos.y+" "+dPos.z+" minecraft:air 0 destroy");
                        } else {
                            server.commandManager.executeCommand(server, "setblock "+dPos.x+" "+dPos.y+" "+dPos.z+" advancedrocketry:charcoallog 0 replace");
                        }
                    }
                }
            }
        }
    }
    return;
});
