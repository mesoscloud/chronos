FROM centos:7

RUN rpm -i http://repos.mesosphere.io/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm && yum -y install chronos-2.3.4 mesos-0.22.1

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
