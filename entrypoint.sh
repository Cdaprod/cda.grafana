#!/bin/bash

: "${GF_SECURITY_ADMIN_USER:=admin}"
: "${GF_SECURITY_ADMIN_PASSWORD:=admin}"

sed -i "s/__GF_SECURITY_ADMIN_USER__/$GF_SECURITY_ADMIN_USER/" /etc/grafana/grafana.ini
sed -i "s/__GF_SECURITY_ADMIN_PASSWORD__/$GF_SECURITY_ADMIN_PASSWORD/" /etc/grafana/grafana.ini

exec grafana-server --homepath=/usr/share/grafana