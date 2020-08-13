
 # COPYRIGHT (C) 2019. JIEQI EdgeComputing Ltd.
 # SPDX-License-Identifier: GPL 3.0
 # Change Logs:
 # Date           Author       Notes
 # 2020-08-07     Yong      the first version


#!/bin/sh
docker cp packages/MQTT-C $1:/ \
    && docker cp ./docker_scripts/build-mqtt.sh $1:/ \
    && docker exec $1 bash -c "/build-mqtt.sh" \
    && rm -rf build/MQTT-C && mkdir MQTT-C \
    && docker cp $1:/MQTT-C build/MQTT-C 
