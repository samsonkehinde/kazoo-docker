FROM thecloudpractice/kazoo_v4.3:base-os
LABEL Author="Samson Kehinde <samson.kehinde@cloudpractice.cloud>"

USER root
WORKDIR /opt

COPY build/setup-os.sh build/setup-os.sh
RUN build/setup-os.sh

COPY build/dispatcher_add.sh sbin/dispatcher_add.sh
ENTRYPOINT ["tini", "--", "/run.sh"]