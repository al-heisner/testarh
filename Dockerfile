FROM bitnami/nginx:latest
 
COPY nginx.conf /opt/bitnami/nginx/conf/nginx.conf
COPY nginx.key /opt/bitnami/nginx/conf/nginx.key
COPY nginx.crt /opt/bitnami/nginx/conf
COPY index.html /app
RUN chmod 644 /opt/bitnami/nginx/conf/nginx.key
