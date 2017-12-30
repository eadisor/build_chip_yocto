SUMMARY = "programs and firmware to operate the Bluetooth section of the RTL8723BS hardware"
HOMEPAGE = "https://github.com/NextThingCo/rtl8723bs_bt"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "\
	file://hci_ldisc.c;endline=24;md5=2afc1043c3931e9167681f36ec4c73e6 \
"

SRC_URI = "git://github.com/NextThingCo/rtl8723bs_bt;protocol=https;branch=debian;"
SRCREV="5835922c690ad89a54fd793d2d0c06dd44e37b43"

S = "${WORKDIR}/git"

FILES_${PN} += " /lib/firmware"

do_configure() {
    :
}

do_compile() {
	oe_runmake rtk_hciattach
}

do_install() {
		mkdir -p ${D}/lib/firmware/rtl_bt
        mkdir -p ${D}/sbin
        cp -p rtlbt_* ${D}/lib/firmware/rtl_bt/.
        cp -p rtk_hciattach ${D}/sbin/
        cp -p bt_reset ${D}/sbin/
}


