FROM php:8.2-apache

MAINTAINER sammy-ulfh

EXPOSE 80 443

RUN apt-get update && apt-get install -y openssl && \
    a2enmod ssl && \
    a2enmod rewrite

COPY docker/apache-ssl.conf /etc/apache2/sites-available/default-ssl.conf
COPY docker/ssl /etc/apache2/ssl
COPY web_template/ /var/www/html

RUN a2ensite default-ssl

CMD ["apache2-foreground"]
