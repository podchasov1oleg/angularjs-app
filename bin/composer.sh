#!/usr/bin/env bash

DIR=$(cd $( dirname $([[ -L $0 ]] && readlink -f $0 || echo $0) ); pwd)
WORK_DIR="/var/www/html"

docker run --rm --interactive --tty \
  --volume "$DIR/../src/":"$WORK_DIR" \
  --user $(id -u):$(id -g) \
  composer --working-dir="$WORK_DIR" $@
