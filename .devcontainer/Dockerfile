ARG IMAGE
ARG TAG
FROM ${IMAGE}:${TAG}

RUN rm -f /etc/apt/apt.conf.d/docker-clean
COPY apt.txt /tmp/apt.txt
RUN --mount=type=cache,target=/var/cache/apt apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y $(cat /tmp/apt.txt)

ARG USER
RUN groupadd docker
RUN useradd ${USER} --shell=/bin/bash --create-home --groups=docker,sudo
RUN echo 'eval "$(direnv hook bash)"' >> /home/${USER}/.bashrc
