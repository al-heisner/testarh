FROM bitnami/nginx:latest
 
COPY nginx.conf /opt/bitnami/nginx/conf/nginx.conf
COPY nginx.crt /opt/bitnami/nginx/conf
COPY index.html /app
COPY /decryptkey.sh /
RUN [ "/decryptkey.sh" ]
