FROM bitnami/nginx:latest
 
COPY nginx.conf /opt/bitnami/nginx/conf/nginx.conf
COPY nginx.key /opt/bitnami/nginx/conf/nginx.key1
COPY nginx.crt /opt/bitnami/nginx/conf
COPY index.html /app
RUN [ "sh", "-c", "whoami" ]
RUN [ "sh", "-c", "cat /opt/bitnami/nginx/conf/nginx.key1 > /opt/bitnami/nginx/conf/nginx.key" ]
