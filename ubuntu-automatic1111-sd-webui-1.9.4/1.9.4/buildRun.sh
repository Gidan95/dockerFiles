cd Dockerfiles
sudo docker build -t automatic1111sd-webui:1.9.4 .
sudo docker run --device /dev/kfd --device /dev/dri --security-opt seccomp=unconfined -p 7861:7861 automatic1111sd-webui:1.9.4
