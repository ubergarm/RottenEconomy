#modloaded mw
// Vic's Modern Warfare

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// fixup ore dict for actual ores
<ore:oreCopper>.add(<mw:copperore>);
<ore:oreLead>.add(<mw:leadore>);
<ore:oreGraphite>.add(<mw:graphiteore>);
<ore:oreTin>.add(<mw:tinore>);

// yes this one belongs in two ore dicts for compat i guess
<ore:oreSulfer>.add(<mw:sulfurore>);
<ore:Pyrite>.add(<mw:sulfurore>);

// Fixup some display names
<mw:the_dechard>.displayName = "Deckard Revolver";
<mw:ump_45>.displayName = "UMP";

// Missing textures in JEI
hide(<mw:propanetank>);
hide(<mw:towablefloodlight>);
hide(<mw:hescobastion>);
hide(<mw:sandbag>);
hide(<mw:sandbagwall>);
hide(<mw:crossgravestone>);
hide(<mw:crossgravestone2>);
hide(<mw:crossgravestone3>);
hide(<mw:gravestoneskull>);
hide(<mw:gravestone>);
hide(<mw:scarecrow>);
hide(<mw:spookyghost>);
hide(<mw:spookyghost2>);
hide(<mw:spookyghost3>);
hide(<mw:swat_truck>);
hide(<mw:serverrackleftalt3>);
hide(<mw:doom_helmet>);
hide(<mw:doom_chest>);
hide(<mw:doom_boots>);
hide(<mw:crimsonblood>);
hide(<mw:chrome>);
hide(<mw:godwillsit>);
hide(<mw:murasaki>);
hide(<mw:evangelion>);
