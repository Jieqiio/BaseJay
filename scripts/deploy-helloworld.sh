
 # COPYRIGHT (C) 2019. JIEQI EdgeComputing Ltd.
 # SPDX-License-Identifier: GPL 3.0
 # Change Logs:
 # Date           Author       Notes
 # 2019-07-31     tr.yang      the first version

#!/bin/sh
docker cp packages/helloworld $1:/ \
    && docker exec $1 bash -c "/build-helloworld.sh" \
    && rm -rf build/helloworld && mkdir build/hellworld \
    && docker cp $1:/helloworld/helloworld build/hellworld/
