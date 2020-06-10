FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nginx
ADD ./index.html /usr/share/ngin/html/index.html

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
EXPOSE 443