FROM spurin/container-systemd-sshd-ttyd:centos_stream9

# The Centos Stream 9 image is extremely lightweight
# Install Minimal group
#
# Also install editors and common utilities
#
# dnf-plugins-core installed to remove warnings when
# using dnf
RUN yum groupinstall -y "Base" \
    && yum install -y vim nano \
    diffutils iputils git net-tools lsof unzip \
    dnf-plugins-core \
    && yum clean all

# Friendly .vimrc starter
COPY .vimrc /etc/skel
