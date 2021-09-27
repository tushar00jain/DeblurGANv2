#!/bin/bash

python -m debugpy --listen 0.0.0.0:8000 --wait-for-client predict.py \
	"/data/SOTIS2/Stabilized/EurasianCitiesBase-Part1/NFrames50/NLTV-LK/**/**/*.png"
