FROM debian
MAINTAINER Eddy(eddy83y@gmail.com)

RUN apt-get update && apt-get install -y fortune

#VOLUME /var/htdocs

COPY html-generator.sh /html-generator.sh
#RUN ln -s /var/htdocs/html-generator.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash"]
CMD ["/html-generator.sh"]
