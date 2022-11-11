FROM ubuntu:18.04
RUN apt-get update -y && apt-get install apache2 -y
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN service apache2 restart
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
