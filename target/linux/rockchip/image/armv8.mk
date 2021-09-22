# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2020 Tobias Maedel

define Device/firefly_roc-cc
  DEVICE_VENDOR := Firefly
  DEVICE_MODEL := ROC-RK3328-CC
  SOC := rk3328
  UBOOT_DEVICE_NAME := roc-cc-rk3328
  SUPPORTED_DEVICES := firefly,roc-rk3328-cc
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r2s | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += firefly_roc-cc

define Device/friendlyarm_nanopi-neo3
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi NEO3
  SOC := rk3328
  UBOOT_DEVICE_NAME := nanopi-r2s-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r2s | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += friendlyarm_nanopi-neo3

define Device/friendlyarm_nanopi-r2s
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R2S
  SOC := rk3328
  UBOOT_DEVICE_NAME := nanopi-r2s-rk3328
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r2s | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-usb-net-rtl8152
endef
TARGET_DEVICES += friendlyarm_nanopi-r2s

define Device/friendlyarm_nanopi-r4s
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R4S
  DEVICE_VARIANT := 4GB LPDDR4
  SOC := rk3399
  UBOOT_DEVICE_NAME := nanopi-r4s-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script nanopi-r4s | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := kmod-r8169
endef
TARGET_DEVICES += friendlyarm_nanopi-r4s

define Device/pine64_rockpro64
  DEVICE_VENDOR := Pine64
  DEVICE_MODEL := RockPro64
  SOC := rk3399
  UBOOT_DEVICE_NAME := rockpro64-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
endef
TARGET_DEVICES += pine64_rockpro64

define Device/radxa_rock-pi-4
  DEVICE_VENDOR := Radxa
  DEVICE_MODEL := ROCK Pi 4
  DEVICE_DTS := rockchip/rk3399-rock-pi-4b
  SOC := rk3399
  SUPPORTED_DEVICES := radxa,rockpi4b
  UBOOT_DEVICE_NAME := rock-pi-4-rk3399
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-img | gzip | append-metadata
  DEVICE_PACKAGES := \
	brcmfmac-firmware-43456-sdio \
	brcmfmac-firmware-43456-sdio-rockpi-4 \
	kmod-brcmfmac wpad-basic-wolfssl
endef
TARGET_DEVICES += radxa_rock-pi-4
