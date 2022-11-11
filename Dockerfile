FROM centos
RUN yum update -y && yum install httpd -y
RUN service httpd restart
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/systemctl", "-D", "FOREGROUND" ]
