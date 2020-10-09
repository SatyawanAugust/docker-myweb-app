FROM phpmyadmin:5

# docker image maintainer
LABEL maintainer="wawan.cukb@gmail.com"

# update & install dependencies
RUN apt-get update && apt-get install wget -y
RUN apt-get clean && apt-get autoremove -y

# copy file docker-healthcheck pma
COPY docker-healthcheck /usr/local/bin/

# jalankan proses healthcheck
HEALTHCHECK CMD ["docker-healthcheck"]
