#!/bin/bash

## spartan weaponry battle axes
cat recipes.log  | grep -o "spartan\w*:battle\w*axe_\w*" | uniq | sort | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=GREATSWORD"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=2.0"
    echo "            I:max_strikes=2"
    echo "        }"
done

## spartan weaponry throwing axes
cat recipes.log  | grep -o "spartan\w*:throwing\w*axe_\w*" | uniq | sort | while read -r item ; do
    echo -n "        "
    echo -n "$item" | tr : .
    echo " {"
    echo "            S:registry_name=$item"
    echo "            S:weapon_type=AXE"
    echo "            D:armor_negation=0.0"
    echo "            D:impact=0.0"
    echo "            I:max_strikes=0"
    echo "        }"
done
