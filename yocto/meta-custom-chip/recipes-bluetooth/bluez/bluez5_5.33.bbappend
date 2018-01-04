FILESEXTRAPATHS_prepend := "${THISDIR}/files:"


SRC_URI += "\
	file://audio.conf \
	file://main.conf \
	"


do_install_append() {
	install -d ${D}${sysconfdir}/bluetooth/
	install -m 0644 ${WORKDIR}/audio.conf ${D}/${sysconfdir}/bluetooth/
	install -m 0644 ${WORKDIR}/main.conf ${D}/${sysconfdir}/bluetooth/
}