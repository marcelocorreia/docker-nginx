FROM nginx
MAINTAINER Marcelo Correia <marcelo.correia@starvisitor.com>

ADD ./default.conf /etc/nginx/conf.d/default.conf
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD /src /www
