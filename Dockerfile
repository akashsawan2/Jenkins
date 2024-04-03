FROM ubuntu:22.04
RUN apt-get update && apt-get install -y nginx
RUN apt-get install -y vim wget curl net-tools
RUN rm /etc/nginx/sites-enabled/default
RUN rm /var/www/html/index.nginx-debian.html
COPY ./akash.conf /etc/nginx/sites-enabled/
COPY ./index.html /var/www/html/
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
