# chronos

[![Join the chat at https://gitter.im/mesoscloud/chronos](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/mesoscloud/chronos?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Chronos is a Mesos framework for job scheduling.

## centos

[![](https://badge.imagelayers.io/mesoscloud/chronos:2.3.4-centos-7.svg)](https://imagelayers.io/?images=mesoscloud/chronos:2.3.4-centos-7)

Usage example:

```
docker run -d \
-e CHRONOS_ZK_HOSTS=node1:2181,node2:2181,node3:2181 \
-e CHRONOS_MASTER=zk://node1:2181,node2:2181,node3:2181/mesos \
-e CHRONOS_HTTP_PORT=4400 \
--name chronos --net host --restart always \
mesoscloud/chronos:2.3.4-centos-7
```

## ubuntu

[![](https://badge.imagelayers.io/mesoscloud/chronos:2.3.4-ubuntu-14.04.svg)](https://imagelayers.io/?images=mesoscloud/chronos:2.3.4-ubuntu-14.04)
