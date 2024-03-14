FROM debian:bookworm-slim

RUN apt-get update
RUN apt-get install -y \
    vim \
    git \
    zip \
    wget \
    curl \
    php \
    php-xml \
    php-curl \
    php-zip \
    php-xdebug

RUN apt-get install mariadb-server mariadb-client -y

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - 
RUN apt-get install -y nodejs

COPY ./configs/000-default.conf /etc/apache2/sites-available/
COPY ./configs/apache2.conf /etc/apache2/
COPY ./configs/xdebug.ini /etc/php/8.2/mods-available/
COPY ./startup.sh /startup.sh
RUN chmod +x /startup.sh

CMD /startup.sh
