TERMUX_PKG_HOMEPAGE=https://www.gnu.org/software/binutils/
TERMUX_PKG_DESCRIPTION="Collection of binary tools, the main ones being ld, the GNU linker, and as, the GNU assembler"
TERMUX_PKG_VERSION=2.27
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://mirrors.kernel.org/gnu/binutils/binutils-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=26253bf0f360ceeba1d9ab6965c57c6a48a01a8343382130d1ed47c468a3094f
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--disable-werror"
TERMUX_PKG_EXTRA_MAKE_ARGS="tooldir=$TERMUX_PREFIX"
TERMUX_PKG_RM_AFTER_INSTALL="share/man/man1/windmc.1 share/man/man1/windres.1 bin/ld.bfd"

# Avoid linking against libfl.so from flex if available:
export LEXLIB=

termux_step_post_make_install () {
	cp $TERMUX_PKG_BUILDER_DIR/ldd $TERMUX_PREFIX/bin/ldd
	cd $TERMUX_PREFIX/bin

	# Setup symlinks as these are used when building, so used by
	# system setup in e.g. python, perl and libtool:
	for b in ar ld nm objdump ranlib readelf strip; do
		ln -s -f $b $TERMUX_HOST_PLATFORM-$b
	done
}
