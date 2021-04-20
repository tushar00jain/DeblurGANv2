```bash
docker run -it --gpus all --name dg -v /media/DataDrive/:/data -v $(pwd):/workspace dg:0.0.1 /bin/bash
pip install -r requirements.txt

apt-get update
apt-get install -y python3-opencv

python predict.py /data/SOTIS/Stabilized/EurasianCitiesBase-Part1/NFrames50/NLTV-LK/001-1/L1000/NLTV-LK_001-1_L=1000.000000_D=0.0540_d=0.300_Cn2=1e-14.png

python train.py
```