#!/bin/bash

echo -n "Enter the first integer in your sequence: "
read num_1

# Validate that num_1 is an integer
if [ ! -z "${num_1##*[!0-9]*}" ] ; then
  echo -n "Enter the last integer in your sequence: " 
else 
  echo -e "$num_1 is not an integer, exiting now \n" 
  exit 1
fi

read num_2

# Validate that num_2 is an integer
if [ ! -z "${num_2##*[!0-9]*}" ] ; then 
 echo -e "Printing all numbers between $num_1 and $num_2 now"
else
  echo -e "$num_2 is not an integer, exiting now \n"
  exit 1
fi

# Sequence from the smaller integer to the larger integer
[ "$num_2" -gt "$num_1" ] && seq $num_1 $num_2 | shuf || seq $num_2 $num_1 | shuf;
