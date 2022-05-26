#!/bin/bash

for i in Madeira-Open22 Women-Funchal22 22EBLMadeira-Seniors; do
  ./1_download.sh $i
  ./2_even.sh $i
  ./3_merge.sh $i
done