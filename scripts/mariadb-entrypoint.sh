#!/bin/bash
set -eo pipefail

# need this on non-bootstrap nodes in a cluster to prevent hanged init
if [ ! -z "$MYSQL_CREATE_DATADIR" ]; then
  # DONOT use for the bootstrap node in a cluster
  echo "Creating MySQL data dir.."
  mkdir -p /var/lib/mysql/mysql
fi

docker-entrypoint.sh "$@"
