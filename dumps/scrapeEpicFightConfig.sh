#!/bin/bash
# Scrape a crafttweaker.log after running `/ct recipes` into an Epic Fight config file
# https://github.com/ubergarm/

## Begin Config
echo "# Configuration file"
echo ""
echo "custom {"
echo ""


## Begin Weapons
echo "    custom_weaponry {"
echo ""

## battle axes
cat recipes.log  | grep -oP "<\K\w*:\w*battleaxe\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=GREATSWORD"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=8.0"
    echo "            I:max_strikes=4"
    echo "        }"
    echo ""
done

## throwing knifes and throwing axes
cat recipes.log  | grep -oP "<\K\w*:\w*throwing\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=SWORD"
    echo ""
    echo "            onehand {"
    echo "                D:armor_negation=0.0"
    echo "                D:impact=1.0"
    echo "                I:max_strikes=0"
    echo "            }"
    echo ""
    echo "            twohand {"
    echo "                D:armor_negation=0.0"
    echo "                D:impact=0.5"
    echo "                I:max_strikes=0"
    echo "            }"
    echo "        }"
    echo ""
done

## Fist-like weapons like boxing gloves and brass knuckles and stuff
cat recipes.log  | grep -oP "<\K\w*:\w*caestus\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=FIST"
    echo ""
    echo "            onehand {"
    echo "                D:armor_negation=25.0"
    echo "                D:impact=4.0"
    echo "                I:max_strikes=0"
    echo "            }"
    echo ""
    echo "            twohand {"
    echo "                D:armor_negation=25.0"
    echo "                D:impact=3.0"
    echo "                I:max_strikes=0"
    echo "            }"
    echo "        }"
    echo ""
done

## axes
cat recipes.log  | grep -oP "<\K\w*:[\w\.]*axe\w*" | grep -v -e battle -e throwing -e pick -e paxel | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=AXE"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=1.5"
    echo "            I:max_strikes=0"
    echo "        }"
    echo ""
done

## pick axes (omit spaxel)
cat recipes.log  | grep -oP "<\K\w*:[\w\.]*pick\w*" | grep -v spaxel | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=PICKAXE"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=0.5"
    echo "            I:max_strikes=0"
    echo "        }"
    echo ""
done

## hoes
cat recipes.log  | grep -oP "<\K\w*:[\w\.]*hoe\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=HOE"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=0.5"
    echo "            I:max_strikes=0"
    echo "        }"
    echo ""
done

## shovels
cat recipes.log  | grep -oP "<\K\w*:[\w\.]*shovel\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=SHOVEL"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=0.5"
    echo "            I:max_strikes=0"
    echo "        }"
    echo ""
done

## excavators
cat recipes.log  | grep -oP "<\K\w*:[\w\.]*excavator\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=SHOVEL"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=0.5"
    echo "            I:max_strikes=0"
    echo "        }"
    echo ""
done

## pickaxe like drills
cat recipes.log  | grep -oP "<\K\w*:\w*drill\w*" | grep -v -e rocketry -e innovation -e techguns | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=PICKAXE"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=0.5"
    echo "            I:max_strikes=0"
    echo "        }"
    echo ""
done

## paxels and spaxels
cat recipes.log  | grep -oP "<\K\w*:\w*paxel\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=AXE"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=1.0"
    echo "            I:max_strikes=0"
    echo "        }"
    echo ""
done

## regular knives and daggers and javelins and boomerangs and sickles
cat recipes.log  | grep -o -e "\w*:\w*knife\w*" -e "\w*:\w*dagger\w*" -e "\w*:\w*javelin\w*" -e "\w*:\w*boomerang\w*" -e "\w*:\w*\.*sickle\w*" | grep -v -e pizza -e throwing | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=SWORD"
    echo ""
    echo "            onehand {"
    echo "                D:armor_negation=0.0"
    echo "                D:impact=1.0"
    echo "                I:max_strikes=0"
    echo "            }"
    echo ""
    echo "            twohand {"
    echo "                D:armor_negation=0.0"
    echo "                D:impact=0.5"
    echo "                I:max_strikes=0"
    echo "            }"
    echo "        }"
    echo ""
done

## greatswords
cat recipes.log  | grep -oP "<\K\w*:\w*greatsword\w*" | grep -v epicfight | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=GREATSWORD"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=4.3"
    echo "            I:max_strikes=4"
    echo "        }"
    echo ""
done

## swords
cat recipes.log  | grep -oP "<\K\w*:[\w\.]*sword\w*" | grep -v -e great -e epicfight | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=SWORD"
    echo ""
    echo "            onehand {"
    echo "                D:armor_negation=0.0"
    echo "                D:impact=2.0"
    echo "                I:max_strikes=2"
    echo "            }"
    echo ""
    echo "            twohand {"
    echo "                D:armor_negation=0.0"
    echo "                D:impact=1.5"
    echo "                I:max_strikes=2"
    echo "            }"
    echo "        }"
    echo ""
done

## sabers and katanas
cat recipes.log  | grep -o -e "\w*:\w*saber\w*" -e "\w*:\w*katana\w*" | grep -v epicfight | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=KATANA"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=3.0"
    echo "            I:max_strikes=3"
    echo "        }"
    echo ""
done

## spears lances pikes
cat recipes.log  | grep -o -e "\w*:\w*spear\w*" -e "\w*:lance\w*" -e "\w*:pike\w*" | grep -v -e epicfight -e adhooks | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=SPEAR"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=2.5"
    echo "            I:max_strikes=1"
    echo "        }"
    echo ""
done

## maces and spartan weaponry hammers and clubs
cat recipes.log  | grep -o -e "\w*:\w*mace\w*" -e "thermalfoundation:tool\.hammer\w*" -e "spartanweaponry:hammer\w*" -e "spartanweaponry:\w*club\w*" | grep -v epicfight | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=SWORD"
    echo ""
    echo "            onehand {"
    echo "                D:armor_negation=25.0"
    echo "                D:impact=4.0"
    echo "                I:max_strikes=2"
    echo "            }"
    echo ""
    echo "            twohand {"
    echo "                D:armor_negation=25.0"
    echo "                D:impact=3.0"
    echo "                I:max_strikes=2"
    echo "            }"
    echo "        }"
    echo ""
done

## warhammers
cat recipes.log  | grep -oP "<\K\w*:\w*warhammer\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=GREATSWORD"
    echo "            D:armor_negation=50.0"
    echo "            D:impact=12.0"
    echo "            I:max_strikes=3"
    echo "        }"
    echo ""
done

## halberds glaives quarterstaffs
cat recipes.log  | grep -o -e "\w*:\w*halberd\w*" -e "\w*:\w*glaive\w*" -e "\w*:\w*staff\w*" | grep -v -e epicfight -e quarter| sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=SPEAR"
    echo "            D:armor_negation=15.0"
    echo "            D:impact=3.5"
    echo "            I:max_strikes=2"
    echo "        }"
    echo ""
done

## atomic disassembler
cat recipes.log  | grep -oP "<\K\w*:atomicdisassembler" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=GREATSWORD"
    echo "            D:armor_negation=25.0"
    echo "            D:impact=20.0"
    echo "            I:max_strikes=0"
    echo "        }"
    echo ""
done

## techguns misc
## probably better off without epic-fight just right-clicking lmao
cat recipes.log  | grep -o -e "techguns:chainsaw" -e "techguns:miningdrill"| sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=GREATSWORD"
    echo "            D:armor_negation=15.0"
    echo "            D:impact=3.0"
    echo "            I:max_strikes=3"
    echo "        }"
    echo ""
done

## one off hard coded weapons
## cyberware katana
echo "        cyberware.katana {"
echo "            S:registry_name=cyberware:katana"
echo "            S:weapon_type=SWORD"
echo ""
echo "            onehand {"
echo "                D:armor_negation=0.0"
echo "                D:impact=3.5"
echo "                I:max_strikes=4"
echo "            }"
echo ""
echo "            twohand {"
echo "                D:armor_negation=0.0"
echo "                D:impact=2.5"
echo "                I:max_strikes=4"
echo "            }"
echo "        }"
echo ""

## mahoutsukai caliburn
echo "        mahoutsukai.caliburn {"
echo "            S:registry_name=mahoutsukai:caliburn"
echo "            S:weapon_type=SWORD"
echo ""
echo "            onehand {"
echo "                D:armor_negation=0.0"
echo "                D:impact=2.0"
echo "                I:max_strikes=2"
echo "            }"
echo ""
echo "            twohand {"
echo "                D:armor_negation=0.0"
echo "                D:impact=1.5"
echo "                I:max_strikes=2"
echo "            }"
echo "        }"
echo ""

## scape and run parasites weapons
cat recipes.log  | grep -o -e "srparasites:weapon_\w*" | grep -v _bow | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=GREATSWORD"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=8.0"
    echo "            I:max_strikes=4"
    echo "        }"
    echo ""
done

## End Weapons
echo "    }"
echo ""

## Add Armor
echo "    custom_armor {"
echo ""

## shields might not actually count as armor with Epic Fight?
cat recipes.log  | grep -oP "<\K\w*:[\w\.]*shield\w*" | grep -v -e decoration -e pet -e fission -e rad -e battery | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            D:stun_armor=5.0"
    echo "            D:weight=5.0"
    echo "        }"
    echo ""
done

## chestplates
cat recipes.log  | grep -oP "<\K\w*:\w*chestplate\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            D:stun_armor=2.0"
    echo "            D:weight=7.0"
    echo "        }"
    echo ""
done

## jetpacks and backpacks and batpacks lol
cat recipes.log  | grep -oP "<\K\w*:\w*pack\w*" | grep -v -e part -e ice | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            D:stun_armor=1.0"
    echo "            D:weight=20.0"
    echo "        }"
    echo ""
done

## helmets
cat recipes.log  | grep -oP "<\K\w*:\w*helmet\w*" | grep -v module | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            D:stun_armor=1.5"
    echo "            D:weight=2.0"
    echo "        }"
    echo ""
done

## goggles
cat recipes.log  | grep -oP "<\K\w*:\w*goggle\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            D:stun_armor=1.5"
    echo "            D:weight=2.0"
    echo "        }"
    echo ""
done



## leggings
cat recipes.log  | grep -oP "<\K\w*:\w*leggings\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            D:stun_armor=1.0"
    echo "            D:weight=4.0"
    echo "        }"
    echo ""
done

## boots
cat recipes.log  | grep -oP "<\K\w*:\w*boots\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            D:stun_armor=0.5"
    echo "            D:weight=2.0"
    echo "        }"
    echo ""
done

## End Armor
echo "    }"

## End Config
echo "}"
