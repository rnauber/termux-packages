TERMUX_PKG_HOMEPAGE=https://weechat.org/
TERMUX_PKG_DESCRIPTION="Fast, light and extensible IRC chat client"
TERMUX_PKG_VERSION=1.7
TERMUX_PKG_SRCURL=https://www.weechat.org/files/src/weechat-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=c78a0063eee2f4cf3e67a3ff3936cfba0ed0012b1b7e5ec381c2d981f2cb64d0
TERMUX_PKG_DEPENDS="ncurses, libgcrypt, libcurl, libgnutls, libandroid-support"
# weechat-curses is a symlink to weechat, so remove it:
TERMUX_PKG_RM_AFTER_INSTALL="bin/weechat-curses share/icons"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS=" -DCA_FILE=$TERMUX_PREFIX/etc/tls/cert.pem -DENABLE_LUA=ON -DENABLE_MAN=ON"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" -DENABLE_PYTHON3=ON -DENABLE_PERL=ON -DENABLE_TCL=OFF"

