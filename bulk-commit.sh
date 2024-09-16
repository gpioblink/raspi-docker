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

usage() {
	echo -e  "\e[3m\nUsage: $0 [commit message]\e[0m\n"
}

if [ $# -eq 0 ]
    then
        usage
    else
	set -x

        for repo in "${repos[@]}"; do
            cd ${ROOT}/${OUTPUT_DIR}/${repo}
            git add .
            git commit -m "[bulk-commit] ${COMMIT_MSG}"
        done

        cd ${ROOT}
        git add .
        git commit -m "[bulk-commit] ${COMMIT_MSG}"
fi

