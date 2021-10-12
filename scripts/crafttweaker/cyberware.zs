#modloaded cyberware
// Robotic Parts (the cyberware port for 1.12.2)

<cyberware:hand_upgrades:2>.clearTooltip();
<cyberware:hand_upgrades:2>.addTooltip(format.gray("Hands mine like iron paxel"));

// Make the Human Muscle more stringy
<ore:string>.add(<cyberware:body_part:6>);

// Override the name in the resources en_us.lang as this isn't working properly here...
//<cyberware:body_part:6>.displayName = "Stringy Muscle";
//game.setLocalization("item.cyberware.body_part.muscles.name", "Stringy Muscle");
//game.setLocalization("item.cyberware.body_part.muscles", "Stringy Muscle");
