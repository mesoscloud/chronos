[![Build Status](https://travis-ci.org/mesoscloud/chronos.svg?branch=master)](https://travis-ci.org/mesoscloud/chronos)
[![Docker Stars](https://img.shields.io/docker/stars/mesoscloud/chronos.svg)](https://hub.docker.com/r/mesoscloud/chronos/)
[![Docker Pulls](https://img.shields.io/docker/pulls/mesoscloud/chronos.svg)](https://hub.docker.com/r/mesoscloud/chronos/)

# chronos

[![Join the chat at https://gitter.im/mesoscloud/mesoscloud](https://badges.gitter.im/mesoscloud/mesoscloud.svg)](https://gitter.im/mesoscloud/mesoscloud?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Chronos

http://mesos.github.io/chronos/

## CentOS

[![](https://badge.imagelayers.io/mesoscloud/chronos:2.4.0-centos-7.svg)](https://imagelayers.io/?images=mesoscloud/chronos:2.4.0-centos-7)

e.g.

```
docker run -d \
-e CHRONOS_HTTP_PORT=4400 \
-e CHRONOS_MASTER=zk://node-1:2181,node-2:2181,node-3:2181/mesos \
-e CHRONOS_ZK_HOSTS=node-1:2181,node-2:2181,node-3:2181 \
--name chronos --net host --restart always mesoscloud/chronos:2.4.0-centos-7
```

Set environment variable `SECRET` to enable framework authentication.

## Ubuntu

[![](https://badge.imagelayers.io/mesoscloud/chronos:2.4.0-ubuntu-14.04.svg)](https://imagelayers.io/?images=mesoscloud/chronos:2.4.0-ubuntu-14.04)

e.g.

```
docker run -d \
-e CHRONOS_HTTP_PORT=4400 \
-e CHRONOS_MASTER=zk://node-1:2181,node-2:2181,node-3:2181/mesos \
-e CHRONOS_ZK_HOSTS=node-1:2181,node-2:2181,node-3:2181 \
--name chronos --net host --restart always mesoscloud/chronos:2.4.0-ubuntu-14.04
```

Set environment variable `SECRET` to enable framework authentication.
