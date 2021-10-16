Rotten Economy: 7 Days to Fly
===
This progression design document is a work in progress.

## Example Resource Progression
One possible resource progression might look like this, but really how you
expand, power, organize, supply, and defend your base is up to you! There
are more than one mod option for most aspects of the game. Have Fun!

0. Use akashic tome to bring out book of skills and bank all XP until you decide how to level up.
1. Build a small zombie digging proof base to survive through the night.
2. Hunt zombies and loot buildings until you have enough iron and basic materials. (mine/quarry if you want)
3. Build Cyberware Engineering Table and Tech Guns Crusher to dismantle and recycle unused drops.
4. Build Alchemistry Chemical Dissolver to process all your rotten, gritty, and jumpy flesh. (custom recipes)
5. Expand your base and defenses.
6. Build Rock Hounding Lab Blender to upgrade rotten flesh using tier 1 recipe.
7. Build Tech Guns Chem Lab to begin Tier 2 rotten flesh upgrade path.
8. Build Rock Hounding Lab Oven and Precipitation Chamber to finish the Tier 2 recipe chain.
9. Use Mekanism machines to scale up resource output.

## Tier 1 - Starting Off
#### Goal: Setup a zombie proof base and survive
* Craft Shelter Blocks
* Craft Simple Bullets
* Craft Simple Weapons
* Craft Simple Armors
* Craft Simple Foods

#### Mods
* OMPD Hardened Blocks / Fences
* Vanilla
* Spartan Weaponry
* Culinary Construct

## Tier 2 - Early Game
#### Goal: Base expansion and establish economy
* Craft Shelter Blocks
* Craft Base Defenses
* Find skills / supplies raiding city
* Automate vanilla and basic modded ores/drops

#### Mods
* Tech Guns Turrets / Modular Turrets
* Rockhounding Chemistry

## Tier 3 - Mid Game
#### Goal: Full Automation
* Inventory System
* Automatic Resource Generation of most ores/drops

#### Mods
* Refined Storage / Simple Storage
* Tech Guns Ore Drills

## Tier 4 - Late Game
#### Goal: Fly to the Moon
* Build a Rocket Ship
* Build space suits

#### Mods
* Advanced Rocketry

## Tier 5 - End Game
#### Goal: Replicate Items and Nuke Earth
* Harvest Dilithium Crystals
* Harvest Tritanium Ore

#### Mods
* Matter Overdrive
* ICBM

#### Internal Command Testing
```
# create a scoreboard variable to auto track player health
# /scoreboard objectives add <objective> <criteria> [displayName]
# player must be in survival once to be on scoreboard, tracks current health not max
/scoreboard objectives add Health health Health # player must be in survival once to be on scoreboard, tracks current health not max
/scoreboard objectives add Deaths deathCount Deaths
#/scoreboard objectives add TotalMobKills totalKillCount TotalMobKills
/scoreboard objectives list
# /scoreboard objectives remove Health
# this next command adds 0 to Deaths which implicitly adds all new players onto scoreboard
#/scoreboard players add @a Deaths 0
/scoreboard players list
/scoreboard players list *
/execute @a[score_Health_min=10,score_Health=20] ~ ~ ~ say I have between [10,20] inclusive current health
# final command
# exponential (1.02)^n nightly increase in difficulty
/execute @a[score_Health_min=11,score_Health=20] ~ ~ ~ scalinghealth world_difficulty add 1.22 @p
/execute @a[score_Health_min=21,score_Health=30] ~ ~ ~ scalinghealth world_difficulty add 1.49 @p
/execute @a[score_Health_min=31,score_Health=40] ~ ~ ~ scalinghealth world_difficulty add 1.81 @p
/execute @a[score_Health_min=41,score_Health=50] ~ ~ ~ scalinghealth world_difficulty add 2.21 @p
/execute @a[score_Health_min=51,score_Health=60] ~ ~ ~ scalinghealth world_difficulty add 2.69 @p
/execute @a[score_Health_min=61,score_Health=70] ~ ~ ~ scalinghealth world_difficulty add 3.28 @p
/execute @a[score_Health_min=71,score_Health=80] ~ ~ ~ scalinghealth world_difficulty add 4.00 @p
/execute @a[score_Health_min=81,score_Health=90] ~ ~ ~ scalinghealth world_difficulty add 4.88 @p
/execute @a[score_Health_min=91,score_Health=100] ~ ~ ~ scalinghealth world_difficulty add 5.94 @p
/execute @a[score_Health_min=101] ~ ~ ~ scalinghealth world_difficulty add 7.24 @p
```

## PackDev References
* [Inspirations Cauldron](https://docs.blamejared.com/1.12/en/Mods/Modtweaker/Inspirations/Handlers/Cauldron/)
* [Rockhounding Chemistry](https://github.com/GlobbyPotato/Rockhounding_Chemistry/blob/1.12.2/CraftTweaker_chemistry_script_1_12_2.zs)
* [Alchemistry](https://docs.blamejared.com/1.12/en/Mods/Alchemistry/Atomizer/)
* [Mekanism](https://docs.blamejared.com/1.12/en/Mods/Mekanism/Chemical_Crystallizer/)
* [Thermal Expansion](https://docs.blamejared.com/1.12/en/Mods/Modtweaker/ThermalExpansion/Dynamos/CompressionDynamo/) (through Modtweaker)
* [IC2](https://docs.blamejared.com/1.12/en/Mods/IC2Tweaker/Blast_Furnace/)
* [Tech Reborn](https://docs.blamejared.com/1.12/en/Mods/Tech_Reborn/Alloy_Smelter/)
* [Tech Guns](https://github.com/pWn3d1337/Techguns2/wiki/Crafttweaker-Machine-Recipes)
* [Advanced Rocketry Planets and Asteroids](http://arwiki.dmodoomsirius.me/AdvancedRocketry/1.12.2/config/index.html)
* [Advanced Rocketry Recipe Tweaking](http://arwiki.dmodoomsirius.me/AdvancedRocketry/1.12.2/config/RecipeConfiguration.html)
* [Nuclearcraft](https://github.com/turbodiesel4598/NuclearCraft/blob/1.12.2o/craftTweaker.txt)
* [QMD Quantum Minecraft Dynamics](https://github.com/Lach01298/QMD/wiki/Crafttweaker-Integration)
