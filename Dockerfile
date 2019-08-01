FROM bitnami/nginx:latest
 
COPY nginx.conf /opt/bitnami/nginx/conf/nginx.conf
USER root
RUN [ "sh", "-c", "chmod g+w /etc/passwd" ]
USER 1001

#COPY nginx.key /opt/bitnami/nginx/conf/nginx.key
#COPY nginx.crt /opt/bitnami/nginx/conf
#COPY index.html /app
#USER root
#RUN [ "sh", "-c", "chmod 644 /opt/bitnami/nginx/conf/nginx.key" ]
#USER 1001
