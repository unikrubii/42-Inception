FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl

RUN mkdir -p /etc/nginx/cert
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=TH/ST=Bangkok/L=Bangkok/O=42Bangkok/OU=sthitiku/CN=sthitiku.42.fr" \
    -keyout /etc/nginx/cert/inception.key -out /etc/nginx/cert/inception.crt

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
