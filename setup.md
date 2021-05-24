```bash
docker run -it --gpus all --name dg -p 8000:8000 -v /media/DataDrive/:/data -v $(pwd):/workspace dg:0.0.1 /bin/bash
pip install -r requirements.txt

apt-get update
apt-get install -y python3-opencv


for f in /data/SOTIS/Stabilized/EurasianCitiesBase-Part1/NFrames50/NLTV-LK/001-1/L1000/*.png; do
	python predict.py ${f}
done

python -m debugpy --listen 0.0.0.0:8000 --wait-for-client predict.py /data/SOTIS/Stabilized/EurasianCitiesBase-Part1/NFrames50/NLTV-LK/**/**/*.png

python train.py
```