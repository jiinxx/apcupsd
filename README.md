# apcupsd2mqtt

> Publish values from apcupsd to MQTT 🔌🔋
This is a fork of https://github.com/hobbyquaker/apcupsd2mqtt bundled with dockerized apcupsd-installation.

## Usage

1. Clone repo
2. Set needed env-vars. MQTT_HOST, MQTT_USER and MQTT_PWD
3. Run with
```
docker run -d \
  --privileged \
  --restart unless-stopped \
  -v /tmp/apcupsd-docker:/tmp/apcupsd-docker \
  -v "$PWD"/etc/apcupsd/apcupsd.conf:/etc/apcupsd/apcupsd.conf \
  -v "$PWD"/etc/apcupsd/onBattery:/etc/apcupsd/onBattery \
  -e MQTT_HOST \
  -e MQTT_USER \
  -e MQTT_PWD \
  --name apcupsd \
  urmo/apcupsd
```

`$ apcupsd2mqtt --help`
