FROM mysql:5.7

# docker image maintainer 
LABEL maintainer="wawan.cukb@gmail.com"

# update & install dependencies
RUN apt-get update && apt-get install ping -y
RUN apt-get clean && apt-get autoremove -y

# copy docker-healthcheck mysql
COPY docker-healthcheck /usr/local/bin/

# jalankan proses healthcheck
HEALTHCHECK CMD ["docker-healthcheck"]

