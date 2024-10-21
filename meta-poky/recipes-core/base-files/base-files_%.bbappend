FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# Install motd file only if the distribution is poky
    if [ "${DISTRO}" = "poky" ]; then
        install -m 0644 ${S}/motd ${D}${sysconfdir}/motd
    fi
