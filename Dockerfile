FROM centos:8
MAINTAINER Ian Agpawa<agpawaji@gmail.com>
RUN yum update -y
RUN yum install httpd -y
CMD /usr/sbin/httpd -D FOREGROUND
WORKDIR /var/www/html
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]