#modloaded advancedrocketry
// Advanced Rocketry

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// fixup some missing libvulpes localization names
game.setLocalization("item.battery.0.name", "Basic Rocketry Battery");
game.setLocalization("item.battery.1.name", "Advanced Rocketry Battery");

// set hardness and blast resistance of launchpad and structure tower blocks
<advancedrocketry:launchpad:*>.asBlock().definition.hardness = 2.5;
<advancedrocketry:launchpad:*>.asBlock().definition.resistance = 35.0;
<advancedrocketry:structuretower:*>.asBlock().definition.hardness = 2.5;
<advancedrocketry:structuretower:*>.asBlock().definition.resistance = 35.0;

// seriously just use a block of coal don't make an ingot of coal
// says the guy who just fell into <ore:plateCarbon> hell LMAO xD
removeAndHide(<advancedrocketry:misc:1>);
<ore:ingotCarbon>.remove(<advancedrocketry:misc:1>);

recipes.removeByRecipeName("advancedrocketry:oxygenscrubber");
recipes.addShaped("advancedrocketry.oxygenscrubber", <advancedrocketry:oxygenscrubber>,
    [
        [<minecraft:iron_bars>, <ore:fanSteel>, <minecraft:iron_bars>],
        [<minecraft:iron_bars>, <ore:blockMotor>, <minecraft:iron_bars>],
        [<minecraft:iron_bars>, <ore:blockCoal>, <minecraft:iron_bars>]
    ]
);
