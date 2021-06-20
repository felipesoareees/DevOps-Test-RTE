FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/
RUN apk add nano
RUN apk add nginx-mod-http-lua

EXPOSE 80

