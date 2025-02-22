SUMMARY = "Simplified object serialization in python"
DESCRIPTION = "Marshmallow is an ORM/ODM/framework-agnostic library for converting complex datatypes, such as objects, to and from native Python datatypes."
HOMEPAGE = "https://github.com/marshmallow-code/marshmallow"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "\
                    file://LICENSE;md5=27586b20700d7544c06933afe56f7df4 \
                    file://docs/license.rst;md5=13da439ad060419fb7cf364523017cfb"

SRC_URI[sha256sum] = "3a8dfda6edd8dcdbf216c0ede1d1e78d230a6dc9c5a088f58c4083b974a0d468"

inherit python_flit_core pypi ptest

SRC_URI += " \
        file://run-ptest \
"

RDEPENDS:${PN}-ptest += " \
        python3-pytest \
        python3-pytz \
        python3-simplejson \
        python3-unittest-automake-output \
        python3-zoneinfo \
        python3-tzdata \
"

do_install_ptest() {
        install -d ${D}${PTEST_PATH}/tests
        rm -rf ${S}/tests/mypy_test_cases
        cp -rf ${S}/tests/* ${D}${PTEST_PATH}/tests/
}

RDEPENDS:${PN} += " \
        python3-compression \
        python3-datetime \
        python3-email \
        python3-json \
        python3-numbers \
        python3-pprint \
        python3-packaging \
"
