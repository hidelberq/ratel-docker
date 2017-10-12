FROM nginx

MAINTAINER hidelberq

WORKDIR /app

ADD default.conf /etc/nginx/conf.d/

RUN apt update && \
    apt install git -y && \
    git clone https://github.com/grandcolline/ratel-static && \
    mv ratel-static /usr/share/nginx/html

EXPOSE 80

