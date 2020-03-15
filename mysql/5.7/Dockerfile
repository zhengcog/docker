FROM mysql:5.7
MAINTAINER "Hyman" <zhengcog@gmail.com>
COPY etc/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
RUN  cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN usermod -u 1000 mysql && \
	chown mysql.mysql /var/run/mysqld/ && \
	chown mysql.mysql /var/lib/mysql/
EXPOSE 3306
VOLUME ["/opt"]
