cd Dockerfiles
sudo docker build -t ubuntu-kohya_ss:24.1.6 .
sudo docker run --device /dev/kfd --device /dev/dri --security-opt seccomp=unconfined -p 7860:7861 ubuntu-kohya_ss:24.1.6
