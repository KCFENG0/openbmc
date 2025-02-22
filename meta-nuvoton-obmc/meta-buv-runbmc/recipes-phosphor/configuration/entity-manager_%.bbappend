FILESEXTRAPATHS:prepend:buv-runbmc := "${THISDIR}/${PN}:"

SRC_URI:append:buv-runbmc = " file://runbmc.json"
SRC_URI:append:buv-runbmc = " file://buv.json"
SRC_URI:append:buv-runbmc = " file://psu0.json"
SRC_URI:append:buv-runbmc = " file://psu1.json"
SRC_URI:append:buv-runbmc = " file://blacklist.json"
SRC_URI:append:buv-runbmc = " file://0001-Add-new-type-of-settable-interface-PowerSupply.patch"
SRC_URI:append:buv-runbmc = " file://0002-Create-Associations-From-Defined-Property.patch"

do_install:append:buv-runbmc() {
    rm -f ${D}/usr/share/entity-manager/configurations/*.json
    install -d ${D}${datadir}/entity-manager
    install -m 0644 -D ${UNPACKDIR}/blacklist.json\
        ${D}${datadir}/entity-manager/blacklist.json
    install -m 0644 -D ${UNPACKDIR}/runbmc.json \
        ${D}${datadir}/entity-manager/configurations/runbmc.json
    install -m 0644 -D ${UNPACKDIR}/psu0.json \
        ${D}${datadir}/entity-manager/configurations/psu0.json
    install -m 0644 -D ${UNPACKDIR}/psu1.json \
        ${D}${datadir}/entity-manager/configurations/psu1.json
    install -m 0644 -D ${UNPACKDIR}/buv.json \
        ${D}${datadir}/entity-manager/configurations/buv.json
}
