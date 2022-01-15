FROM spurin/container-systemd-sshd-ttyd:ubuntu_20.04

# Install editors and common utilities
RUN apt-get update \
    && apt-get install -y vim nano \
    iproute2 iputils-ping git net-tools lsof unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Friendly .vimrc starter
COPY .vimrc /etc/skel
