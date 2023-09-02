FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=TH/ST=Bangkok/L=Bangkok/O=42Bangkok/OU=sthitiku/CN=localhost" \
    -keyout /etc/nginx/cert/inception.key -out /etc/nginx/cert/inception.crt

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
