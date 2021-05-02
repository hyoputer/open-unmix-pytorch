FROM continuumio/anaconda3:2020.11

USER root

RUN apt-get install git

WORKDIR /workspace

RUN git clone https://github.com/hyoputer/open-unmix-pytorch
RUN conda env update -f open-unmix-pytorch/scripts/environment-gpu-linux-cuda10.yml
RUN conda init bash
RUN echo "conda activate umx-gpu" >> ~/.bashrc
RUN apt-get -y install libsndfile1
RUN cp open-unmix-pytorch/scripts/train.py open-unmix-pytorch/





