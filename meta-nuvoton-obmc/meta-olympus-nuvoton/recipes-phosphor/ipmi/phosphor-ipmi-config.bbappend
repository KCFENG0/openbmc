FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

inherit image_version

SRC_URI:append = " file://channel_config.json"
SRC_URI:append = " file://dev_id.json"
SRC_URI:append = " file://power_reading.json"
SRC_URI:append = " file://dcmi_sensors.json"

do_install:append() {
    install -m 0644 -D ${UNPACKDIR}/channel_config.json \
        ${D}${datadir}/ipmi-providers/channel_config.json
    install -m 0644 -D ${UNPACKDIR}/dev_id.json \
        ${D}${datadir}/ipmi-providers/dev_id.json
    install -m 0644 -D ${UNPACKDIR}/power_reading.json \
        ${D}${datadir}/ipmi-providers/power_reading.json
    install -m 0644 -D ${UNPACKDIR}/dcmi_sensors.json \
        ${D}${datadir}/ipmi-providers/dcmi_sensors.json
}

unset do_patch[noexec]
do_patch[depends] = "os-release:do_populate_sysroot"

python do_patch() {
    import json
    import re
    from shutil import copyfile
    version_id = do_get_version(d)

    # count from the commit version, minimum of one digit
    count = re.findall("-(\d{1,4})-", version_id)
    if count:
        commit = count[0]
    else:
        commit = "0"

    release = re.findall("-r(\d{1,4})", version_id)
    if release:
        auxVer = commit + "{0:0>4}".format(release[0])
    else:
        auxVer = commit + "0000"

    unpackdir = d.getVar('UNPACKDIR', True)
    file = os.path.join(unpackdir, 'dev_id.json')

    # Update dev_id.json with the auxiliary firmware revision
    with open(file, "r+") as jsonFile:
        data = json.load(jsonFile)
        jsonFile.seek(0)
        jsonFile.truncate()
        data["aux"] = int(auxVer, 16)
        json.dump(data, jsonFile)
}
