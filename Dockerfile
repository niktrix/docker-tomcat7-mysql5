# Mysql5.5 , Apache 7
#
# VERSION 0.1
# DOCKER-VERSION 0.7.0
 

FROM niktrix/docker-tomcat7

MAINTAINER Nicky nicky.gurbani@gmail.com


RUN RUNLEVEL=1 DEBIAN_FRONTEND=noninteractive apt-get install -y wget mysql-server
ADD mysql.sh /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

EXPOSE 3306
CMD ["/usr/local/bin/run"]
