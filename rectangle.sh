#!/bin/bash

if ! [ -f rectangle.txt ] ; then
    echo 'No rectangle.txt file!'
    exit 0
else
   sed -E 's/([^,]+),([^,]+),([^,]+),([^,]+),([^,]+)/\tName: \1\ \tHeight: \2\ \tWidth: \3\ \tArea: \4\ \tColour: \5\ /' rectangle.txt > rectangle_f.txt
   sed -i '1d' rectangle_f.txt
   echo 'Process complete!'
   printf '\n\n'
fi
