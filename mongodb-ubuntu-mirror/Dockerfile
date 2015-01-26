FROM ubuntu:14.04
MAINTAINER pandada8 <pandada8@gmail.com>
RUN sed -i 's/archive.ubuntu.com/cn.archive.ubuntu.com/g' /etc/apt/sources.list
RUN apt-get update -y && apt-get install apt-mirror nginx -y
ADD mirror.list /etc/apt/mirror.list
ADD mirror.conf /etc/nginx/sites-available/mirror.conf
RUN ln -s /etc/nginx/sites-available/mirror.conf /etc/nginx/sites-enabled/mirror.conf
RUN echo "0 0 * * * sudo -u apt-mirror apt-mirror" > /etc/crontab
EXPOSE 80
CMD apt-mirror && nginx -g daemon off

