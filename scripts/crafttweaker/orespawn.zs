// Unify Ores

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

# priority of mods to keep ores while disabling worldgen and hiding others from JEI
# minecraft
# thermalfoundation
# nuclearcraft
# mekanism
# techreborn
# ic2
# rockhounding
# matteroverdrive
# libvulpes (advanced rocketry)
# pocket nether (overworld quartz)
# techguns

# Ore entries for <ore:oreGold> :
# - [✔] -<minecraft:gold_ore>

# Ore entries for <ore:oreIron> :
# - [✔] -<minecraft:iron_ore>

# Ore entries for <ore:oreLapis> :
# - [✔] -<minecraft:lapis_ore>

# Ore entries for <ore:oreDiamond> :
# - [✔] -<minecraft:diamond_ore>

# Ore entries for <ore:oreRedstone> :
# - [✔] -<minecraft:redstone_ore>

# Ore entries for <ore:oreEmerald> :
# - [✔] -<minecraft:emerald_ore>

# Ore entries for <ore:oreQuartz> :
# - [✔] -<minecraft:quartz_ore>

# Ore entries for <ore:oreCoal> :
# - [✔] -<minecraft:coal_ore>

# Ore entries for <ore:oreCopper> :
# - [✔] -<thermalfoundation:ore>
# - [x] -<ic2:resource:1>
# - [x] -<mekanism:oreblock:1>
# - [x] -<techreborn:ore2>
# - [x] -<nuclearcraft:ore>
# - [x] -<libvulpes:ore0:4>
# - [x] -<techguns:basicore>
removeAndHide(<ic2:resource:1>);
removeAndHide(<mekanism:oreblock:1>);
removeAndHide(<techreborn:ore2>);
removeAndHide(<nuclearcraft:ore>);
removeAndHide(<libvulpes:ore0:4>);
#removeAndHide(<techguns:basicore>);

# Ore entries for <ore:oreLead> :
# - [✔] -<thermalfoundation:ore:3>
# - [x] -<ic2:resource:2>
# - [x] -<techreborn:ore:12>
# - [x] -<nuclearcraft:ore:2>
# - [x] -<techguns:basicore:2>
removeAndHide(<ic2:resource:2>);
removeAndHide(<techreborn:ore:12>);
removeAndHide(<nuclearcraft:ore:2>);
#removeAndHide(<techguns:basicore:2>);

# Ore entries for <ore:oreTin> :
# - [✔] -<thermalfoundation:ore:1>
# - [x] -<ic2:resource:3>
# - [x] -<mekanism:oreblock:2>
# - [x] -<techreborn:ore2:1>
# - [x] -<nuclearcraft:ore:1>
# - [x] -<libvulpes:ore0:5>
# - [x] -<techguns:basicore:1>
removeAndHide(<ic2:resource:3>);
removeAndHide(<mekanism:oreblock:2>);
removeAndHide(<techreborn:ore2:1>);
removeAndHide(<nuclearcraft:ore:1>);
removeAndHide(<libvulpes:ore0:5>);
#removeAndHide(<techguns:basicore:1>);

#Ore entries for <ore:oreSilver> :
# - [✔] -<thermalfoundation:ore:2>
# - [x] -<techreborn:ore:13>
removeAndHide(<techreborn:ore:13>);

# Ore entries for <ore:oreUranium> :
# - [x] -<ic2:resource:4>
# - [✔] -<nuclearcraft:ore:4>
# - [x] -<techguns:basicore:4>
removeAndHide(<ic2:resource:4>);
#removeAndHide(<techguns:basicore:4>);

# Ore entries for <ore:oreDilithium> :
# - [✔] -<libvulpes:ore0>
# - [x] -<matteroverdrive:dilithium_ore>
removeAndHide(<matteroverdrive:dilithium_ore>);
removeAndHide(<matteroverdrive:dilithium_crystal>);
<libvulpes:ore0>.displayName = "Dilithium";
<libvulpes:productdust>.displayName = "Pure Dilithium";
<libvulpes:productgem>.displayName = "Pure Dilithium";

# Ore entries for <ore:oreTritanium> :
# - [✔] -<matteroverdrive:tritanium_ore>

# Ore entries for <ore:oreOsmium> :
# - [✔] -<mekanism:oreblock>

# Ore entries for <ore:oreThorium> :
# - [✔] -<nuclearcraft:ore:3>

# Ore entries for <ore:oreBoron> :
# - [✔] -<nuclearcraft:ore:5>

# Ore entries for <ore:oreLithium> :
# - [✔] -<nuclearcraft:ore:6>

# Ore entries for <ore:oreMagnesium> :
# - [✔] -<nuclearcraft:ore:7>

# Ore entries for <ore:oreAluminum> :
# - [✔] -<thermalfoundation:ore:4>
# - [x] -<libvulpes:ore0:9>
removeAndHide(<libvulpes:ore0:9>);

# Ore entries for <ore:oreNickel> :
# - [✔] -<thermalfoundation:ore:5>

# Ore entries for <ore:orePlatinum> :
# - [✔] -<thermalfoundation:ore:6>

# Ore entries for <ore:oreIridium> :
# - [✔] -<thermalfoundation:ore:7>
# - [x] -<techreborn:ore:1>
# - [x] -<libvulpes:ore0:10>
removeAndHide(<techreborn:ore:1>);
removeAndHide(<libvulpes:ore0:10>);

# Ore entries for <ore:oreMithril> :
# - [✔] -<thermalfoundation:ore:8>

# Ore entries for <ore:oreClathrateOilSand> :
# - [✔] -<thermalfoundation:ore_fluid>
# - [✔] -<thermalfoundation:ore_fluid:5>

# Ore entries for <ore:oreClathrateOilShale> :
# - [✔] -<thermalfoundation:ore_fluid:1>

# Ore entries for <ore:oreClathrateRedstone> :
# - [✔] -<thermalfoundation:ore_fluid:2>

# Ore entries for <ore:oreClathrateGlowstone> :
# - [✔] -<thermalfoundation:ore_fluid:3>

# Ore entries for <ore:oreClathrateEnder> :
# - [✔] -<thermalfoundation:ore_fluid:4>

# Ore entries for <ore:oreGalena> :
# - [✔] -<techreborn:ore>

# Ore entries for <ore:oreRuby> :
# - [✔] -<techreborn:ore:2>

# Ore entries for <ore:oreSapphire> :
# - [✔] -<techreborn:ore:3>
# - [x] -<practicallogistics2:sapphireore>
removeAndHide(<practicallogistics2:sapphireore>);

# Ore entries for <ore:oreBauxite> :
# - [✔] -<techreborn:ore:4>

# Ore entries for <ore:orePyrite> :
# - [✔] -<techreborn:ore:5>

# Ore entries for <ore:oreCinnabar> :
# - [✔] -<techreborn:ore:6>

# Ore entries for <ore:oreSphalerite> :
# - [✔] -<techreborn:ore:7>

# Ore entries for <ore:oreTungsten> :
# - [✔] -<techreborn:ore:8>

# Ore entries for <ore:oreSheldonite> :
# - [✔] -<techreborn:ore:9>

# Ore entries for <ore:orePeridot> :
# - [✔] -<techreborn:ore:10>

# Ore entries for <ore:oreSodalite> :
# - [✔] -<techreborn:ore:11>

# Ore entries for <ore:oreRutile> :
# - [✔] -<libvulpes:ore0:8>

# Ore entries for <ore:oreTitanium> :
# - [✔] -<libvulpes:ore0:8>
# - [x] -<techguns:itemshared:78>
#removeAndHide(<techguns:itemshared:78>);

# Ore entries for <ore:oreResonating> :
# - [✔] -<deepresonance:resonating_ore>

# Ore entries for <ore:oreUninspected> :
# - [✔] -<rockhounding_chemistry:uninspected_mineral>

# Ore entries for <ore:oreTitaniumIron> :
# - [✔] -<techguns:basicore:3>

# Ore entries for <ore:oreIllmenite> :
# - [✔] -<techguns:basicore:3>
