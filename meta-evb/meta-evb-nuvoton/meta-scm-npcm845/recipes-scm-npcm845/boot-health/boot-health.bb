PR = "r1"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

inherit obmc-phosphor-systemd
DEPENDS = "systemd"

SRC_URI = "file://scm-boot-health.service \
  file://scm-warm-reset-sel.service \
  file://scm-slot-id.service \
  file://watchdog_sel.sh \
  file://slot_id.sh \
"
SYSTEMD_PACKAGES = "${PN}"
SYSTEMD_SERVICE:${PN} = "scm-boot-health.service scm-warm-reset-sel.service scm-slot-id.service"

do_install() {
    install -D -m 0644 ${WORKDIR}/scm-boot-health.service \
        ${D}${systemd_unitdir}/system/scm-boot-health.service
    install -D -m 0644 ${WORKDIR}/scm-warm-reset-sel.service \
        ${D}${systemd_unitdir}/system/scm-warm-reset-sel.service
    install -D -m 0644 ${WORKDIR}/scm-slot-id.service \
        ${D}${systemd_unitdir}/system/scm-slot-id.service
    install -D -m 0755 ${WORKDIR}/watchdog_sel.sh ${D}${bindir}/watchdog_sel.sh
    install -D -m 0755 ${WORKDIR}/slot_id.sh ${D}${bindir}/slot_id.sh
}
