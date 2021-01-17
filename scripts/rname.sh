#!/bin/bash
#---------------------------------------------------------------
#
#   Filename      : rname.sh 
#   Author        : liwei
#   Created       : 2019-04-10
#   Description   : remove the space of file name
#
#---------------------------------------------------------------


for loop in `ls ./*/original/*.png -1 | tr ' '  '#'`
 do  
    mv  "`echo $loop | sed 's/#/ /g' `"  "`echo $loop |sed 's/#//g' `"  2> /dev/null 
done

for file in ./*/original/*.png
do
    bname=${file:0-6}
    mv $file ./*/original/$bname
done
