FROM centos:centos7
MAINTAINER Matthew Walker "Matthew_Walker@newyorklife.com"
ENV REFRESHED AT 2014-09-28

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install redis; yum clean all



EXPOSE 6379

CMD [ "redis-server" ]
