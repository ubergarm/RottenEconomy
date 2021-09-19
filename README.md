7 Days To Fly
===
Dual-wielding. Zombies. Cyborgs. Androids. Guns. Head-shots. Rockets. Nukes.

Open video link below in new tab to watch the quick look!
[![IMG_ALT](https://img.youtube.com/vi/eROl4nQ_mqw/0.jpg)](https://www.youtube.com/watch?v=eROl4nQ_mqw)

Build a zombie proof base outside of town, search dangerous urban areas
for loot, equip yourself with powerful weapons and armor, skill up,
improve your defenses, become a cyborg, android or clone; finally
craft high tech machines and rocket ships to escape the planet!

*WARNING*: server-wide difficulty increases and expect challenges after every 7th day!

## Client Installation

* 6GB RAM minimum for client and server
* Optionally **MANUALLY download** [OptiFine 1.12.2 HD U G5 jar](http://adfoc.us/serve/sitelinks/?id=475250&url=http://optifine.net/adloadx?f=OptiFine_1.12.2_HD_U_G5.jar&x=1630) or newer into `instances/7 Days To Fly/mods/` folder.
* Defaults turn off fog, clouds and auto-jump.
* Defaults Dynamic Lighting to FANCY but at least use FAST.
* If your potato can handle it, turn up render distance a bit to 10 or 12.

## Default Client Controls
Most of these can be reconfigured in the controls menu or in client `.cfg` files.

#### First Aid
* `h` - check body part health (first time shows fake tutorial data)

#### Tech Guns
(be sure to check out the new tab with bullets icon in inventory)
* `r` reload gun or clip in hand
* `b` switch between semi/burst/auto fire
* `n` toggle night vision goggles

#### Epic Fight
* `(backtick/grave)` toggle mining mode / battle stance
* `LSHIFT` rolling dodge (*only after reading skillbook*)
* `Left Click` tap to base attack, long press with full meter to special attack

#### Elenai Dodge 2
* `double tap a,s,d` to dodge

#### Wall Jump
* `Left Shift` hold to cling to wall and release to wall jump

#### Shoulder Surfing
* `v` toggle 1st person and enhanced 3rd person view with adaptive crosshairs

#### Ping
* `Middle Click` open ping menu to notify friends of points of interest

#### Grave Keeper
* `Right Click` retrieve your grave (don't try to break it)

#### Player Revive
* `Right Click` hold 5 seconds to revive downed friend

#### Improved Backpacks
* `b` Open Backpack

#### Tool Belt
* `k` Open Belt Slot Inventory
* `Mouse Button 4` Swap Tool

#### Advancements
* `L` open progress log

#### OptiFine
* `c` zoom in

#### Voxel Map
* `=` cycle zoom level
* `m` open big map

#### Misc
* `F2` screenshot
* `F5` cycle camera perspective
* `F7` cycle light level overlays
* `F9` cycle chunk display overlays

#### Tip
You have to to map other mod keys as needed and can use `Escape` key to unbind something.

## Server Installation
Make sure to download the server zip file matching the same version as the client under Files.

Read the EULA, configure the startup script for the amount of RAM
available on your server, and edit the `server.properties`. Linux example:

* `unzip 7DaysToFly-Server-v0.70-Minecraft-v1.12.2.zip`
* `cd 7DaysToFly`
* `cp server.properties.example server.properties`
* `echo "eula=true" > eula.txt`
* `./start.sh`

Windows will be very similar, but you might need a `start.bat` script instead.

## Server Commands
Make a team and join you and your friends:

* `/scoreboard teams add MyTeamName MyTeamName`
* `/scoreboard teams join MyTeamName player1name`
* `/scoreboard teams join MyTeamName player2name`
* `/scoreboard teams join MyTeamName player3name`
* `/scoreboard teams option MyTeamName friendlyfire false`

Misc commands:

* `/omshareowner add username` add friends so they don't shred themselves on your OMPD fences
* `/gamerule keepSkills true` only have to read epic fight's skill book once

It is highly recommended to pregenerate chunks for both stability
and performance!  Example commands to start/stop generating 64 chunk
radius around your x/z location in the Overworld dimension (you need to
have OPs).

* `/pregen gen startradius square ~ ~ 64 0 TerrainOnly`
* `/pregen stop`
* `/pregen clear`

## Mods
Please support our mod developers! They are the creative inspiration
and perspiration for many beautiful gems and works of art! Check out
their project pages and follow the links to donate, follow, subscribe,
and support them however feels right to you!  Thanks and have fun!

If you want to throw me some coin, check out my book at
[emptyduck.com](https://emptyduck.com) or give directly through paypal
using the `Donate` button above in the `About Project` box.

Complete list of mods with authors and links available in Files under Related Projects.

## Resource Packs
I highly recommend these three unobtrusive resource packs which come pre-installed in this order:

* [Nuka Cola Potions](https://www.curseforge.com/minecraft/texture-packs/nuka-cola/files/2560603)
* [Tissou's Zombie Pack](https://www.curseforge.com/minecraft/texture-packs/tissous-zombie-pack-optifine-1-7x-1-16/files/2986604)
* [Faithful 32x Modded Edition](http://f32.me/) - or something similar with some mod coverage

## Known Bugs
Report bugs on the github issue tracker not in the comments when possible please.

* spartan shield bash does not work with Epic Fight battle stance
* RF power does not drain from weapons with Epic Fight battle stance
* some armor models and other minor visual glitches with Epic Fight battle stance

## References
* [7 Days to Fly](https://www.curseforge.com/minecraft/modpacks/seven-days-to-fly) - this zombie tech modpack
* [Sky Magic Islands](https://www.curseforge.com/minecraft/modpacks/sky-magic-islands) - my magic modpack
* [7 Days to Die](https://store.steampowered.com/app/251570/7_Days_to_Die/) - inspirational co-op survival crafting game

## License
[![License](https://i.creativecommons.org/l/by-nc/3.0/88x31.png)](https://github.com/ubergarm/SkyMagicIslands/blob/master/LICENSE)
[CC BY-NC 3.0](https://creativecommons.org/licenses/by-nc/3.0/)
Creative Commons Attribution-NonCommercial 3.0 Unported
