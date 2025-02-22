FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

#SRC_URI:append = " file://0001-Customize-phosphor-watchdog-for-Intel-platforms.patch"
#SRC_URI:append = " file://0002-Customize-phosphor-watchdog-for-Olympus-platform.patch"

# Remove the override to keep service running after DC cycle
SYSTEMD_OVERRIDE:${PN}:remove = "poweron.conf:phosphor-watchdog@poweron.service.d/poweron.conf"
SYSTEMD_SERVICE:${PN} = "phosphor-watchdog.service phosphor-watchdog-host-cycle.service"
