#loader contenttweaker
#priority 4000
#https://docs.blamejared.com/1.12/en/Mods/ContentTweaker/Vanilla/Creatable_Content/Item/

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;

import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.IItemDestroySpeed;
import mods.contenttweaker.IItemDestroyedBlock;
import mods.contenttweaker.IItemUse;
import mods.contenttweaker.BlockState;

import crafttweaker.game.IGame;
import crafttweaker.block.IMaterial;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockProperties;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;

// introducing the scrapper tool inspired by the `7 days to die` "wrench"
var scrapperTool = VanillaFactory.createItem("scrapper_tool");
scrapperTool.maxStackSize = 1;
scrapperTool.maxDamage = 1280;
scrapperTool.toolClass = "pickaxe";
scrapperTool.toolLevel = 3;

// quick way to set a flat mining speed
scrapperTool.itemDestroySpeed = function(stack, blockState) {
    return 5.0F;
};

// TODO: keep testing this especially with block with different states
//       as it is not working quite right with OMPD Hardened Blocks Tier 1-5
// it shows block mining hardness and blast resistance on right click
scrapperTool.onItemUse = function(player, world, pos, hand, facing, blockHit) {

    var block = world.getBlock(pos) as IBlock;
    //var blockState = world.getBlockState(pos);
    var name = block.displayName;
    var definition = block.definition as IBlockDefinition;
    var hardness = definition.hardness;
    //var hardness = blockState.getBlockHardness(world, pos);
    var resistance = definition.resistance;
    // special thanks to [democat3457](https://github.com/democat3457) of
    // [Rebirth of the Night](https://www.curseforge.com/minecraft/modpacks/rebirth-of-the-night) fame
    // for adding the IBlockDefinition resistance getter https://github.com/CraftTweaker/CraftTweaker/issues/1373

    //call(String command, IPlayer player, IWorld world, boolean logToChat, boolean overridePermissions)
    Commands.call(
        'title @p actionbar {"text":"'+name+': Hardness: '+hardness+' Blast Resistance: '+resistance+'","bold":true,"color":"white"}',
        player,
        world,
        false,
        true
    );

    player.getHeldItem(hand).damage(1, player);

    return ActionResult.success();
};

// TODO can crafttweaker give it attack damage and attack speed???
// TODO: it destroys block on mining with a chance to drop its crafting ingredients

scrapperTool.register();
