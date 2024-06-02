#!/bin/bash
# This script will run into container

# source the common variables

. ./env.sh

# Move to work repository

cd ${YOCTO_DIR}

# Init

source oe-init-build-env build

# Build

#bitbake ${IMAGES}

