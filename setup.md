## Docker

### Build

```bash
docker build dg:0.0.1 .
```

### Debug

```bash
docker run -it --gpus all --name dg -p 8000:8000 -w /workspace -v /media/DataDrive/:/data -v $(pwd):/workspace dg:0.0.1 /bin/bash
```

> Train (TODO)

```bash
python train.py
```

> Debug Testing

```bash
./entrypoint-debug.sh
```

### Run

> Train

```bash
docker run -d -it --gpus all --name dg -w /workspace -v /media/DataDrive/:/data -v $(pwd):/workspace dg:0.0.1 ./train.sh
docker logs dg --tail 100 -f
```

> Test

```bash
docker run -d --gpus all --name dg -p 8000:8000 -w /workspace -v /media/DataDrive/:/data -v $(pwd):/workspace dg:0.0.1 entrypoint.sh
docker logs dg --tail 100 -f
```
