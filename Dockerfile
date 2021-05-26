from pytorch/conda-cuda:latest

RUN apt-get update
RUN apt-get install -y python3-opencv
RUN pip install -r requirements.txt