FROM centos:8
RUN yum update -y && yum install httpd -y
RUN service apache2 restart
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
