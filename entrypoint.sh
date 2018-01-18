#!/bin/sh

RUNNING_RABBIT=$(ps -C rabbitmq-server h | wc -l)
[ "x$RUNNING_RABBIT" = "x0" ] && service rabbitmq-server start

case $1 in
    *sh) exec "$@" ;;
esac
