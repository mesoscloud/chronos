FROM ubuntu:14.04
MAINTAINER Peter Ericson <pdericson@gmail.com>

ENV CACERTIFICATES_VERSION="20160104ubuntu0.14.04.1"
ENV CHRONOS_VERSION="2.4.0-0.1.20151007110204.ubuntu1404"
ENV CURL_VERSION="7.35.0-1ubuntu2.9"
ENV MESOS_VERSION="0.28.1-2.0.20.ubuntu1404"

# https://github.com/Yelp/dumb-init
RUN apt-get update && apt-get install -y --no-install-recommends curl="$CURL_VERSION" && \
    curl -fLsS -o dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.0.2/dumb-init_1.0.2_amd64 && \
    echo '22426dab7b3553459619638e18d2ab9061ddc866  dumb-init' > /tmp/dumb-init.asc && \
    shasum -a1 -c /tmp/dumb-init.asc && mv dumb-init /usr/local/bin/dumb-init \
    chmod +x /usr/local/bin/dumb-init && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
    echo deb http://repos.mesosphere.io/ubuntu trusty main > /etc/apt/sources.list.d/mesosphere.list && \
    apt-get update && \
    apt-get install --no-install-recommends -y ca-certificates="$CACERTIFICATES_VERSION" chronos="$CHRONOS_VERSION" mesos="$MESOS_VERSION" && \
    apt-get autoremove -y curl && apt-get purge -y && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /

ENTRYPOINT ["/usr/local/bin/dumb-init", "/entrypoint.sh"]
