#loader contenttweaker
#priority 4000
#https://docs.blamejared.com/1.12/en/Mods/ContentTweaker/Vanilla/Creatable_Content/Block/
#This is the custom block for epic siege mod pillar config

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

// nerd pole for epic siege mod pillaring mobs
var rottenNetherrackBlock = VanillaFactory.createBlock("rotten_netherrack", <blockmaterial:cake>);
rottenNetherrackBlock.setLightValue(0);
rottenNetherrackBlock.setBlockHardness(2.5);
rottenNetherrackBlock.setBlockResistance(2.5);
rottenNetherrackBlock.setToolClass("shovel");
rottenNetherrackBlock.setToolLevel(0);
rottenNetherrackBlock.setBlockSoundType(<soundtype:cloth>);
rottenNetherrackBlock.setSlipperiness(0.90);
rottenNetherrackBlock.register();

// a block too hard to mine but you can break it with breaching charges or big explosions
var plasteelTritaniumPlate = VanillaFactory.createBlock("plasteel_tritanium_plate", <blockmaterial:iron>);
plasteelTritaniumPlate.setLightValue(0);
plasteelTritaniumPlate.setBlockHardness(1000000);
plasteelTritaniumPlate.setBlockResistance(100);
plasteelTritaniumPlate.setToolClass("pickaxe");
plasteelTritaniumPlate.setToolLevel(5);
plasteelTritaniumPlate.setBlockSoundType(<soundtype:metal>);
plasteelTritaniumPlate.register();
