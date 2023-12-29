FROM centos:latest
LABEL maintainer "leandro"
RUN yum update -y
RUN yum install httpd -y
RUN yum install php -y
CMD /usr/sbin/httpd -D FOREGROUND
WORKDIR /var/www/html
COPY index.html /var/www/html
EXPOSE 80