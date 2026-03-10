#
# Copyright (C) 2013-2016 OpenWrt.org
# Copyright (C) 2017 Yousong Zhou
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_VERSION:=2026.01
PKG_HASH:=b60d5865cefdbc75da8da4156c56c458e00de75a49b80c1a2e58a96e30ad0d54

PKG_MAINTAINER:=Zoltan HERPAI <wigyori@uid0.hu>

UBOOT_USE_INTREE_DTC:=1

include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk

define U-Boot/Default
  BUILD_TARGET:=sunxi
  UBOOT_IMAGE:=u-boot-sunxi-with-spl.bin
  UENV:=default
  HIDDEN:=0
endef

define U-Boot/x96q_pro_plus
  BUILD_SUBTARGET:=cortexa53
  NAME:=Amediatech x96qpro+
  BUILD_DEVICES:=amediatech_x96qproplus
  DEPENDS:=+PACKAGE_u-boot-amediatech_x96qproplus:trusted-firmware-a-sunxi-a523
  UENV:=a523
  ATF:=a523
endef

define U-Boot/radxa-cubie-a5e
  BUILD_SUBTARGET:=cortexa53
  NAME:=Radxa Cubie a5e
  BUILD_DEVICES:=radxa_radxa-a5e
  DEPENDS:=+PACKAGE_u-boot-radxa_radxa-a5e:trusted-firmware-a-sunxi-a523
  UENV:=a523
  ATF:=a523
endef

define U-Boot/walnutpi_2b
  BUILD_SUBTARGET:=cortexa53
  NAME:=Walnut Pi 2b
  BUILD_DEVICES:=walnut_walnutpi-2b
  DEPENDS:=+PACKAGE_u-boot-walnut_walnutpi-2b:trusted-firmware-a-sunxi-a523
  UENV:=a523
  ATF:=a523
endef

define U-Boot/orangepi_4a
  BUILD_SUBTARGET:=cortexa53
  NAME:=OrangePi 4a
  BUILD_DEVICES:=xunlong_orangepi-4a
  DEPENDS:=+PACKAGE_u-boot-orangepi_4a:trusted-firmware-a-sunxi-a523
  UENV:=a523
  ATF:=a523
endef

define U-Boot/avaota-a1
  BUILD_SUBTARGET:=cortexa53
  NAME:=Yuzukihd
  BUILD_DEVICES:=yuzukihd_avaota-a1
  DEPENDS:=+PACKAGE_u-boot-yuzukihd_avaota-a1:trusted-firmware-a-sunxi-a523
  UENV:=a523
  ATF:=a523
endef

UBOOT_TARGETS := \
	walnutpi_2b \
	orangepi_4a \
	avaota-a1 \
	radxa-cubie-a5e \
	x96q_pro_plus

UBOOT_CONFIGURE_VARS += USE_PRIVATE_LIBGCC=yes

UBOOT_CUSTOMIZE_CONFIG := \
	--disable TOOLS_KWBIMAGE \
	--disable TOOLS_LIBCRYPTO \
	--disable TOOLS_MKEFICAPSULE

UBOOT_MAKE_FLAGS += \
	BL31=$(STAGING_DIR_IMAGE)/bl31_sunxi-$(ATF).bin SCP=/dev/null

define Build/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)
	$(CP) $(PKG_BUILD_DIR)/$(UBOOT_IMAGE) $(STAGING_DIR_IMAGE)/$(BUILD_DEVICES)-u-boot-with-spl.bin
	mkimage -C none -A arm -T script -d uEnv-$(UENV).txt \
		$(STAGING_DIR_IMAGE)/$(BUILD_DEVICES)-boot.scr
endef

define Package/u-boot/install/default
endef

$(eval $(call BuildPackage/U-Boot))
