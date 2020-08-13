
 # COPYRIGHT (C) 2019. JIEQI EdgeComputing Ltd.
 # SPDX-License-Identifier: GPL 3.0
 # Change Logs:
 # Date           Author       Notes
 # 2020-08-07     Yong      the first version


#!/bin/sh
docker cp packages/libmodbus $1:/libmodbus \
    && docker cp ./docker_scripts/build-libmodbus.sh $1:/ \
    && docker exec $1 bash -c "/build-libmodbus.sh" \
    && rm -rf build/libmodbus && mkdir build/libmodbus \
    && docker cp $1:/libmodbus/tests build/libmodbus/
