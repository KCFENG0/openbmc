FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

EXTRA_OEMESON:append = " -Doem-meta=enabled"

SRC_URI:append = " file://0001-oem-meta-add-ipmi-bridge-command-support.patch"
SRC_URI:append = " file://0002-oem-meta-add-flash-access-command.patch"
