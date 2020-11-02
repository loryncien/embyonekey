#!/bin/sh
cd /var/packages/EmbyServer/target/mono/bin
wget https://raw.githubusercontent.com/loryncien/embyonekey/master/mb3admin.com.cert.pem
cat mb3admin.com.cert.pem >> /etc/ssl/certs/ca-certificates.crt
./cert-sync /etc/ssl/certs/ca-certificates.crt
cd /usr/local/etc/nginx/conf.d/*-*-*-*
wget https://raw.githubusercontent.com/loryncien/embyonekey/master/user.conf
nginx -s reload
