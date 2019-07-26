#!/bin/bash
PATH=/opt/bitnami/nginx/conf
ENC=nginx.key.enc
DEC=nginx.key
pass=$(cat decrypt_pass)
export PATH ENC DEC pass

openssl enc -d -a -pass env:pass -in ${PATH}/${ENC} > ${PATH}/${DEC}
rm ${PATH}/${ENC}

