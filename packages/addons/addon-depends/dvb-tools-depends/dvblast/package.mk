# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="dvblast"
PKG_VERSION="4270dcae7b754b25ad27332bb1c55b6b23b85b0d" # 2021-01-07
PKG_SHA256="aa4ab211d9d31f468425f17b43a267ceabb4addf7415cc685e2c6310a2c90a08"
PKG_LICENSE="GPL"
PKG_SITE="https://www.videolan.org/projects/dvblast.html"
PKG_URL="https://code.videolan.org/videolan/dvblast/-/archive/${PKG_VERSION}/dvblast-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain bitstream libev"
PKG_LONGDESC="DVBlast is a simple and powerful MPEG-2/TS demux and streaming application"
PKG_BUILD_FLAGS="-sysroot"

pre_configure_target() {
  export LDFLAGS="${LDFLAGS} -lm"
  export PREFIX="/usr"
}
