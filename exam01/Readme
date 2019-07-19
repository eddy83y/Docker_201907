Title : fortune shell 을 자동으로 실행하는 Docker Container<br/>

1. Dockerfile 내용
------------------------------------------------------------
FROM debian
MAINTAINER Eddy(eddy83y@gmail.com)

RUN apt-get update && apt-get install -y fortune

#VOLUME /var/htdocs

COPY html-generator.sh /html-generator.sh
#RUN ln -s /var/htdocs/html-generator.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash"]
CMD ["/html-generator.sh"]

------------------------------------------------------------
2. Dockerfile 기반으로 build 및  Container실행
# docker build 하는 directory에 위 내용의 Dockerfile 과 html-generator.sh 파일이 있다고 가정
docker build -t generator:latest .
docker run -it -d -v /webapp:/var/htdocs --name c1 generator:latest

3. mynginx Container실행
docker run -it -d --name mynginx -p 80:80 -v /webapp:/usr/share/nginx/html nginx

# 확인
curl localhost:80
http://docker.example.com:80
