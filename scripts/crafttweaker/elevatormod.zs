#modloaded elevatorid
// Elevator Mod (ender pearl jawns)

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;

// update recipes to use oreDict'd dyes
recipes.removeByRecipeName("elevatorid:redye_pink");
recipes.removeByRecipeName("elevatorid:redye_red");
recipes.removeByRecipeName("elevatorid:redye_orange");
recipes.removeByRecipeName("elevatorid:redye_magenta");
recipes.removeByRecipeName("elevatorid:redye_white");
recipes.removeByRecipeName("elevatorid:redye_gray");
recipes.removeByRecipeName("elevatorid:redye_blue");
recipes.removeByRecipeName("elevatorid:redye_lime");
recipes.removeByRecipeName("elevatorid:redye_silver");
recipes.removeByRecipeName("elevatorid:redye_light_blue");
recipes.removeByRecipeName("elevatorid:redye_purple");
recipes.removeByRecipeName("elevatorid:redye_black");
recipes.removeByRecipeName("elevatorid:redye_green");
recipes.removeByRecipeName("elevatorid:redye_yellow");
recipes.removeByRecipeName("elevatorid:redye_cyan");
recipes.removeByRecipeName("elevatorid:redye_brown");

recipes.addShapeless("elevatorid.redye_pink", <elevatorid:elevator_pink>, [<ore:blockElevator>, <ore:dyePink>]);
recipes.addShapeless("elevatorid.redye_red", <elevatorid:elevator_red>, [<ore:blockElevator>, <ore:dyeRed>]);
recipes.addShapeless("elevatorid.redye_orange", <elevatorid:elevator_orange>, [<ore:blockElevator>, <ore:dyeOrange>]);
recipes.addShapeless("elevatorid.redye_magenta", <elevatorid:elevator_magenta>, [<ore:blockElevator>, <ore:dyeMagenta>]);
recipes.addShapeless("elevatorid.redye_white", <elevatorid:elevator_white>, [<ore:blockElevator>, <ore:dyeWhite>]);
recipes.addShapeless("elevatorid.redye_gray", <elevatorid:elevator_gray>, [<ore:blockElevator>, <ore:dyeGray>]);
recipes.addShapeless("elevatorid.redye_blue", <elevatorid:elevator_blue>, [<ore:blockElevator>, <ore:dyeBlue>]);
recipes.addShapeless("elevatorid.redye_lime", <elevatorid:elevator_lime>, [<ore:blockElevator>, <ore:dyeLime>]);
recipes.addShapeless("elevatorid.redye_silver", <elevatorid:elevator_silver>, [<ore:blockElevator>, <ore:dyeLightGray>]);
recipes.addShapeless("elevatorid.redye_light_blue", <elevatorid:elevator_light_blue>, [<ore:blockElevator>, <ore:dyeLightBlue>]);
recipes.addShapeless("elevatorid.redye_purple", <elevatorid:elevator_purple>, [<ore:blockElevator>, <ore:dyePurple>]);
recipes.addShapeless("elevatorid.redye_black", <elevatorid:elevator_black>, [<ore:blockElevator>, <ore:dyeBlack>]);
recipes.addShapeless("elevatorid.redye_green", <elevatorid:elevator_green>, [<ore:blockElevator>, <ore:dyeGreen>]);
recipes.addShapeless("elevatorid.redye_yellow", <elevatorid:elevator_yellow>, [<ore:blockElevator>, <ore:dyeYellow>]);
recipes.addShapeless("elevatorid.redye_cyan", <elevatorid:elevator_cyan>, [<ore:blockElevator>, <ore:dyeCyan>]);
recipes.addShapeless("elevatorid.redye_brown", <elevatorid:elevator_brown>, [<ore:blockElevator>, <ore:dyeBrown>]);
