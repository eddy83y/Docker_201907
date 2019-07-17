FROM centos
RUN yum install -y iproute httpd
RUN echo "hello, world" >> /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]