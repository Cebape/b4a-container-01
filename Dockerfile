
# Container 01

FROM ubuntu:latest AS base

RUN apt-get update -y
RUN apt-get install nginx -y

COPY index1.html /var/www/html/index.html

EXPOSE 3000

CMD [ "nginx", "-g", "daemon off;" ]

