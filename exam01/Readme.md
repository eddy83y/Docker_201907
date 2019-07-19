# docker build 하는 directory에 위 내용의 Dockerfile 과 html-generator.sh 파일이 있다고 가정
docker build -t exam01 .
docker run -it -d -v /webapp:/var/htdocs --name c1 exam01
