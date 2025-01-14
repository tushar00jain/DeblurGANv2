## Docker

### Build

```bash
docker build dg:0.0.1 .
```

### Debug

```bash
docker run -it --gpus all --name dg -p 8000:8000 -w /workspace -v /media/DataDrive/:/data -v $(pwd):/workspace dg:0.0.1 /bin/bash
```

> Train

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
docker run -d -it --gpus all --name dg -w /workspace -v /media/Data/:/data -v $(pwd):/workspace tushar00jain/dg:0.0.1 ./train.sh
docker logs dg --tail 100 -f
```

> Test

```bash
docker run -d --gpus all --name dg-test -p 8000:8000 -w /workspace -v /media/Data/:/data -v $(pwd):/workspace tushar00jain/dg:0.0.1 ./entrypoint.sh
docker logs dg-test --tail 100 -f
```

To use CPU instead of GPU, add `-e CUDA_VISIBLE_DEVICES=""` flag to the docker command and replace `.cuda()` with `.cuda()`
