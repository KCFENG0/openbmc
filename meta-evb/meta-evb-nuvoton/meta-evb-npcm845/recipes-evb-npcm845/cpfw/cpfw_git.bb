SUMMARY = "Firmware for NPCM8XX coprocessor"
SECTION = "kernel"

LICENSE = "CLOSED"

SRC_URI = "file://cp_fw.elf"

S = "${WORKDIR}"
INSANE_SKIP_${PN} = "arch"

INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
INHIBIT_PACKAGE_STRIP = "1"

firmware_dir="${nonarch_base_libdir}/firmware/"

do_install() {
	install -d ${D}${firmware_dir}
	install -m 0644 ${S}/cp_fw.elf ${D}${firmware_dir}
}

FILES_${PN} = "${firmware_dir}"
