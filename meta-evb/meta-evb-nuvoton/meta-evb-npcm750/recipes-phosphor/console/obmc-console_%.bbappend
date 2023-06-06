FILESEXTRAPATHS:prepend:evb-npcm750 := "${THISDIR}/${PN}:"

SRC_URI:append:evb-npcm750 = " file://80-evb-npcm750-sol.rules"

do_install:append:evb-npcm750() {
        install -m 0755 -d ${D}${sysconfdir}/${BPN}
        rm -f ${D}${sysconfdir}/${BPN}/server.ttyVUART0.conf
        install -m 0644 ${WORKDIR}/${BPN}.conf ${D}${sysconfdir}/
        ln -sr ${D}${sysconfdir}/${BPN}.conf ${D}${sysconfdir}/${BPN}/server.ttyS1.conf

        install -d ${D}/${nonarch_base_libdir}/udev/rules.d
        rm -f ${D}/${nonarch_base_libdir}/udev/rules.d/80-obmc-console-uart.rules
        install -m 0644 ${WORKDIR}/80-evb-npcm750-sol.rules ${D}/${nonarch_base_libdir}/udev/rules.d
}
