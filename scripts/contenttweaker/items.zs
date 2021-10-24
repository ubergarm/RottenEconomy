#loader contenttweaker
#priority 4000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;

import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemUpdate;
import mods.contenttweaker.SoundType;
import crafttweaker.player.IPlayer;
import mods.contenttweaker.Player;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IUser;
import crafttweaker.command.ICommandSender;
import crafttweaker.entity.IEntityLivingBase;

var grittyFlesh = VanillaFactory.createItem("gritty_flesh");
grittyFlesh.maxStackSize = 64;
grittyFlesh.register();

var jumpyFlesh = VanillaFactory.createItem("jumpy_flesh");
jumpyFlesh.maxStackSize = 64;
jumpyFlesh.register();

var enderiumCatalyst = VanillaFactory.createItem("enderium_catalyst");
enderiumCatalyst.maxStackSize = 1;
enderiumCatalyst.maxDamage = 512;
enderiumCatalyst.register();

// an item to use is in artifact slot of Advanced Rocketry Warp Core to reach Mars
var martianSecurityBeacon = VanillaFactory.createItem("martian_security_beacon");
martianSecurityBeacon.maxStackSize = 1;
martianSecurityBeacon.register();
