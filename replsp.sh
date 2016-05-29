#!/bin/bash

dir="/home/mitch/Python/wordGame/words/lf"

find $dir -depth -name "* *" -execdir rename 's/ /_/g' "{}" \;
