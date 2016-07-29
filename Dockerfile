FROM alpine:latest
MAINTAINER John Miller <john@harleydigital.com>

# Get the packages
RUN apk add --no-cache \
	nginx ca-certificates musl

# add the necessary files
ADD nginx.conf /etc/nginx

# add back end sites
ADD site1.conf /etc/nginx/sites-enabled
ADD site2.conf /etc/nginx/sites-enabled

# make the run script executable
RUN chmod +x /run.sh

# open the port
EXPOSE 80

# set the data volume
VOLUME ["/data/"]

# start
CMD ["/run.sh"]