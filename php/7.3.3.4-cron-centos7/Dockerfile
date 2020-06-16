FROM zhengcog/php:7.3.3.3-centos7
RUN yum install -y cronie yum-cron;
COPY etc/php.ini /usr/local/php/lib/php.ini
CMD ["php", "-v"]
