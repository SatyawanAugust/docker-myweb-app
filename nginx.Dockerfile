FROM nginx:1.15.6
LABEL maintainer="wawan.cukb@gmail.com"
RUN apt-get update && apt-get install curl -y
RUN apt-get clean && apt-get autoremove -y
COPY nginx.conf /etc/nginx/conf.d/default.conf

HEALTHCHECK --interval=30s --timeout=10s CMD curl -f http://localhost/ || exit 1