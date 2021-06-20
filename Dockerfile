FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/
RUN apk add nano libnginx-mod-http-lua

EXPOSE 80

