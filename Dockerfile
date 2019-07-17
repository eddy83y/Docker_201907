FROM ubuntu:latest

LABEL maintainer="Eddy Park(xxxx@gmail.com)"

RUN apt-get update && apt-get install -y apache2
RUN echo "TEST WEBPAGE" >> /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
