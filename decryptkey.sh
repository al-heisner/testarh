#!/bin/bash
PATH=/opt/bitnami/nginx/conf
ENC=nginx.key.gpg
DEC=nginx.key
export PATH ENC DEC 

/usr/bin/gpg -d --passphrase-file decrypt_pass ${PATH}/${ENC} > ${PATH}/${DEC}
/usr/bin/rm ${PATH}/${ENC}

