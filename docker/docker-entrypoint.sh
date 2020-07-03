#!/bin/bash
set -x

USER=ucacoin

chown -R ${USER} .
exec gosu ${USER} "$@"