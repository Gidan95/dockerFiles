#!/bin/sh

cd /stable-diffusion-webui/
python3 -m venv venv

/bin/bash -c "source /stable-diffusion-webui/venv/bin/activate"

export HSA_OVERRIDE_GFX_VERSION=11.0.0
export HIP_VISIBLE_DEVICES=0
export PYTORCH_HIP_ALLOC_CONF=garbage_collection_threshold:0.8,max_split_size_mb:512

python3 launch.py --listen --enable-insecure-extension-access --opt-sdp-attention --theme dark --use-cpu all --precision full --no-half --skip-torch-cuda-test
