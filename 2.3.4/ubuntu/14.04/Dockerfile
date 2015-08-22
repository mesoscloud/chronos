FROM ubuntu:14.04

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
echo deb http://repos.mesosphere.io/ubuntu trusty main > /etc/apt/sources.list.d/mesosphere.list && \
apt-get update && \
apt-get -y install chronos=2.3.4-0.1.20150813102925.ubuntu1404 mesos=0.22.1-1.0.ubuntu1404

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
