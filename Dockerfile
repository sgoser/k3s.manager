FROM nginx:1.23

LABEL maintainer="sgoser@gmail.com"

RUN apt update \
    && apt install --no-install-recommends --no-install-suggests -y \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/share/nginx/html/

COPY ./index.html ./

EXPOSE 80
