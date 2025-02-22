FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
inherit obmc-phosphor-systemd

SRC_URI:append = " file://F0B_BMC_MB.json"
SRC_URI:append = " file://PSU_0.json"
SRC_URI:append = " file://xyz.openbmc_project.EntityManager.service"
SRC_URI:append = " file://xyz.openbmc_project.FruDevice.service"
SRC_URI:append = " file://0001-Add-new-type-of-settable-interface-PowerSupply.patch"

FILES:${PN}:append = " ${datadir}/entity-manager/F0B_BMC_MB.json"
FILES:${PN}:append = " ${datadir}/entity-manager/PSU_0.json"

# reload sensor service files
SRC_URI:append = " \
    file://olympus-reload-sensor-on.service \
    file://olympus-reload-sensor-off.service \
    file://olympus-reload-sensor.sh"

SYSTEMD_SERVICE:${PN}:append = " \
    olympus-reload-sensor-on.service \
    olympus-reload-sensor-off.service"

SENSOR_ON_TMPL = "olympus-reload-sensor-on.service"
CHASSIS_POWERON_TGTFMT = "obmc-chassis-poweron.target"
ENABLE_POWER_FMT = "../${SENSOR_ON_TMPL}:${CHASSIS_POWERON_TGTFMT}.wants/${SENSOR_ON_TMPL}"
SYSTEMD_LINK:${PN}:append = " ${@compose_list(d, 'ENABLE_POWER_FMT', 'OBMC_CHASSIS_INSTANCES')}"

SENSOR_OFF_TMPL = "olympus-reload-sensor-off.service"
CHASSIS_POWEROFF_TGTFMT = "obmc-chassis-poweroff.target"
DISABLE_POWER_FMT = "../${SENSOR_OFF_TMPL}:${CHASSIS_POWEROFF_TGTFMT}.wants/${SENSOR_OFF_TMPL}"
SYSTEMD_LINK:${PN}:append = " ${@compose_list(d, 'DISABLE_POWER_FMT', 'OBMC_CHASSIS_INSTANCES')}"

do_install:append() {
    rm -f ${D}${datadir}/entity-manager/configurations/*.json
    install -d ${D}${datadir}/entity-manager
    install -m 0644 -D ${UNPACKDIR}/F0B_BMC_MB.json \
        ${D}${datadir}/entity-manager/configurations/F0B_BMC_MB.json
    install -m 0644 -D ${UNPACKDIR}/PSU_0.json \
        ${D}${datadir}/entity-manager/configurations/PSU_0.json
    install -d ${D}/${bindir}
    install -m 0755 ${UNPACKDIR}/olympus-reload-sensor.sh ${D}${bindir}
}
