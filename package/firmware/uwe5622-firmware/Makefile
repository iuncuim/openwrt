# SPDX-License-Identifier: GPL-2.0-or-later

include $(TOPDIR)/rules.mk

PKG_NAME:=uwe5622-allwinner
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Build/Compile
	true
endef

define Package/uwe5622-firmware
  SECTION:=firmware
  CATEGORY:=Firmware
  TITLE:=UWE5622 SDIO firmware
endef

define Package/uwe5622-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware

	$(INSTALL_DATA) \
		./files/bt_configure_pskey.ini \
		$(1)/lib/firmware/
	$(INSTALL_DATA) \
		./files/bt_configure_rf.ini \
		$(1)/lib/firmware/

	$(INSTALL_DIR) $(1)/lib/firmware/uwe5622
	$(INSTALL_DATA) \
		./files/wcnmodem.bin \
		$(1)/lib/firmware/uwe5622/
	$(INSTALL_DATA) \
		./files/wcnmodem-38222.bin \
		$(1)/lib/firmware/uwe5622/
	$(INSTALL_DATA) \
		./files/wifi_2355b001_1ant.ini \
		$(1)/lib/firmware/uwe5622/
endef

$(eval $(call BuildPackage,uwe5622-firmware))
