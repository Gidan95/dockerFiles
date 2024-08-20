# syntax=docker/dockerfile:1
FROM ubuntu20.4rocm
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
RUN git clone --depth 1 --branch v1.9.4 https://github.com/AUTOMATIC1111/stable-diffusion-webui && \
      chmod -R 777 stable-diffusion-webui && \
      cd stable-diffusion-webui && python3 -m venv venv && \
      /bin/bash -c "source venv/bin/activate" && \
      pip3 install -r requirements.txt && pip3 uninstall -y torch torchvision && pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm5.7
ADD launch.sh /stable-diffusion-webui/
ADD launchInit.sh /stable-diffusion-webui/
RUN chmod -R 777 stable-diffusion-webui
EXPOSE 7861
ENTRYPOINT ["/bin/bash","-c","stable-diffusion-webui/launchInit.sh"]

