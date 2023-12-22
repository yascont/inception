FROM debian:12

RUN apt update

RUN apt install nginx -y
RUN apt install mkcert
RUN mkcert -key-file /etc/nginx/cert.key -cert-file /etc/nginx/cert.crt yabidi.42.fr
RUN apt install vim -y

COPY  conf/nginx.conf /etc/nginx/conf.d/default.conf



CMD service nginx start && /bin/sh