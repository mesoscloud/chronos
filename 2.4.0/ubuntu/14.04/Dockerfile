FROM ubuntu:14.04
MAINTAINER Peter Ericson <pdericson@gmail.com>

ENV MESOS_VERSION=0.28.1-2.0.20.ubuntu1404
ENV CHRONOS_VERSION=2.4.0-0.1.20151007110204.ubuntu1404

# https://github.com/Yelp/dumb-init
RUN apt-get update && apt-get install -y curl && \
    curl -fLsS -o /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.0.2/dumb-init_1.0.2_amd64 && \
    echo '22426dab7b3553459619638e18d2ab9061ddc866  dumb-init' > /tmp/dumb-init.asc && \
    cd /usr/local/bin && shasum -a1 -c /tmp/dumb-init.asc && cd - && \
    chmod +x /usr/local/bin/dumb-init && \
    # Install chronos
    apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
    echo deb http://repos.mesosphere.io/ubuntu trusty main > /etc/apt/sources.list.d/mesosphere.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y ca-certificates chronos=$CHRONOS_VERSION mesos=$MESOS_VERSION && \
    apt-get autoremove -y curl && apt-get purge -y && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /

ENTRYPOINT ["/usr/local/bin/dumb-init", "/entrypoint.sh"]
