FROM debian:bullseye

RUN apt update && apt upgrade && apt install nginx -y && apt install openssl

RUN  mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/ssl/privkey.key -out /etc/nginx/ssl/cert.crt -days 365 -nodes -subj "/C=MA/L=KHOURIBGA/O=42/CN=1337/"





COPY ./conf/default /etc/nginx/sites-available/

CMD ["nginx", "-g", "daemon off;"]
