
 # COPYRIGHT (C) 2019. JIEQI EdgeComputing Ltd.
 # SPDX-License-Identifier: GPL 3.0
 # Change Logs:
 # Date           Author       Notes
 # 2020-08-07     Yong      the first version


#!/bin/sh
docker cp packages/zstd $1:/ \
    && docker cp ./docker_scripts/build-zstd.sh $1:/ \
    && docker exec $1 bash -c "/build-zstd.sh" \
    && rm -rf build/zstd && mkdir build/zstd \
    && docker cp $1:/zstd/zstd build/zstd/
