#grab nginx image
FROM alpine

#update package cache
RUN apk update

#install nginx
RUN apk add nginx curl

#make directories needed for nginx
RUN mkdir -p /run/nginx

RUN mkdir -p /var/www/html

COPY index.html /var/www/html

#drop config to make things work
COPY nginx.conf /etc/nginx/http.d/

COPY init.sh /init.sh

#expose port 80
EXPOSE 80

CMD /init.sh