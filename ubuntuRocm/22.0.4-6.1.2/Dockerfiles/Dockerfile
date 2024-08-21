FROM ubuntu:22.04
RUN apt-get update && \
      apt-get -y install sudo && \
      apt install -y python3.10 && \
      apt-get update && \
      apt install -y wget && \
      apt update &&  apt install -y git python3-pip python3-venv python3-dev libstdc++-12-dev && \
      apt update && wget https://repo.radeon.com/amdgpu-install/6.1.2/ubuntu/jammy/amdgpu-install_6.1.60102-1_all.deb && \
      apt install -y ./amdgpu-install_6.1.60102-1_all.deb && \
      DEBIAN_FRONTEND=noninteractive amdgpu-install -y --usecase=graphics,rocm && \
      usermod -aG video root && \
      usermod -aG render root
