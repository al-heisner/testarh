FROM bitnami/nginx:latest
 
COPY nginx.conf /opt/bitnami/nginx/conf/nginx.conf
COPY nginx.key /opt/bitnami/nginx/conf/nginx.key1
COPY nginx.crt /opt/bitnami/nginx/conf
COPY index.html /app
USER root
RUN [ "sh", "-c", "cat /opt/bitnami/nginx/conf/nginx.key1 > /opt/bitnami/nginx/conf/nginx.key" ]
USER 1001
