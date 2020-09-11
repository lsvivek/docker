FROM nginx:1.10.2
MAINTAINER vivek pal "test@gmail.com"


RUN \
apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/
# expose both the HTTP (80) and HTTPS (443) ports
CMD ["nginx"]
# Expose ports.
EXPOSE 80
EXPOSE 443
