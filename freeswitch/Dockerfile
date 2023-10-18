FROM thecloudpractice/kazoo_v4.3:base-os
LABEL Author="Samson Kehinde <samson.kehinde@cloudpractice.cloud>"

USER root
WORKDIR /opt

COPY etc/sngrep.repo /etc/yum.repos.d/sngrep.repo

COPY build/setup-os.sh build/setup-os.sh
RUN build/setup-os.sh

CMD [ "./run.sh" ]
