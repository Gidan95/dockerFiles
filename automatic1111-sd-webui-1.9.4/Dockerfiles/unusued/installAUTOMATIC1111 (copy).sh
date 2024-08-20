#!/bin/sh
sudo apt update && sudo apt install -y git python3-pip python3-venv python3-dev libstdc++-12-dev
sudo apt update && wget https://repo.radeon.com/amdgpu-install/6.1.2/ubuntu/jammy/amdgpu-install_6.1.60102-1_all.deb
sudo apt install ./amdgpu-install_6.1.60102-1_all.deb
sudo amdgpu-install --usecase=graphics,rocm
sudo usermod -aG video $USER
sudo usermod -aG render $USER
sudo reboot
cd /
mkdir automatic1111
cd automatic1111
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
cd stable-diffusion-webui
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
pip3 uninstall -y torch torchvision
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm5.7

