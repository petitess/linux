#!/bin/bash

WEBHOOK_URL="https://oncall-prod.grafana.net/oncall/integrations/v1/zabbix/abc/"

EVENT_ID="{EVENT.ID}"
TRIGGER_NAME="{TRIGGER.NAME}"
HOST_NAME="{HOST.NAME}"
SEVERITY="{TRIGGER.SEVERITY}"
STATUS="{TRIGGER.STATUS}"
DESCRIPTION="{TRIGGER.DESCRIPTION}"
IP="{IPADDRESS}"
TRIGGER_ID="{TRIGGER.ID}"
VALUE="{ITEM.VALUE}"

# Escape JSON safely (handles newlines and quotes)
json_escape() {
printf '%s' "$1" | python -c 'import json,sys; print(json.dumps(sys.stdin.read()))'
}

PAYLOAD=$(cat <<EOF
{
"alert_uid": $(json_escape "$EVENT_ID"),
"title": $(json_escape "[CUSTOMER] $TRIGGER_NAME $HOST_NAME"),
"message": $(json_escape "$DESCRIPTION"),
"state": $(json_escape "$STATUS"),
"tags": {
"host": $(json_escape "$HOST_NAME"),
"severity": $(json_escape "$SEVERITY"),
"trigger": $(json_escape "$TRIGGER_NAME"),
"ip": $(json_escape "$IP"),
"trigger_id": $(json_escape "$TRIGGER_ID"),
"value": $(json_escape "$VALUE")
}
}
EOF
)

echo "Generated JSON payload:"
echo "$PAYLOAD"

curl -s -X POST \
-H "Content-Type: application/json" \
-d "$PAYLOAD" \
"$WEBHOOK_URL"
