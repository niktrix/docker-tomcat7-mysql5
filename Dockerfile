# Mysql5.5 , Apache 7
#
# VERSION 0.1
# DOCKER-VERSION 0.7.0
 

FROM niktrix/docker-tomcat7

MAINTAINER Nicky nicky.gurbani@gmail.com


RUN RUNLEVEL=1 DEBIAN_FRONTEND=noninteractive apt-get install -y wget mysql-server

RUN sed -i 's/^bind-address.*/bind-address = 0.0.0.0/' /etc/mysql/my.cnf
RUN /usr/bin/mysqld_safe &
RUN sleep 15
RUN mysqladmin -u root password password


