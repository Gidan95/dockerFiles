./build.sh && \
	sudo docker run --device /dev/kfd --device /dev/dri --security-opt seccomp=unconfined ubuntu-rocm:20.4-6.1.2
