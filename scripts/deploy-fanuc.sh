
 # COPYRIGHT (C) 2019. JIEQI EdgeComputing Ltd.
 # SPDX-License-Identifier: GPL 3.0
 # Change Logs:
 # Date           Author       Notes
 # 2020-08-07     Yong      the first version


#!/bin/sh
docker cp packages/fanuc-control $1:/ \
    && docker cp ./docker_scripts/build-fanuc.sh $1:/ \
    && docker exec $1 bash -c "/build-fanuc.sh" \
    && rm -rf build/fanuc \
    && docker cp $1:/fanuc-control/bin build/fanuc 
