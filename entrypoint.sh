#!/bin/sh

echo "Launch image 0=[$0] 1=[$1] @=[$@]"

service rabbitmq-server start

case $1 in
    *sh) exec $@ ;;
esac
