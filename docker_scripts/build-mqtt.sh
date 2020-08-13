
 # COPYRIGHT (C) 2019. JIEQI EdgeComputing Ltd.
 # SPDX-License-Identifier: GPL 3.0
 # Change Logs:
 # Date           Author       Notes
 # 2020-08-07     Yong      the first version

#!/bin/bash
cd MQTT-C \
    && rm -rf build && mkdir build \
    && cd build \
    && source /environment-setup-armv7a-vfp-neon-oe-linux-gnueabi \
    && cmake .. \
    && make
