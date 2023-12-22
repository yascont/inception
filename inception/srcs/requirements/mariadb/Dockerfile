FROM debian:12

RUN apt update
RUN apt-get update -y
RUN apt install mariadb-server -y

RUN sed -i 's/bind-address            = 127.0.0.1/bind-address            =*/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY lunch.sh /scripts/


# CMD ["./scripts/lunch.sh"]
