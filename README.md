# chronos

[![Join the chat at https://gitter.im/mesoscloud/chronos](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/mesoscloud/chronos?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

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
