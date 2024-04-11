FROM ubuntu
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y apache2
ADD . /var/www/html/
CMD ["apachectl", "-D", "FOREGROUND"]
