FROM spurin/container-systemd-sshd-ttyd:centos_8

# Install editors and common utilities
RUN yum install -y vim nano \
    diffutils iputils git net-tools lsof unzip \
    && yum clean all

# Friendly .vimrc starter
COPY .vimrc /etc/skel
