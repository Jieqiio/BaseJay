
 # COPYRIGHT (C) 2019. JIEQI EdgeComputing Ltd.
 # SPDX-License-Identifier: GPL 3.0
 # Change Logs:
 # Date           Author       Notes
 # 2020-08-07     Yong      the first version

#!/bin/bash
cd /iperf \
    && sh bootstrap.sh \
    && source /environment-setup-armv7a-vfp-neon-oe-linux-gnueabi \
    && autoreconf -i \
    && ./configure --host=arm \
    && make clean && make
