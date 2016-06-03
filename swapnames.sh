#!/usr/bin/env bash
##==============================================================================
## bash script that swaps the names of two files
##
## usage:
##	swapnames file1 file2
##==============================================================================
# Creates a random file name for the temporary file and generates the temporary
# file in the directory containing the files whose names are to be swapped
tmpfile=$(mktemp $(dirname "$1")/XXXXXX)
# Renames the first file to a temporary name, renames the second file to the
# first file's original name, and finally renames the first file to the second
# file's original name
mv "$1" "$tmpfile" && mv "$2" "$1" && mv "$tmpfile" "$2"
## M. Sullivan. June, 2016
