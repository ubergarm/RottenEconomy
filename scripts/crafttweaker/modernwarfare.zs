#modloaded mw
// Vic's Modern Warfare

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// fixup ore dict for actual ores
<ore:oreCopper>.add(<mw:copperore>);
<ore:oreLead>.add(<mw:leadore>);
<ore:oreGraphite>.add(<mw:graphiteore>);
<ore:oreTin>.add(<mw:tinore>);
// put sulfur into two ore dicts for compat
<ore:oreSulfur>.add(<mw:sulfurore>);
<ore:orePyrite>.add(<mw:sulfurore>);
<ore:dustPyrite>.add(<mw:sulfurdust>);

// Fixup some display names
<mw:the_dechard>.displayName = "Deckard Revolver";
<mw:ump_45>.displayName = "UMP";
<mw:bullet473x33mm>.displayName = "4.73x33mm Bullet";
<mw:bullet40sw>.displayName = ".40 S&W";
<mw:bullet545x39>.displayName = "5.45x39mm Bullet";
<mw:bullet46x30mm>.displayName = "4.6x30mm Bullet";

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
