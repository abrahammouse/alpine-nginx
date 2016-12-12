FROM container4armhf/armhf-alpine:latest
MAINTAINER Abrahammouse <abrahammouse@gmail.com>
RUN apk add --update nginx && rm -rf /var/cache/apk/*
RUN mkdir -p /tmp/nginx/client-body

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY website /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
