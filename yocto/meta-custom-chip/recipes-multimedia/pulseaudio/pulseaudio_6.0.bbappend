FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
           file://pulseaudio-bluetooth.conf  \
"

do_install_append() {
	install -d ${D}/${sysconfdir}/dbus-1/system.d/
	install -m 0644 ${WORKDIR}/pulseaudio-bluetooth.conf  ${D}/${sysconfdir}/dbus-1/system.d/
}
