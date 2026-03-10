# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2013-2016 OpenWrt.org
# Copyright (C) 2016 Yousong Zhou

KERNEL_LOADADDR:=0x40080000

define Device/sun50i
  $(call Device/FitImageLzma)
  SUNXI_DTS_DIR := allwinner/
  KERNEL_NAME := Image
endef

define Device/sun50i-a64
  SOC := sun50i-a64
  $(Device/sun50i)
endef

define Device/sun50i-h5
  SOC := sun50i-h5
  $(Device/sun50i)
endef

define Device/sun50i-h6
  SOC := sun50i-h6
  $(Device/sun50i)
endef

define Device/sun50i-h616
  SOC := sun50i-h616
  $(Device/sun50i)
endef

define Device/sun50i-h618
  SOC := sun50i-h618
  $(Device/sun50i)
endef

define Device/sun55i
  $(call Device/FitImageLzma)
  SUNXI_DTS_DIR := allwinner/
  KERNEL_NAME := Image
endef

define Device/sun55i-a527
  SOC := sun55i-a527
  $(Device/sun55i)
endef

define Device/sun55i-h728
  SOC := sun55i-h728
  $(Device/sun55i)
endef

define Device/sun55i-t527
  SOC := sun55i-t527
  $(Device/sun55i)
endef

define Device/amediatech_x96qproplus
  DEVICE_VENDOR := Amediatech
  DEVICE_MODEL := X96Q Pro+
  $(Device/sun55i-h728)
  SUNXI_DTS := $$(SUNXI_DTS_DIR)$$(SOC)-x96qpro+
endef
TARGET_DEVICES += amediatech_x96qproplus

define Device/friendlyarm_nanopi-neo-plus2
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi NEO Plus2
  SUPPORTED_DEVICES += nanopi-neo-plus2
  $(Device/sun50i-h5)
endef
TARGET_DEVICES += friendlyarm_nanopi-neo-plus2

define Device/friendlyarm_nanopi-neo2
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi NEO2
  SUPPORTED_DEVICES += nanopi-neo2
  $(Device/sun50i-h5)
endef
TARGET_DEVICES += friendlyarm_nanopi-neo2

define Device/friendlyarm_nanopi-r1s-h5
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := Nanopi R1S H5
  DEVICE_PACKAGES := kmod-gpio-button-hotplug kmod-usb-net-rtl8152
  SUPPORTED_DEVICES += nanopi-r1s-h5
  $(Device/sun50i-h5)
endef
TARGET_DEVICES += friendlyarm_nanopi-r1s-h5

define Device/libretech_all-h3-cc-h5
  DEVICE_VENDOR := Libre Computer
  DEVICE_MODEL := ALL-H3-CC
  DEVICE_VARIANT := H5
  $(Device/sun50i-h5)
  SUNXI_DTS := $$(SUNXI_DTS_DIR)$$(SOC)-libretech-all-h3-cc
endef
TARGET_DEVICES += libretech_all-h3-cc-h5

define Device/olimex_a64-olinuxino
  DEVICE_VENDOR := Olimex
  DEVICE_MODEL := A64-Olinuxino
  DEVICE_PACKAGES := kmod-rtl8723bs rtl8723bu-firmware
  $(Device/sun50i-a64)
  SUNXI_DTS := $$(SUNXI_DTS_DIR)$$(SOC)-olinuxino
endef
TARGET_DEVICES += olimex_a64-olinuxino

define Device/olimex_a64-olinuxino-emmc
  DEVICE_VENDOR := Olimex
  DEVICE_MODEL := A64-Olinuxino
  DEVICE_VARIANT := eMMC
  DEVICE_PACKAGES := kmod-rtl8723bs rtl8723bu-firmware
  $(Device/sun50i-a64)
  SUNXI_DTS := $$(SUNXI_DTS_DIR)$$(SOC)-olinuxino-emmc
endef
TARGET_DEVICES += olimex_a64-olinuxino-emmc

define Device/pine64_pine64-plus
  DEVICE_VENDOR := Pine64
  DEVICE_MODEL := Pine64+
  DEVICE_PACKAGES := kmod-rtl8723bs rtl8723bu-firmware
  $(Device/sun50i-a64)
endef
TARGET_DEVICES += pine64_pine64-plus

define Device/pine64_sopine-baseboard
  DEVICE_VENDOR := Pine64
  DEVICE_MODEL := SoPine
  DEVICE_PACKAGES := kmod-rtl8723bs rtl8723bu-firmware
  $(Device/sun50i-a64)
endef
TARGET_DEVICES += pine64_sopine-baseboard

define Device/radxa_radxa-a5e
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := cubie a5e
  $(Device/sun55i-a527)
endef
TARGET_DEVICES += radxa_radxa-a5e

define Device/walnut_walnutpi-2b
  DEVICE_VENDOR := Walnut
  DEVICE_MODEL := Pi 2B
  $(Device/sun55i-t527)
endef
TARGET_DEVICES += walnut_walnutpi-2b

define Device/xunlong_orangepi-4a
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi 4a
  $(Device/sun50i-t527)
endef
TARGET_DEVICES += xunlong_orangepi-4a

define Device/xunlong_orangepi-one-plus
  $(Device/sun50i-h6)
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi One Plus
endef
TARGET_DEVICES += xunlong_orangepi-one-plus

define Device/xunlong_orangepi-pc2
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi PC 2
  $(Device/sun50i-h5)
endef
TARGET_DEVICES += xunlong_orangepi-pc2

define Device/xunlong_orangepi-zero2
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi Zero 2
  $(Device/sun50i-h616)
endef
TARGET_DEVICES += xunlong_orangepi-zero2

define Device/xunlong_orangepi-zero2w
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi Zero 2W
  $(Device/sun50i-h618)
endef
TARGET_DEVICES += xunlong_orangepi-zero2w

define Device/xunlong_orangepi-zero3
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi Zero 3
  $(Device/sun50i-h618)
endef
TARGET_DEVICES += xunlong_orangepi-zero3

define Device/xunlong_orangepi-zero-plus
  DEVICE_VENDOR := Xunlong
  DEVICE_MODEL := Orange Pi Zero Plus
  $(Device/sun50i-h5)
endef
TARGET_DEVICES += xunlong_orangepi-zero-plus

define Device/yuzukihd_avaota-a1
  DEVICE_VENDOR := yuzukihd
  DEVICE_MODEL := avaota-a1
  $(Device/sun55i-t527)
endef
TARGET_DEVICES += yuzukihd_avaota-a1
