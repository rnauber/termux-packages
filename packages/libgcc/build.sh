TERMUX_PKG_HOMEPAGE=https://gcc.gnu.org/onlinedocs/gccint/Libgcc.html
TERMUX_PKG_DESCRIPTION="GCC low-level runtime library"
TERMUX_PKG_VERSION=4.9
TERMUX_PKG_REVISION=1
TERMUX_PKG_KEEP_STATIC_LIBRARIES="true"

termux_step_extract_into_massagedir () {
	mkdir -p $TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX/lib/

	local LIBGCC_PATH=lib/gcc/$TERMUX_HOST_PLATFORM/4.9.x
	if [ $TERMUX_ARCH = "arm" ]; then
		LIBGCC_PATH+="/armv7-a"
	fi
	LIBGCC_PATH+="/libgcc.a"
	cp $TERMUX_STANDALONE_TOOLCHAIN/$LIBGCC_PATH $TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX/lib/
}
