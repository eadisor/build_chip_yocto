FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "              \
	file://pulseaudio \
	file://bluetooth_autotrust \
	file://alsa \
	file://bluetooth \
	file://bluetooth_discoverable   \
   "

do_install_append() {
    install -d ${D}${sysconfdir}/init.d
    install -d ${D}${sysconfdir}/rc5.d

    install -m 0755 ${WORKDIR}/pulseaudio				     ${D}${sysconfdir}/init.d/
    install -m 0755 ${WORKDIR}/bluetooth_autotrust           ${D}${sysconfdir}/init.d/
    install -m 0755 ${WORKDIR}/alsa                          ${D}${sysconfdir}/init.d/
    install -m 0755 ${WORKDIR}/bluetooth                     ${D}${sysconfdir}/init.d/
    install -m 0755 ${WORKDIR}/bluetooth_discoverable  	     ${D}${sysconfdir}/init.d/
	
    install -m 0755 ${WORKDIR}/bluetooth      			${D}${sysconfdir}/rc5.d/S60bluetooth
    install -m 0755 ${WORKDIR}/pulseaudio     			${D}${sysconfdir}/rc5.d/S62pulseaudio
    install -m 0755 ${WORKDIR}/alsa      				${D}${sysconfdir}/rc5.d/S63alsa
    install -m 0755 ${WORKDIR}/bluetooth_discoverable   ${D}${sysconfdir}/rc5.d/S64bluetooth_discoverable
    install -m 0755 ${WORKDIR}/bluetooth_autotrust      ${D}${sysconfdir}/rc5.d/S65bluetooth_autotrust

    #
    ln -sf ../init.d/run-script      ${D}${sysconfdir}/rc5.d/S90run-script
}