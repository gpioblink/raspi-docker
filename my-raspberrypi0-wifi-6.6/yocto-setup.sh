#!/bin/bash
# This script will run into container

# source the common variables

. ./env.sh

# Move to work repository

cd ${DOCKER_WORKDIR}

# Init
cd poky
source oe-init-build-env build

