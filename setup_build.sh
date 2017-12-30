#!/bin/bash

export TEMPLATECONF=`pwd`/yocto/meta-custom-chip/conf

#echo 'bitbake rpi-basic-image '
. ./yocto/poky/oe-init-build-env ./build

echo 'To build run the following in order:'
echo '   bitbake chip-hwup-image -c fetchall'
echo '   bitbake chip-hwup-image'


