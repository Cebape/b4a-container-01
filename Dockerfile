
# Container 01

FROM ubuntu:latest AS base

RUN apt-get update -y
RUN apt-get install nginx -y

COPY index1.html /var/www/html/index.html

EXPOSE 3001

CMD [ "nginx", "-g", "daemon off;" ]

# Container 02

FROM base AS stage1

RUN apt-get update -y
RUN apt-get install nginx -y

COPY index2.html /var/www/html/index.html

EXPOSE 3002

CMD [ "nginx", "-g", "daemon off;" ]

