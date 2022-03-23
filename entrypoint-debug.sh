#!/bin/bash

python -m debugpy --listen 0.0.0.0:8000 --wait-for-client predict.py \
	"/data/SOTIS/Stabilized/EurasianCitiesBase/NFrames50/NLTV-LK/**/**/*.png"
