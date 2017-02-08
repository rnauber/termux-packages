TERMUX_PKG_HOMEPAGE=https://www.gnu.org/software/bc/
TERMUX_PKG_DESCRIPTION="Arbitrary precision numeric processing language"
TERMUX_PKG_VERSION=1.06.95
TERMUX_PKG_REVISION=3
TERMUX_PKG_SRCURL=https://alpha.gnu.org/gnu/bc/bc-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=7ee4abbcfac03d8a6e1a8a3440558a3d239d6b858585063e745c760957725ecc
TERMUX_PKG_DEPENDS="readline,flex"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--with-readline
--mandir=$TERMUX_PREFIX/share/man
--infodir=$TERMUX_PREFIX/share/info
"
