#!/bin/bash

# declare -a xs=("NLTV-LK" "NLTV-TVL1" "TV-LK" "TV-TVL1")
declare -a xs=("NLTV-LK")

for x in "${xs[@]}"
do
  echo "${x}"
  python predict.py "/data/SOTIS2/Stabilized/EurasianCitiesBase-Part1/NFrames50/${x}/**/**/*.png"
done
