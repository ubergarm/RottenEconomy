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
// scoreboard players tag @e[type=item] add magicDirt {Item:{id:"minecraft:dirt",tag:{display:{Name:"Magic Dirt"}}}}
// execute @e[type=item,tag=magicDirt] ~ ~ ~ say Hello
// execute @a[score_Health_min=11,score_Health=20] ~ ~ ~
// execute @e[type=icbmclassic:item.grenade] ~ ~ ~ say goteem
// execute @e[name=icbm.grenade.icbmclassic:debilitation] ~ ~ ~ say goteem
// entitydata @e[type=cow,r=10] {CustomName:Duke}
```
## example entity nbt
`entitydata @e[r=3,c=2] {}` # to query a mob within 3 blocks
```json
{
    HurtByTimestamp:0,
    ForgeData: {
        srpcothimmunity:1,
        "scalinghealth:difficulty":0s
    },
    Attributes:[
        {
            Base:0.0d,
            Name:"techguns.radiationResistance"
        },
        {
            Base:100.0d,
            Name:"cyberware.tolerance"
        },
        {
            Base:40.0d,
            Name:"weight"
        },
        {
            Base:1.0d,
            Name:"max_strikes"
        },
        {
            Base:0.0d,
            Name:"armor_negation"
        },
        {
            Base:1.0d,
            Name:"impact"
        },
        {
            Base:0.0d,
            Name:"stun_armor"
        },
        {
            Base:20.0d,
            Modifiers:
            [
                {
                    UUIDMost:-4557935957806527035L,
                    UUIDLeast:-4950522221421205810L,
                    Amount:0.0d,
                    Operation:1,
                    Name:"ScalingHealth.HealthModifier"
                }
            ],
            Name:"generic.maxHealth"
        },
        {
            Base:0.0d,
            Modifiers:
            [
                {
                    UUIDMost:-5548687441136563473L,
                    UUIDLeast:-6505252887250778788L,
                    Amount:0.026784097343001505d,
                    Operation:0,
                    Name:"Random spawn bonus"
                }
            ],
            Name:"generic.knockbackResistance"
        },
        {
            Base:0.23000000417232513d,Modifiers:[],Name:"generic.movementSpeed"},
        {
            Base:2.0d,Modifiers:[],Name:"generic.armor"},
        {
            Base:0.0d,Modifiers:[],Name:"generic.armorToughness"},
        {
            Base:1.0d,Name:"forge.swimSpeed"},
        {
            Base:64.0d,
            Modifiers:[{UUIDMost:9069015471576727820L,UUIDLeast:-4633884797858615247L,Amount:0.03509479745675772d,Operation:1,Name:"Random spawn bonus"}],
            Name:"generic.followRange"},
        {
            Base:3.0d,Modifiers:[{UUIDMost:-3218372695593237220L,UUIDLeast:-8743736172551149415L,Amount:0.0d,Operation:0,Name:"ScalingHealth.DamageModifier"}],
            Name:"generic.attackDamage"},
        {
            Base:0.0d,Name:"zombie.spawnReinforcements"
        }
    ],
    Invulnerable:0b,
    FallFlying:0b,
    PortalCooldown:0,
    AbsorptionAmount:0.0f,
    FallDistance:0.0f,
    DeathTime:0s,
    ForgeCaps:{
        "nuclearcraft:capability_entity_rads":{
            consumed:0b,
            radawayBuffer:0.0d,
            shouldWarn:0b,
            radXUsed:0b,
            poisonBuffer:0.0d,
            radXCooldown:0.0d,
            radXWoreOff:0b,
            radawayCooldown:0.0d,
            recentRadawayAddition:0.0d,
            maxRads:1000.0d,
            setMaxRads:1b,
            radawayBufferSlow:0.0d,
            externalRadiationResistance:0.0d,
            messageCooldownTime:0,
            totalRads:1.522540535467117E-7d,
            radiationLevel:1.644772021898704E-10d,
            recentPoisonAddition:0.0d,
            recentRadXAddition:0.0d,
            radiationImmunityStage:0b,
            giveGuidebook:0b,
            internalRadiationResistance:0.0d,
            radiationImmunityTime:0.0d
        },
        "dsurround:data":{a:0b,f:0b},
        "geneticsreborn:genes":{},
        "mahoutsukai:mahou":{MAHOUTSUKAI_PLAYER_PREV_YAW:0.0f,MAHOUTSUKAI_SHOW_MAHOU:1b,MAHOUTSUKAI_MANA_FULL:1b,MAHOUTSUKAI_MANA_UP_COUNTER:100,MAHOUTSUKAI_PLAYER_POSSESSING:0b,MAHOUTSUKAI_AUTHORITY_HIT:0b,MAHOUTSUKAI_LAST_RECIPE_CLOTH:0b,MAHOUTSUKAI_PLAYER_HAS_MAGIC:0b,MAHOUTSUKAI_PLAYER_CHARGE_RATE:0.1d,MAHOUTSUKAI_PLAYER_DAMAGE_EXCHANGE_USES:0,MAHOUTSUKAI_PLAYER_PREV_PITCH:0.0f,MAHOUTSUKAI_KODOKU_VALUE:0,MAHOUTSUKAI_PLAYER_MAX_MANA:100,MAHOUTSUKAI_PLAYER_STORED_MANA:100,MAHOUTSUKAI_PLAYER_OLD_DIMENSION:0,MAHOUTSUKAI_PLAYER_PROTECTIVE_DISPLACEMENT_USES:0,MAHOUTSUKAI_CANCEL_TIME:-1L,MAHOUTSUKAI_PLAYER_DEATH_COLLECTION_USES_LEFT:0.0f},
        "techguns:deathtype":{},
        "epicsiegemod:modified_handler":{
            data:{
                "epicsiegemod:general_spawn":{
                    hasModifiers:1b,
                    checkMobBomb:1b
                }
            },
            modified:0b
        },
        "geneticsreborn:maxhealth":{BonusHealth:0.0f}},
        HandDropChances:[0.085f,0.085f],PersistenceRequired:1b,ConversionTime:-1,Motion:[0.0d,-0.0784000015258789d,0.0d],Leashed:0b,UUIDLeast:-4675304839776730736L,Health:20.0f,LeftHanded:0b,Air:300s,OnGround:1b,Dimension:0,Rotation:[90.855316f,0.0f],UpdateBlocked:0b,HandItems:[{},{}],ProfessionName:"minecraft:butcher",ArmorDropChances:[0.085f,0.085f,0.085f,0.085f],Profession:4,UUIDMost:-7954192744790079271L,Pos:[80.76065274123268d,71.0d,-243.49317922870028d],CanBreakDoors:0b,Fire:-1s,ArmorItems:[{},{},{},{}],CanPickUpLoot:0b,HurtTime:0s,SurgeAABB:[80.46065272931175d,71.0d,-243.79317924062116d,81.0606527531536d,72.95000004768372d,-243.19317921677938d]}
```

## JVM profiling
```bash
## list all java programs running with jvm process status tool
jps -l
## show all threads and what they are doing and check thread locks
jstack <pid> | less
## https://github.com/ajermakovics/jvm-mon/releases
jvm-mon
```

## Matter Overdrive Structures Notes
| Map | Generation Category | weight |
| Android House | Adventure | 1.0    |
| Cargo Ship | Rare | 0.11125 |
| Crashed Airship | Adventure | 1 |
| Sand Pit | Adventure | 1 |
| Underwater Base | rare | 1 | $OCEAN is all of them


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
