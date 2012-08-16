# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

# inherit from the proprietary version
-include device/huawei/u8510/BoardConfigVendor.mk

# ARMv6-compatible processor rev 5 (v6l)
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
ARCH_ARM_HAVE_VFP := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := u8510
TARGET_OTA_ASSERT_DEVICE := u8510,U8510

# ttyDCC0
#BOARD_KERNEL_CMDLINE := console=tty0 androidboot.hardware=huawei
BOARD_KERNEL_CMDLINE := console=tty0 androidboot.hardware=huawei mem.size=256M
BOARD_KERNEL_BASE := 0x10200000
BOARD_PAGE_SIZE := 0x00000800

# Browser
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
TARGET_WEBKIT_USE_MORE_MEMORY := true

# Graphics
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_RGBX_8888 := true
# OpenGL drivers config file path
BOARD_EGL_CFG := device/huawei/u8510/prebuild/egl.cfg

#QCom
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8510
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

TARGET_PROVIDES_LIBAUDIO := true

#FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm4329

# acitvate the go back entry in recovery menu
BOARD_HAS_NO_SELECT_BUTTON := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Connectivity - Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/wifi/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/wifi/firmware.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/wifi/firmware_apsta.bin"
WIFI_DRIVER_MODULE_NAME     :=  "dhd"
WIFI_DRIVER_MODULE_ARG      :=  "firmware_path=/system/wifi/firmware.bin nvram_path=/system/wifi/nvram.txt"

# SDCard
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00510000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0ba00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a0a0000
BOARD_FLASH_BLOCK_SIZE := 131072

#TARGET_PREBUILT_KERNEL := device/huawei/u8510/kernel/kernel
#TARGET_PREBUILT_KERNEL := device/huawei/u8510/prebuild/kernel
#TARGET_PREBUILT_KERNEL := kernel/huawei/u8510/arch/arm/boot/zImage
TARGET_KERNEL_SOURCE := kernel/huawei/u8510
TARGET_KERNEL_CONFIG := hw_u8510_defconfig

BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/huawei/u8510/recovery/recovery_keys.c

# recovery
#TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8510/recovery/prebuild/recovery_kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8510/kernel/kernel

