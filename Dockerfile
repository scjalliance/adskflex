FROM centos:centos7
MAINTAINER dusty.wilson@scjalliance.com

RUN yum -y update \
 && yum -y install redhat-lsb-core \
 && yum clean all

RUN useradd lmuser

EXPOSE 2080 27000

COPY files/* /opt/

ENTRYPOINT ["/opt/run.sh"]