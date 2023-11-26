FROM debian:bullseye

RUN apt update && apt install mariadb-server -y

#COPY ./conf/50-server.cnf	/etc/mysql/mariadb.conf.d/

COPY ./tools/db.sh /

RUN chmod +x ./db.sh

CMD ["/bin/bash", "db.sh"]
