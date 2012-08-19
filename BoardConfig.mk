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
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
ARCH_ARM_HAVE_VFP := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := u8510
TARGET_OTA_ASSERT_DEVICE := u8510,U8510,x3

TARGET_SPECIFIC_HEADER_PATH := device/huawei/u8510/include

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#Fm radio
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4329
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := u8510

# Browser
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
TARGET_WEBKIT_USE_MORE_MEMORY := true

#RIL
BOARD_PROVIDES_LIBRIL := true

#Mass storage
BOARD_DATA_DEVICE := /dev/block/mtdblock6  
BOARD_DATA_FILESYSTEM := auto  	
BOARD_DATA_FILESYSTEM_OPTIONS := rw	
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock5
BOARD_SYSTEM_FILESYSTEM := auto
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mtdblock4
BOARD_CACHE_FILESYSTEM := auto
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
#BOARD_HAS_SDCARD_INTERNAL := true
#BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:1
#BOARD_SDEXT_DEVICE := /dev/block/vold/179:2
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 2

# ICS Stuff 
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Audio
BOARD_PROVIDES_LIBAUDIO := false

# Target libs check
TARGET_PROVIDES_LIBRIL := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
#TARGET_DO_NOT_SETS_CAN_DRAW := true
#TARGET_SF_NEEDS_REAL_DIMENSIONS := true
#BOARD_NO_RGBX_8888 := true
#BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_PROVIDES_LIBLIGHTS := false
#BOARD_HAS_NO_SELECT_BUTTON := 


# QCOM
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LEGACY := true
BOARD_USES_QCOM_PMEM := true
BOARD_USES_QCOM_HARDWARE := true
TARGET_GRALLOC_USES_ASHMEM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27

# CPU
TARGET_FORCE_CPU_UPLOAD := true
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD

# Graphics
BOARD_EGL_CFG := device/huawei/u8510/prebuild/lib/egl/egl.cfg
BOARD_USE_SKIA_LCDTEXT := true
TARGET_FORCE_CPU_UPLOAD := true
USE_OPENGL_RENDERER := true
TARGET_USES_GENLOCK := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
#BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
#BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALOC_BUFFERS 
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12 
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE
#COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
# msm7x27: no support for overlay, bypass, or c2d
TARGET_USES_OVERLAY := false
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := false


# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_BAND                        := 802_11_ABG
WIFI_DRIVER_MODULE_PATH          := "/system/wifi/dhd.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/wifi/firmware.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/wifi/firmware_apsta.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/wifi/firmware.bin nvram_path=/system/wifi/nvram.txt"
WIFI_DRIVER_MODULE_NAME          := "dhd"


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

#
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_KERNEL_BASE := 0x10200000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/huawei/u8510/recovery/recovery_keys.c

# recovery
#TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8510/recovery/prebuild/recovery_kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/u8510/kernel/kernel

