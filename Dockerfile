# dockerfile for installation of Apache and running a simple website

FROM ubuntu:16.04

RUN apt-get -y update && apt-get -y install apache2
RUN systemctl start apache2.service

RUN echo 'Hello World' > /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 8080
