FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY default.conf /etc/nginx/default.d/

EXPOSE 80

