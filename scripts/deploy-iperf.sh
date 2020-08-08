
 # COPYRIGHT (C) 2019. JIEQI EdgeComputing Ltd.
 # SPDX-License-Identifier: GPL 3.0
 # Change Logs:
 # Date           Author       Notes
 # 2020-08-07     Yong      the first version


#!/bin/sh
docker cp iperf $1:/ \
    && docker cp ./docker_scripts/build-iperf.sh $1:/ \
    && docker exec $1 bash -c "/build-iperf.sh" \
    && rm -rf build/iperf \
    && docker cp $1:/iperf build/iperf 
