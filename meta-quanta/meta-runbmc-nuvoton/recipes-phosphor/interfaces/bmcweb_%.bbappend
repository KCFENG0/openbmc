FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_runbmc-nuvoton = " file://0001-bmcweb-add-clear-event-logs-function.patch"

# Enable CPU Log and Raw PECI support
EXTRA_OECMAKE += "-DBMCWEB_ENABLE_REDFISH_CPU_LOG=ON"
EXTRA_OECMAKE += "-DBMCWEB_ENABLE_REDFISH_RAW_PECI=ON"

# Enable Redfish BMC Journal support
EXTRA_OECMAKE += "-DBMCWEB_ENABLE_REDFISH_BMC_JOURNAL=ON"

# Enable DBUS log service
EXTRA_OECMAKE += "-DBMCWEB_ENABLE_REDFISH_DBUS_LOG_ENTRIES=ON"
