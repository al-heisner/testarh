FROM bitnami/nginx:latest
 
COPY nginx.conf /opt/bitnami/nginx/conf/nginx.conf
COPY nginx.crt /opt/bitnami/nginx/conf
COPY nginx.key.enc /opt/bitnami/nginx/conf
COPY index.html /app
COPY /decryptkey.sh /
CMD [ "/decryptkey.sh" ]
