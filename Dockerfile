FROM nginx:1.23

LABEL maintainer="sgoser@gmail.com"

WORKDIR /usr/share/nginx/html/

COPY ./index.html ./

EXPOSE 80
