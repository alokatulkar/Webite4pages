FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
COPY site/ /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]