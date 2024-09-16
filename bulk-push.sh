#!/bin/bash

COMMIT_MSG=$*
OUTPUT_DIR="out"
ROOT=$(pwd)


if [ ! -d ${OUTPUT_DIR} ]; then
    mkdir -p ${OUTPUT_DIR}
fi

repos=(
    "poky"
    "meta-openembedded"
    "meta-raspberrypi"
    "meta-gpioblink"
)


set -x

for repo in "${repos[@]}"; do
    cd ${ROOT}/${OUTPUT_DIR}/${repo}
    git push
done

cd ${ROOT}
git push

