FROM ubuntu:latest
LABEL GOKHAN ASKIN 
RUN apt-get update && apt-get install -y nginx
WORKDIR /var/www/html
COPY . .
EXPOSE 80/tcp
CMD [ "nginx", "-g daemon off;"]
