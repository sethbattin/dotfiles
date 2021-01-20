#!/usr/bin/env bash
PIDS=$(pidof node)
if [ -z "$PIDS" ]; then
  echo "no node pids"
  exit 1
fi
case $1 in
  kill)
    set -x
    kill $PIDS
    ;;
  *)
    set -x
    ps h -p $PIDS
    ;;
esac
# pidof node
# ps h -j -p`pidof node`
# kill `pidof node`
