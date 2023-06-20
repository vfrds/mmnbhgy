#!/bin/sh
if [ ! -f UUID ]; then
  UUID="749c6255-69dd-42e1-82fa-62a94984089d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

