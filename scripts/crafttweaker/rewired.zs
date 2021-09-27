#modloaded rewired
// ReWIRED

<rewired:meat_raw>.displayName = "Raw Long Pork";
<rewired:meat_cooked>.displayName = "Cooked Long Pork";

<rewired:hand>.clearTooltip();
<rewired:hand>.addTooltip(format.gray("Hands mine like obsidian paxel"));

<rewired:ecglass>.asBlock().definition.hardness = 20.0;
<rewired:ecglass>.asBlock().definition.resistance = 25.0;
<rewired:ecglass>.asBlock().definition.setHarvestLevel("pickaxe", 0);
