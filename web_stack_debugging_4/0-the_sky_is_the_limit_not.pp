#!/usr/bin/env bash
# Fixes nginx's open file limit so it handles more concurrent requests
sed -i 's/ULIMIT="-n 15"/ULIMIT="-n 4096"/' /etc/default/nginx
service nginx restart
