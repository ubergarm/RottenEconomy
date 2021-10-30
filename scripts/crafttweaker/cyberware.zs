#modloaded cyberware
// Robotic Parts (the cyberware port for 1.12.2)

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

import crafttweaker.item.IItemStack;
import crafttweaker.world.IWorld;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntity;
import crafttweaker.damage.IDamageSource;

<cyberware:hand_upgrades:2>.clearTooltip();
<cyberware:hand_upgrades:2>.addTooltip(format.gray("Hands mine like iron paxel"));

// Make the Human Muscle more stringy
<ore:string>.add(<cyberware:body_part:6>);

// Scavenged Cyberware Drop table
var numScavengedCyberwareDrops = 68;
var scavengedCyberwareDrops = {
     0: <rewired:torso>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
     1: <rewired:torso:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
     2: <cyberware:skin_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
     3: <cyberware:skin_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
     4: <cyberware:skin_upgrades:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
     5: <cyberware:skin_upgrades:3>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
     6: <rewired:skin>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
     7: <rewired:skin:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
     8: <rewired:skin:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
     9: <cyberware:cybereyes>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    10: <cyberware:cybereye_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    11: <cyberware:cybereye_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    12: <cyberware:cybereye_upgrades:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    13: <cyberware:cybereye_upgrades:3>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    14: <cyberware:cybereye_upgrades:4>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    15: <cyberware:eye_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    16: <cyberware:brain_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    17: <cyberware:brain_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    18: <cyberware:brain_upgrades:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    19: <cyberware:brain_upgrades:3>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    20: <cyberware:brain_upgrades:4>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    21: <cyberware:brain_upgrades:5>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    22: <rewired:cranium>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    23: <rewired:cranium:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    24: <cyberware:cyberheart>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    25: <cyberware:heart_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    26: <cyberware:heart_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    27: <cyberware:heart_upgrades:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    28: <cyberware:heart_upgrades:3>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    29: <cyberware:lungs_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    30: <cyberware:lungs_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    31: <cyberware:dense_battery>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    32: <cyberware:lower_organs_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    33: <cyberware:lower_organs_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    34: <cyberware:lower_organs_upgrades:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    35: <cyberware:lower_organs_upgrades:3>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    36: <cyberware:muscle_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    37: <cyberware:muscle_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    38: <cyberware:bone_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    39: <cyberware:bone_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    40: <cyberware:bone_upgrades:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    41: <cyberware:arm_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    42: <cyberware:cyberlimbs>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    43: <cyberware:cyberlimbs:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    44: <cyberware:hand_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    45: <cyberware:hand_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    46: <cyberware:hand_upgrades:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    47: <rewired:hand>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    48: <rewired:hand:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    49: <cyberware:leg_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    50: <cyberware:leg_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    51: <cyberware:cyberlimbs:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    52: <cyberware:cyberlimbs:3>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    53: <cyberware:foot_upgrades>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    54: <cyberware:foot_upgrades:1>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    55: <cyberware:foot_upgrades:2>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    56: <rewired:foot>.withTag({cyberwareQuality: "cyberware.quality.scavenged"}),
    57: <cyberware:component>,
    58: <cyberware:component:1>,
    59: <cyberware:component:2>,
    60: <cyberware:component:3>,
    61: <cyberware:component:4>,
    62: <cyberware:component:5>,
    63: <cyberware:component:6>,
    64: <cyberware:component:7>,
    65: <cyberware:component:8>,
    66: <cyberware:component:9>,
    67: <cyberware:neuropozyne>*8
} as IItemStack[int];

// An event to give more scavenged cyberware when cyberzombie or skeleton dies by explosion
events.onEntityLivingDeathDrops(function(event as crafttweaker.event.EntityLivingDeathDropsEvent) {
    if isNull(event) { return; }

    if isNull(event.entity) { return; }
    var entity = event.entity as IEntity;

    if isNull(entity.world) { return; }
    var world = entity.world as IWorld;
    if (world.isRemote()) { return; }

    if isNull(entity.definition) { return; }
    var definition = entity.definition;

    if isNull(definition.name) { return; }
    var name = definition.name;

    // add some more cyberware scavenged quality drops for these two mobs only
    if ((name != "cyberzombie") && (name != "cyberskeleton")) { return; }

    if isNull(event.damageSource) { return; }
    var damageSource = event.damageSource as IDamageSource;

    var bonusLootChances = 1;
    if (damageSource.isExplosion() == true) {
        bonusLootChances = 3;
        // server.commandManager.executeCommand(server, "say a "+name+" was exploded!");
    }

    for i in 0 to bonusLootChances {
        event.addItem(scavengedCyberwareDrops[world.random.nextInt(numScavengedCyberwareDrops)]);
        // server.commandManager.executeCommand(server, "say dropped a bonus item!");
    }
});
