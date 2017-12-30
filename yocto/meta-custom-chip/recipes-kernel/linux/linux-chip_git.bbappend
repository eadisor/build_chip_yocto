DESCRIPTION = "Linux Kernel for C.H.I.P. boards"
SECTION = "kernel"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"


LINUX_VERSION = "4.4.13"
PV = "${LINUX_VERSION}+git${SRCPV}"

SRCREV = "c0ac46490069b92d7104e9f0a63b4611bc9ca5fc"
BRANCH = "debian/4.4.13-ntc-mlc"
SRC_URI = "git://github.com/NextThingCo/CHIP-linux.git;protocol=git;branch=${BRANCH} \
           file://defconfig \
          "

