#/bin/bash -xe

DOCKER_IMAGE_TAG="raspi0w-yocto"
DOCKER_WORKDIR="/opt/yocto"

RELEASE_NAME="my-raspberrypi0-wifi-6.6"

YOCTO_DIR="${DOCKER_WORKDIR}/${RELEASE_NAME}-build"

MACHINE="raspberrypi0-wifi"
#DISTRO="poky"
IMAGES="core-image-minimal"

PATH="${DOCKER_WORKDIR}/poky/bitbake/bin:$PATH"
