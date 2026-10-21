#!/bin/sh
set -e
# Inject Railway runtime variables into the xray config
sed -i "s|__UUID__|${UUID}|g" /etc/xray/config.json
sed -i "s|__WSPATH__|${WS_PATH}|g" /etc/xray/config.json
sed -i "s|__PORT__|${PORT}|g" /etc/xray/config.json
exec /usr/local/bin/xray run -config /etc/xray/config.json
