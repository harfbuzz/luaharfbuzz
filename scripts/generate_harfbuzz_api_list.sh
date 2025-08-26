#!/bin/sh

grep  -e "^hb_" $1/hb*.h  | grep "(" | sed -e 's/ .*$//' | awk -F: '{print $2}' | sort > status/full_api.txt
