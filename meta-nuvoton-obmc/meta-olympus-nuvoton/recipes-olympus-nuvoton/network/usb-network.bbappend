FILESEXTRAPATHS:append := "${THISDIR}/${PN}:"

SRC_URI:append = " file://00-bmc-usb0.network"
SRC_URI:append = " file://usb-network.conf"


FILES:${PN}:append = " ${datadir}/usb-network/usb-network.conf"
FILES:${PN}:append = " ${sysconfdir_native}/systemd/network/00-bmc-usb0.network"

do_install:append() {
    install -d ${D}${sysconfdir_native}/systemd/network/
    install -m 0644 ${UNPACKDIR}/00-bmc-usb0.network \
        ${D}${sysconfdir_native}/systemd/network

    install -d ${D}${datadir}/usb-network
    install -m 0644 -D ${UNPACKDIR}/usb-network.conf \
        ${D}${datadir}/usb-network
}
