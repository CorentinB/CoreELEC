# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="evtest"
PKG_VERSION="1.35"
PKG_SHA256="4218571f3cc21c8004e82b67bb35d77d72a845f4bf927b17de3225dd7e863822"
PKG_LICENSE="GPL"
PKG_SITE="http://cgit.freedesktop.org/evtest/"
PKG_URL="https://repo.or.cz/evtest.git/snapshot/evtest-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain libxml2"
PKG_LONGDESC="A simple tool for input event debugging."
PKG_TOOLCHAIN="autotools"
PKG_BUILD_FLAGS="-sysroot"
