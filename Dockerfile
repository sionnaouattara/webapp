FROM ubuntu
MAINTAINER easytraining (sionnaouattara@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=nointeractive apt-get install -y nginx git
EXPOSE 80
#ADD satic-website-example-master/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/sionnaouattara/satic-website-example-master.git /var/www/html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
