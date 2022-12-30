#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3f868ec6-4634-4c0a-85d6-3ca2c6d3e345"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

