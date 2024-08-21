./build.sh
sudo docker build -t ubuntu-rocm:22.04-5.6.0 . && \
	sudo docker run --device /dev/kfd --device /dev/dri --security-opt seccomp=unconfined -p 7861:7861 ubuntu-rocm:22.04-5.6.0
