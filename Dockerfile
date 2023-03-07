FROM rocm/pytorch:rocm5.4_ubuntu20.04_py3.8_pytorch_staging

# Install tini
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

RUN mkdir -p /opt/sd
WORKDIR /opt/sd

ADD stable-diffusion-webui/requirements.txt /opt/sd/
RUN python -m pip install -r requirements.txt
ADD stable-diffusion-webui/requirements_versions.txt /opt/sd/
RUN python -m pip install -r requirements_versions.txt
ADD stable-diffusion-webui /opt/sd
RUN /bin/sh -c 'echo Downloading dependencies... this may take long time.; COMMANDLINE_ARGS="--skip-torch-cuda-test --exit" python launch.py --exit'

#CMD ["/usr/bin/python3", "launch.py", "--listen", "--deepdanbooru", "--data-dir", "/opt/sd/data", "--precision", "full", "--no-half"]
CMD ["python", "launch.py", "--listen", "--deepdanbooru", "--data-dir", "/opt/sd/data"]
