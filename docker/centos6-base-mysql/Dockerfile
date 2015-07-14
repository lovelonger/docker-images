# Mycat Openep Dockerfile

FROM centos-6.6:latest
MAINTAINER oznyang <oznyang@163.com>

ADD modules/centos6/mysql/ /tmp/_dt/mysql/
ADD modules/centos6/os/    /tmp/_dt/os/
ADD modules/centos6/cache/ /tmp/_dt/cache/
ADD modules/centos6/install-base-mysql.sh /tmp/_dt/
RUN sh /tmp/_dt/install-base-mysql.sh

VOLUME /opt/data-vol

#      mysql supervisor addon-port1 port2 port3
EXPOSE 3306  9001       9101        9102  9103

CMD ["/usr/bin/supervisord"]
