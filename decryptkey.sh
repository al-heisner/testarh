#!/bin/bash
CPATH=/opt/bitnami/nginx/conf
ENC=nginx.key.gpg
DEC=nginx.key
export CPATH ENC DEC 

sleep 90
/bin/gpg -d --passphrase-file decrypt_pass ${CPATH}/${ENC} > ${CPATH}/${DEC}
rm ${CPATH}/${ENC}

