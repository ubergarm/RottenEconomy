#modloaded deepresonance
// Deep Resonance

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockPlaceEvent;
import crafttweaker.block.IBlock;
import crafttweaker.event.IBlockEvent;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockProperties;
import crafttweaker.data.IData;
import crafttweaker.util.IRandom;

// No Ore in Nether or End
removeAndHide(<deepresonance:resonating_ore:1>);
removeAndHide(<deepresonance:resonating_ore:2>);

## Make manually spawned Resonating Crystals have decent random NBT tags when harvested
## https://docs.blamejared.com/1.12/en/Vanilla/World/IWorld/
<deepresonance:resonating_crystal>.addTooltip("§4NOTE: §7Correct values generate upon first placing crystal in world.");
events.onBlockPlace(function(event as crafttweaker.event.BlockPlaceEvent) {
    var world = event.world;
    if(world.isRemote()) { return; }

    var pos = event.position;
    var block = world.getBlock(pos);
    if isNull(block.data) { return; }

    var state = world.getBlockState(pos) as IBlockState;
    if isNull(state) { return; }

    var data = block.data as IData;
    if isNull(data.id) { return; }

    if (data.id.asString() == "deepresonance:resonating_crystal") {

        // check to see if those janky default NBT tags are on it
        if (data.strength.asInt() == 1 &&
            data.power.asInt() == 1 &&
            data.efficiency.asInt() == 1 &&
            data.purity.asInt() == 1) {

            // if so override them with some sane but buffed random values
            // https://github.com/McJtyMods/DeepResonance/blob/1.12/src/main/java/mcjty/deepresonance/blocks/crystals/ResonatingCrystalTileEntity.java#L419
            val override as IData = {
                strength : world.random.nextFloat() * 6.0F + 0.27F,
                power : world.random.nextFloat() * 55.0F + 8.27F,
                efficiency : world.random.nextFloat() * 6.0F + 0.35F,
                purity: world.random.nextFloat() * 20.0F + 5.5F
            };

            // worldObj.setBlockState(IBlockState state, IData tileEntityData, IBlockPos pos)
            world.setBlockState(state, data + override, pos);
        }
    }
});
