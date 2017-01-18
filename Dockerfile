# This file creates a container that runs MySQL Server
#
# Author: Babatunde Adeyemi
# Original Author: Paul Czarkowski
# Date: 17/01/2017


FROM centos
MAINTAINER Babatunde Adeyemi "me@tundeadeyemi.com"

RUN yum -y install mysql-server

RUN mysql_install_db

ADD mysql-listen.cnf /etc/mysql/conf.d/mysql-listen.cnf

ADD start /usr/bin/start-mysql

RUN chmod +x /usr/bin/start-mysql

EXPOSE 3306

# Start mysql server
CMD ["/usr/bin/start-mysql"]
