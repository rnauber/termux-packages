TERMUX_PKG_HOMEPAGE=https://github.com/hanslub42/rlwrap
TERMUX_PKG_DESCRIPTION="Wrapper using readline to enable editing of keyboard input for commands"
TERMUX_PKG_VERSION=0.42
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://fossies.org/linux/privat/rlwrap-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="ptyttylib_cv_ptys=STREAMS ac_cv_func_grantpt=yes ac_cv_func_unlockpt=yes"
# Avoid linking to libutil:
TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" ac_cv_lib_util_openpty=no"
TERMUX_PKG_DEPENDS="readline"
