FROM zhengcog/fpm:7.3.3.2-centos7
RUN yum install -y postgresql-devel; \
    cd /php-7.3.3/ext/pdo_pgsql; \
    echo "Install PHP pdo_pgsql extension..."; \
    /usr/local/php/bin/phpize; \
    ./configure CFLAGS="-O2 -g" --with-php-config=/usr/local/php/bin/php-config --with-pdo-pgsql=/usr/pgsql-10/bin/;\
    make && make install;

COPY etc/php-fpm.conf /usr/local/php/etc/php-fpm.conf
COPY etc/php.ini /usr/local/php/lib/php.ini
COPY start.sh /start.sh
RUN  chmod +x /start.sh;

CMD ["/start.sh"]
