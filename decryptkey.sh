#!/bin/bash
PATH=/opt/bitnami/nginx/conf
ENC=nginx.key.enc
DEC=nginx.key
pass=$(/bin/cat decrypt_pass)
export PATH ENC DEC pass

/bin/sleep 3600
openssl enc -d -a -pass env:pass -in ${PATH}/${ENC} > ${PATH}/${DEC}
rm ${PATH}/${ENC}

