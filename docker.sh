sudo docker stop umx
sudo docker rm umx
sudo docker run --gpus '"device=2"' -v musdb:/data:ro -itd --ipc=host --name umx umx
