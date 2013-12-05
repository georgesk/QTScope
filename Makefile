#############################################################################
# Makefile for building: qtscope
# Generated by qmake (2.01a) (Qt 4.8.1) on: Thu Dec 5 16:10:29 2013
# Project:  qtscope.pro
# Template: subdirs
# Command: /usr/bin/qmake -o Makefile qtscope.pro
#############################################################################

first: make_default
MAKEFILE      = Makefile
QMAKE         = /usr/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
SUBTARGETS    =  \
		sub-src \
		sub-plugins

src//$(MAKEFILE): 
	@$(CHK_DIR_EXISTS) src/ || $(MKDIR) src/ 
	cd src/ && $(QMAKE) /home/steffen/Downloads/qtscope-0.66-2/src/src.pro -o $(MAKEFILE)
sub-src-qmake_all:  FORCE
	@$(CHK_DIR_EXISTS) src/ || $(MKDIR) src/ 
	cd src/ && $(QMAKE) /home/steffen/Downloads/qtscope-0.66-2/src/src.pro -o $(MAKEFILE)
sub-src: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE)
sub-src-make_default: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) 
sub-src-make_first: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) first
sub-src-all: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) all
sub-src-clean: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) clean
sub-src-distclean: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) distclean
sub-src-install_subtargets: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) install
sub-src-uninstall_subtargets: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) uninstall
plugins//$(MAKEFILE): 
	@$(CHK_DIR_EXISTS) plugins/ || $(MKDIR) plugins/ 
	cd plugins/ && $(QMAKE) /home/steffen/Downloads/qtscope-0.66-2/plugins/plugins.pro -o $(MAKEFILE)
sub-plugins-qmake_all:  FORCE
	@$(CHK_DIR_EXISTS) plugins/ || $(MKDIR) plugins/ 
	cd plugins/ && $(QMAKE) /home/steffen/Downloads/qtscope-0.66-2/plugins/plugins.pro -o $(MAKEFILE)
sub-plugins: plugins//$(MAKEFILE) FORCE
	cd plugins/ && $(MAKE) -f $(MAKEFILE)
sub-plugins-make_default: plugins//$(MAKEFILE) FORCE
	cd plugins/ && $(MAKE) -f $(MAKEFILE) 
sub-plugins-make_first: plugins//$(MAKEFILE) FORCE
	cd plugins/ && $(MAKE) -f $(MAKEFILE) first
sub-plugins-all: plugins//$(MAKEFILE) FORCE
	cd plugins/ && $(MAKE) -f $(MAKEFILE) all
sub-plugins-clean: plugins//$(MAKEFILE) FORCE
	cd plugins/ && $(MAKE) -f $(MAKEFILE) clean
sub-plugins-distclean: plugins//$(MAKEFILE) FORCE
	cd plugins/ && $(MAKE) -f $(MAKEFILE) distclean
sub-plugins-install_subtargets: plugins//$(MAKEFILE) FORCE
	cd plugins/ && $(MAKE) -f $(MAKEFILE) install
sub-plugins-uninstall_subtargets: plugins//$(MAKEFILE) FORCE
	cd plugins/ && $(MAKE) -f $(MAKEFILE) uninstall

Makefile: qtscope.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf
	$(QMAKE) -o Makefile qtscope.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
qmake: qmake_all FORCE
	@$(QMAKE) -o Makefile qtscope.pro

qmake_all: sub-src-qmake_all sub-plugins-qmake_all FORCE

make_default: sub-src-make_default sub-plugins-make_default FORCE
make_first: sub-src-make_first sub-plugins-make_first FORCE
all: sub-src-all sub-plugins-all FORCE
clean: sub-src-clean sub-plugins-clean FORCE
distclean: sub-src-distclean sub-plugins-distclean FORCE
	-$(DEL_FILE) Makefile
install_subtargets: sub-src-install_subtargets sub-plugins-install_subtargets FORCE
uninstall_subtargets: sub-src-uninstall_subtargets sub-plugins-uninstall_subtargets FORCE

sub-src-check: src/$(MAKEFILE)
	cd src/ && $(MAKE) -f $(MAKEFILE) check
sub-plugins-check: plugins/$(MAKEFILE)
	cd plugins/ && $(MAKE) -f $(MAKEFILE) check
check: sub-src-check sub-plugins-check

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all
install: install_subtargets  FORCE

uninstall:  uninstall_subtargets FORCE

FORCE:

