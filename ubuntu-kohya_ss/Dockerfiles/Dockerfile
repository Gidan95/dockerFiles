# syntax=docker/dockerfile:1
#FROM ubuntu20.4rocm
#RUN git clone --depth 1 --branch v1.9.4 https://github.com/AUTOMATIC1111/stable-diffusion-webui && \
#      chmod -R 777 stable-diffusion-webui && \
#      cd stable-diffusion-webui && python3 -m venv venv && \
#      /bin/bash -c "source venv/bin/activate" && \
#      pip3 install -r requirements.txt && pip3 uninstall -y torch torchvision && pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm5.7
#ADD launch.sh /stable-diffusion-webui/
#ADD launchInit.sh /stable-diffusion-webui/
#RUN chmod -R 777 stable-diffusion-webui
#EXPOSE 7861
#ENTRYPOINT ["/bin/bash","-c","stable-diffusion-webui/launchInit.sh"]

FROM ubuntu-rocm:20.4-6.1.2
RUN git clone --depth 1 --branch v24.1.6 https://github.com/bmaltais/kohya_ss.git && \
	cd kohya_ss && \
	python3 -m venv venv && \
	/bin/bash -c "source venv/bin/activate"
ADD requirements.txt kohya_ss/requirements.txt
RUN	pip3 install --use-pep517 --upgrade -r kohya_ss/requirements.txt && \
	accelerate config
