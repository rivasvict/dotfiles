#!/bin/bash

#grep -rl $1 $PWD"/"$3 | xargs sed -i "s/"$1"/"$2"/g"
vim -p `grep -lr "$1" $PWD"/"$2`
