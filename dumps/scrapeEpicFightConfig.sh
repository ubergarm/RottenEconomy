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
    echo "            D:impact=6.0"
    echo "            I:max_strikes=2"
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
    echo "                D:impact=0.0"
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

## axes
cat recipes.log  | grep -oP "<\K\w*:axe\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=AXE"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=0.5"
    echo "            I:max_strikes=0"
    echo "        }"
    echo ""
done

## pick axes (omit spaxel)
cat recipes.log  | grep -oP "<\K\w*:\w*pick\w*" | grep -v spaxel | sort | uniq | while read -r item ; do
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
cat recipes.log  | grep -oP "<\K\w*:\w*hoe\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=HOE"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=0.0"
    echo "            I:max_strikes=0"
    echo "        }"
    echo ""
done

## shovels
cat recipes.log  | grep -oP "<\K\w*:\w*shovel\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=SHOVEL"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=0.0"
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
    echo "            D:impact=0.5"
    echo "            I:max_strikes=0"
    echo "        }"
    echo ""
done

## daggers and javelins and boomerangs
cat recipes.log  | grep -o -e "\w*:\w*dagger\w*" -e "\w*:\w*javelin\w*" -e "\w*:\w*boomerang\w*" | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=SWORD"
    echo ""
    echo "            onehand {"
    echo "                D:armor_negation=0.0"
    echo "                D:impact=0.0"
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
cat recipes.log  | grep -oP "<\K\w*:\w*sword\w*" | grep -v -e great -e epicfight | sort | uniq | while read -r item ; do
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
    echo "                D:impact=2.0"
    echo "                I:max_strikes=1"
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
    echo "            D:impact=1.0"
    echo "            I:max_strikes=1"
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
    echo "            D:impact=2.0"
    echo "            I:max_strikes=1"
    echo "        }"
    echo ""
done

## maces and spartan weaponry hammers and clubs
cat recipes.log  | grep -o -e "\w*:\w*mace\w*" -e "spartanweaponry:hammer\w*" -e "spartanweaponry:\w*club\w*" | grep -v epicfight | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=SWORD"
    echo ""
    echo "            onehand {"
    echo "                D:armor_negation=10.0"
    echo "                D:impact=3.0"
    echo "                I:max_strikes=0"
    echo "            }"
    echo ""
    echo "            twohand {"
    echo "                D:armor_negation=20.0"
    echo "                D:impact=4.0"
    echo "                I:max_strikes=1"
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
    echo "            D:armor_negation=25.0"
    echo "            D:impact=10.0"
    echo "            I:max_strikes=1"
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
    echo "            D:armor_negation=10.0"
    echo "            D:impact=3.0"
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
    echo "            D:armor_negation=0.0"
    echo "            D:impact=15.0"
    echo "            I:max_strikes=0"
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
echo "                D:impact=2.0"
echo "                I:max_strikes=2"
echo "            }"
echo ""
echo "            twohand {"
echo "                D:armor_negation=0.0"
echo "                D:impact=3.0"
echo "                I:max_strikes=3"
echo "            }"
echo "        }"
echo ""

## End Weapons
echo "    }"
echo ""

## Add Armor
echo "    custom_armor {"
echo ""

## shields
cat recipes.log  | grep -oP "<\K\w*:\w*shield\w*" | grep -v -e decoration -e pet -e fission -e rad -e battery | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            D:stun_armor=5.0"
    echo "            D:weight=2.0"
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
    echo "            D:weight=3.0"
    echo "        }"
    echo ""
done

## helmets
cat recipes.log  | grep -oP "<\K\w*:\w*helmet\w*" | grep -v module | sort | uniq | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            D:stun_armor=0.5"
    echo "            D:weight=1.0"
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
    echo "            D:weight=2.0"
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
    echo "            D:weight=1.0"
    echo "        }"
    echo ""
done

## End Armor
echo "    }"
## End Config
echo "}"


