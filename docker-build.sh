#!/bin/bash -xe

DISTRO="my-raspberrypi0-wifi-6.6"

. ./${DISTRO}/env.sh

usage() {
	echo -e  "\e[3m\nUsage: $0 [path_to_Dockerfile]\e[0m\n"
}

if [ $# -ne 1 ]
    then
        usage
    else
        docker build --tag "${DOCKER_IMAGE_TAG}" \
                     --build-arg "DOCKER_WORKDIR=${DOCKER_WORKDIR}" \
                     --build-arg "USER=$(whoami)" \
                     --build-arg "host_uid=$(id -u)" \
                     --build-arg "host_gid=$(id -g)" \
                     -f $1 \
                     .
fi

