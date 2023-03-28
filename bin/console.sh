#!/usr/bin/env bash

DIR=$(cd $( dirname $([[ -L $0 ]] && readlink -f $0 || echo $0) ); pwd)
USER=$(id -u):$(id -g)
WORK_DIR="/var/www/html/"

docker-compose -f "${DIR}/../docker-compose.yaml" exec -u "$USER" -w "$WORK_DIR" php $@
