#!/bin/bash
# Scrape a crafttweaker.log after running `/ct food` into an Matter Overdrive format to copy paste manually
# https://github.com/ubergarm/

cat foods.log  | grep -v 'minecraft:' | awk '{print $2  $5}' | sed 's/>/"=/g' | sed 's/</I:"/g'
