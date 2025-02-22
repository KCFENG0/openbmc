inherit obmc-phosphor-systemd
inherit entity-utils

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

DEPENDS:append = " \
    ${@entity_enabled(d, '', 'evb-npcm845-yaml-config')}"

IPMI_FRU_YAML="${@entity_enabled(d, '', '${STAGING_DIR_HOST}${datadir}/evb-npcm845-yaml-config/ipmi-fru-read.yaml')}"
IPMI_FRU_PROP_YAML="${@entity_enabled(d, '', '${STAGING_DIR_HOST}${datadir}/evb-npcm845-yaml-config/ipmi-extra-properties.yaml')}"

EEPROM_NAMES = "bmc"

EEPROMFMT = "system/chassis/{0}"
EEPROM_ESCAPEDFMT = "system-chassis-{0}"
EEPROMS = "${@compose_list(d, 'EEPROMFMT', 'EEPROM_NAMES')}"
EEPROMS_ESCAPED = "${@compose_list(d, 'EEPROM_ESCAPEDFMT', 'EEPROM_NAMES')}"

ENVFMT = "obmc/eeproms/{0}"
ENVF = "${@compose_list(d, 'ENVFMT', 'EEPROMS')}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append := " ${@entity_enabled(d, '', ' ${ENVF}')}"

TMPL = "obmc-read-eeprom@.service"
TGT = "${SYSTEMD_DEFAULT_TARGET}"
INSTFMT = "obmc-read-eeprom@{0}.service"
FMT = "../${TMPL}:${TGT}.wants/${INSTFMT}"

LINKS = "${@compose_list(d, 'FMT', 'EEPROMS_ESCAPED')}"
SYSTEMD_LINK:${PN}:append := " ${@entity_enabled(d, '', ' ${LINKS}')}"
