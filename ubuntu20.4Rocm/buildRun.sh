./build.sh
sudo docker run --device /dev/kfd --device /dev/dri --security-opt seccomp=unconfined -p 7861:7861 ubuntu-rocm::20.4-1
