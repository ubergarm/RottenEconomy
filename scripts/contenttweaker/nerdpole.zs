#loader contenttweaker
#priority 4000
#https://docs.blamejared.com/1.12/en/Mods/ContentTweaker/Vanilla/Creatable_Content/Block/
#This is the custom block for epic siege mod pillar config

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var rottenNetherrackBlock = VanillaFactory.createBlock("rotten_netherrack", <blockmaterial:cake>);
rottenNetherrackBlock.setLightValue(0);
rottenNetherrackBlock.setBlockHardness(5.0);
rottenNetherrackBlock.setBlockResistance(5.0);
rottenNetherrackBlock.setToolClass("shovel");
rottenNetherrackBlock.setToolLevel(0);
rottenNetherrackBlock.setBlockSoundType(<soundtype:cloth>);
rottenNetherrackBlock.setSlipperiness(0.90);
rottenNetherrackBlock.register();
