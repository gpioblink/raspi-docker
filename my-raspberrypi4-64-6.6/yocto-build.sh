#!/bin/bash
# This script will run into container

cd `dirname $0`

. ./yocto-setup.sh

# Build

bitbake ${IMAGES}

