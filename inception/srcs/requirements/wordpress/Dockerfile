FROM debian:bullseye

RUN apt update && apt upgrade && apt install curl php php-fpm php-mysql mariadb-client  -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/wordpress.sh /

ENTRYPOINT ["bash", "wordpress.sh"]
