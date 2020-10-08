FROM nginx:1.15.6

COPY nginx.conf /etc/nginx/conf.d/default.conf

HEALTHCHECK CMD curl -f http://localhost/ || exit 0
