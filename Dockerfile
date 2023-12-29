FROM centos:8
LABEL maintainer "leandro"
RUN yum install httpd -y
RUN yum install php -y
CMD /usr/sbin/httpd -D FOREGROUND
WORKDIR /var/www/html
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80