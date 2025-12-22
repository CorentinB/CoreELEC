# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="edid-decode"
PKG_VERSION="9ba4e90f3c0705351d32f526653e3e765fa2cf64" # 2022-09-23
PKG_SHA256="a01efec2c97af585b3f7cc5f0cc8ed38da00a2464eac0c1690f3eafcd464747f"
PKG_LICENSE="None"
PKG_SITE="https://gitlab.freedesktop.org/emersion/edid-decode"
PKG_URL="https://gitlab.freedesktop.org/emersion/edid-decode/-/archive/${PKG_VERSION}/edid-decode-${PKG_VERSION}.tar.gz"
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
