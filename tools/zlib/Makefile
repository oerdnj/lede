# 
# Copyright (C) 2006-2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=zlib
PKG_VERSION:=1.2.11
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=http://www.zlib.net @SF/libpng
PKG_HASH:=4ff941449631ace0d4d203e3483be9dbc9da454084111f97ea0a2114e19bf066

include $(INCLUDE_DIR)/host-build.mk

define Host/Configure
        (cd $(HOST_BUILD_DIR); \
                ./configure \
                        --prefix=$(STAGING_DIR_HOST) \
                        --shared \
                        --uname=Linux \
        );
endef

define Host/Compile
	+$(MAKE) $(PKG_JOBS) -C $(HOST_BUILD_DIR) \
		libz.a libz.so.$(PKG_VERSION)
	mkdir -p $(HOST_INSTALL_DIR)
	$(MAKE) -C $(HOST_BUILD_DIR) \
		DESTDIR="$(HOST_INSTALL_DIR)" \
		install
endef

$(eval $(call HostBuild))
