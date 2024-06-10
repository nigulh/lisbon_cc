#!/bin/bash

for i in 2024_EBLOpenTeams-Herning Herning2024_EBLWomensTeams; do
  ./1_download.sh $i
  ./2_even.sh $i
  ./3_merge.sh $i
  ./4_countries.sh $i
  echo "########### done"
  echo
  echo
done