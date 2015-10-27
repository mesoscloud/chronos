FROM ubuntu:14.04

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
echo deb http://repos.mesosphere.io/ubuntu trusty main > /etc/apt/sources.list.d/mesosphere.list && \
apt-get update && \
apt-get -y install chronos=2.4.0-0.1.20150828104228.ubuntu1404 mesos=0.24.1-0.2.35.ubuntu1404

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
