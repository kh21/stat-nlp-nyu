#!/bin/sh
# Calculate the accuracy for each category
# $1 : target file

target=$1

function calculate_accuracy() {
  category=$1
  total_lines=`grep -c gold="$category" "$target"`
  wrong_lines=`grep gold="$category" "$target"| grep -cv guess="$category"`
  result=`echo "scale=4; ($total_lines - $wrong_lines)/$total_lines" | bc`
  printf $result
}

printf "The accuracy for category 'drug' is "
calculate_accuracy drug
printf "\n"

printf "The accuracy for category 'place' is "
calculate_accuracy place
printf "\n"

printf "The accuracy for category 'person'is "
calculate_accuracy person
printf "\n"

printf "The accuracy for category 'movie'is "
calculate_accuracy movie
printf "\n"

printf "The accuracy for category 'company'is "
calculate_accuracy company
printf "\n"
