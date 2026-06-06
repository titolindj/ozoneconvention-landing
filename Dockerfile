FROM nginx:alpine

COPY index.html /tmp/default/index.html
COPY logo.png /tmp/default/logo.png

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
