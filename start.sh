#!/bin/bash

if [[ "${EUID}" == "" || "${EGID}" == "" ]]; then
    echo "Environment variable EUID and EGID must be set"
    exit 1
fi

addgroup -g ${EGID} dev
adduser -h ${HOME} -u ${EUID} -s /bin/bash -D -G dev dev
chown dev:dev /var/run/docker.sock

/bin/su dev -c /usr/bin/nvim "$@"

