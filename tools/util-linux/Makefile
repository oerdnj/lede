#
# Copyright (C) 2007-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=util-linux
PKG_VERSION:=2.28
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=@KERNEL/linux/utils/$(PKG_NAME)/v2.28
PKG_HASH:=395847e2a18a2c317170f238892751e73a57104565344f8644090c8b091014bb


HOST_BUILD_PARALLEL:=1

HOST_FIXUP:=autoreconf

include $(INCLUDE_DIR)/host-build.mk

HOST_CONFIGURE_ARGS += \
	--disable-rpath \
	--enable-new-mount	\
	--disable-tls		\
	--disable-sulogin	\
	--without-python	\
	--without-udev		\
	--without-ncurses	\
	--disable-more		\
	--disable-makeinstall-chown

HOST_TARGET_CFLAGS += $(FPIC) -std=gnu99

define Host/Install
	$(MAKE) -C $(HOST_BUILD_DIR)  install 
endef

$(eval $(call HostBuild))
