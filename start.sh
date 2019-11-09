#!/bin/sh

echo "Starting apcupsd.."
/sbin/apcupsd -b &

sleep 10

echo "Starting apcupsd2mqtt.."
node index.js -m $MQTT_HOST --mqttConnectOptions.username $MQTT_USER --mqttConnectOptions.password $MQTT_PWD 


