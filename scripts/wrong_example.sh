#!/bin/sh
# Read the output file and print the wrong guesses for the category specified
# $1 : category
# $2 : target file

grep gold="$1" "$2" | grep -v guess="$1"
