FROM ghcr.io/easybuilders/centos-7.9:2023-08-31-6040003961.102
LABEL Author="Samson Kehinde <samson.kehinde@cloudpractice.cloud>"

USER root
WORKDIR /opt

COPY build/setup-os.sh build/setup-os.sh
RUN build/setup-os.sh