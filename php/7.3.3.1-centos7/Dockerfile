FROM zhengcog/php:7.3.3-centos7
RUN /usr/local/php/bin/pecl install redis;

COPY etc/php.ini /usr/local/php/lib/php.ini
CMD ["php", "-v"]
