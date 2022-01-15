## ✨ Popular linux distributions configured with systemd, sshd, ttyd and commontools (ubuntu_21.04) ✨

Popular linux distributions with systemd, sshd, ttyd and commontools.  Superb for use with Docker 🐋

## Overview

Unlike the two images that these build on ([spurin/container-systemd](https://github.com/spurin/container-systemd) and [spurin/container-systemd-sshd-ttyd](https://github.com/spurin/container-systemd-sshd-ttyd)), these are somewhat opinionated by myself.

As I've used these for the creation of labs, I treat this layer as a base for commontools that I expect to be used by most, hence the likes of vim, nano and others.

Merge requests with 'opinionated' additions are likely to be rejected, instead I encourage you to fork and use this as required 😎

The image relating to this Dockerfile is available for both amd64 and arm64 on Docker Hub - ```spurin/container-systemd-sshd-ttyd-commontools:ubuntu_21.04```

## Example

Run a container and expose ttyd (on port 7681) and sshd (on port 2222) -

```
CONTAINER=$(docker run -p 7681:7681 -p 2222:22 -d --privileged spurin/container-systemd-sshd-ttyd-commontools:ubuntu_21.04)
docker exec -it $CONTAINER bash
```

Terminate and Remove -

```
docker stop $CONTAINER
docker rm $CONTAINER
```

## Build

See the build.sh script for 3 options that can be used for build purposes

1. Build locally
2. Crossbuild with buildx for amd64 and arm64 (Slow!)
3. Crossbuild with buildx for amd64 and arm64 using a dedicated instance for alternative cross building (configure accordingly for your remote architecture)
