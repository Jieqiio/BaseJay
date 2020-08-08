 
 # COPYRIGHT (C) 2019. JIEQI EdgeComputing Ltd.
 # SPDX-License-Identifier: GPL 3.0
 # Change Logs:
 # Date           Author       Notes
 # 2019-07-31     tr.yang      the first version


FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y gcc git make screen vim nmap python perl cpio automake libtool pkg-config liblzo2-2 cmake
COPY external/sdk /sdk
COPY external/sdk/environment-setup-armv7a-vfp-neon-oe-linux-gnueabi /
RUN export PERL_MM_USE_DEFAULT=1 && cpan -i FindBin
RUN echo "escape \`\`" > /root/.screenrc
RUN echo "defshell -bash" >> /root/.screenrc
RUN cd /sdk && ./oecore-x86_64-armv7a-vfp-neon-toolchain-nodistro.0.sh -y

# COPY YOUR OWN CODE INTO THE DOCKER
COPY helloworld /helloworld
COPY docker_scripts/build-helloworld.sh  /
#

WORKDIR /
CMD ["bash"]
