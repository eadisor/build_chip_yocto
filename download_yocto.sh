#!/bin/bash


#apt-get install bc  build-essential  chrpath  diffstat  gawk  git  libncurses5-dev  pkg-config  subversion  texi2html  texinfo  u-boot-tool
#dpkg-reconfigure dash
#

## chip layer from https://github.com/agherzan/meta-chip
## meta sunxi (uC manufacturer) git://github.com/linux-sunxi/meta-sunxi.git
(D='poky' 					; if [ -d ./yocto/$D ] ; then echo 'download skipped '$D;  exit ; fi ; mkdir -p ./yocto/$D ; cd ./yocto/$D ;  git clone -b jethro git://git.yoctoproject.org/poky.git . ; git checkout  b1f23d1254682866236bfaeb843c0d8aa332efc2)
(D='meta-openembedded' 		; if [ -d ./yocto/$D ] ; then echo 'download skipped '$D;  exit ; fi ; mkdir -p ./yocto/$D ; cd ./yocto/$D ;  git clone -b jethro git://git.openembedded.org/meta-openembedded . ; git checkout dc5634968b270dde250690609f0015f881db81f2  )
(D='meta-chip' 				; if [ -d ./yocto/$D ] ; then echo 'download skipped '$D;  exit ; fi ; mkdir -p ./yocto/$D ; cd ./yocto/$D ;  git clone -b pyro https://github.com/agherzan/meta-chip.git . ; git checkout 5920cb5739dbf6f8bec0ccb6f9af4605b28711d1  )
(D='meta-sunxi' 			; if [ -d ./yocto/$D ] ; then echo 'download skipped '$D;  exit ; fi ; mkdir -p ./yocto/$D ; cd ./yocto/$D ;  git clone -b jethro git://github.com/linux-sunxi/meta-sunxi.git . ; git checkout 849a2266d51cdcfb5f2733bbdc9ff7364097ba33  )
 
