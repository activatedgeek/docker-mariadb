# docker-mariadb

| [![Build Status](https://travis-ci.org/activatedgeek/docker-mariadb.svg?branch=master)](https://travis-ci.org/activatedgeek/docker-mariadb) | [![](https://imagelayers.io/badge/activatedgeek/mariadb:latest.svg)](https://imagelayers.io/?images=activatedgeek/mariadb:latest 'Get your own badge on imagelayers.io') | [![Docker Pulls](https://img.shields.io/docker/pulls/activatedgeek/mariadb.svg?maxAge=2592000?style=plastic)](https://hub.docker.com/r/activatedgeek/mariadb/)
|:-:|:-:|:-:|

A Docker MariaDB image based on the official Docker library image. This contains
configurations needed to start a MariaDB Galera cluster.

## Images

* `latest`, `10.1` ([Dockerfile](./Dockerfile))

## Usage

See the sample [MariaDB Cluster](https://github.com/activatedgeek/mariadb-cluster)
for complete usage.

### Galera Configuration Variables

* [`--wsrep-cluster-name`](https://mariadb.com/kb/en/mariadb/galera-cluster-system-variables/#wsrep_cluster_name)
* [`--wsrep-cluster-address`](https://mariadb.com/kb/en/mariadb/galera-cluster-system-variables/#wsrep_cluster_address)
* [`--wsrep-sst-auth`](https://mariadb.com/kb/en/mariadb/galera-cluster-system-variables/#wsrep_sst_auth)

For the bootstrap node, `--wsrep-new-cluster` is necessary to start as a primary component.

For the non-bootstrap nodes, the environment variable `MYSQL_CREATE_DATADIR=1` must be set to
prevent hanging init process and eventual crash.
