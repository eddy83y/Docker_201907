FROM debian
MAINTAINER Eddy(eddy83y@gmail.com)

RUN mkdir /var/htdocs
RUN apt-get update && apt-get install -y fortune

VOLUME /var/htdocs

#COPY html-generator.sh /var/htdocs/html-generator.sh
RUN ln -s /var/htdocs/html-generator.sh /entrypoint.sh
#CMD ["/bin/bash", "html-generator.sh]
ENTRYPOINT ["entrypoint.sh"]
