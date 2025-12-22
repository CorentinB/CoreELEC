# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="edid-decode"
PKG_VERSION="9ba4e90f3c0705351d32f526653e3e765fa2cf64" # 2022-09-23
PKG_SHA256="0c2cafa1321fe50817734f192f07aa20f6f1f29621a27600a348af4838dda642"
PKG_LICENSE="None"
PKG_SITE="https://git.linuxtv.org/edid-decode.git/"
PKG_URL="https://repo.or.cz/edid-decode.git/snapshot/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Decode EDID data in human-readable format"

EDID_SOURCES="calc-gtf-cvt.cpp calc-ovt.cpp \
              edid-decode.cpp parse-base-block.cpp parse-cta-block.cpp \
              parse-displayid-block.cpp parse-ls-ext-block.cpp \
              parse-di-ext-block.cpp parse-vtb-ext-block.cpp"

make_target() {
  echo "${CXX} ${CPPFLAGS} -Wall ${LDFLAGS} -g -DSHA=${PKG_VERSION:0:12} -o edid-decode ${EDID_SOURCES} -lm"
  ${CXX} ${CPPFLAGS} -Wall ${LDFLAGS} -g -DSHA=${PKG_VERSION:0:12} -o edid-decode ${EDID_SOURCES} -lm
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/bin
    cp edid-decode ${INSTALL}/usr/bin
}
