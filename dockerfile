 
 # COPYRIGHT (C) 2019. JIEQI EdgeComputing Ltd.
 # SPDX-License-Identifier: GPL 3.0
 # Change Logs:
 # Date           Author       Notes
 # 2019-07-31     tr.yang      the first version
 # 2020-08-09     Yong         the second version


FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install apt-transport-https ca-certificates gnupg software-properties-common wget -y
RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
RUN apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
RUN apt-get update 
RUN apt-get install -y gcc git make screen vim nmap python perl cpio automake libtool pkg-config liblzo2-2 cmake clang-tools doxygen graphviz 

COPY external/sdk /sdk
COPY external/sdk/environment-setup-armv7a-vfp-neon-oe-linux-gnueabi /
RUN export PERL_MM_USE_DEFAULT=1 && cpan -i FindBin
RUN echo "escape \`\`" > /root/.screenrc
RUN echo "defshell -bash" >> /root/.screenrc
RUN cd /sdk && ./oecore-x86_64-armv7a-vfp-neon-toolchain-nodistro.0.sh -y

## fix the arm-oe-linux-gnueabi-g++ -- broken issue when compile p-net
RUN mv /usr/local/oecore-x86_64/sysroots/armv7a-vfp-neon-oe-linux-gnueabi/usr/lib/libstdc++.so /usr/local/oecore-x86_64/sysroots/armv7a-vfp-neon-oe-linux-gnueabi/usr/lib/libstdc++.so.old
RUN ln -s /usr/local/oecore-x86_64/sysroots/armv7a-vfp-neon-oe-linux-gnueabi/usr/lib/libstdc++.so.6 /usr/local/oecore-x86_64/sysroots/armv7a-vfp-neon-oe-linux-gnueabi/usr/lib/libstdc++.so
RUN apt-get install libc6-armhf-cross -y
# /lib/ld-linux.so.3: No such file or directory
RUN ln -s /usr/arm-linux-gnueabihf/lib/ld-linux.so.3 /lib/ld-linux.so.3
RUN cp /usr/arm-linux-gnueabihf/lib/* /usr/lib/

# COPY YOUR OWN CODE INTO THE DOCKER
COPY packages/* /
COPY docker_scripts/*  /

WORKDIR /
CMD ["bash"]
