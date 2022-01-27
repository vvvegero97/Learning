FROM ubuntu:16.04

RUN apt-get -y update && apt-get -y install apache2 \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Hello World from Docker!" > /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80

