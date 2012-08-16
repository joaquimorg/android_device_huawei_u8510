#
# Copyright (C) 2011 The Android Open-Source Project
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
#

DEVICE:=u8510
MANUFACTURER:=huawei

# Should be after the full_base include, which loads languages_full
PRODUCT_AAPT_CONFIG := mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_LOCALES := en_US pt_PT

DEVICE_PACKAGE_OVERLAYS += device/$(MANUFACTURER)/$(DEVICE)/overlay

DISABLE_DEXPREOPT := false 

# Keylayouts
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/synaptics.kcm.bin \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# fstab
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/vold.fstab:system/etc/vold.fstab

# bluetooth
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# apns-conf.xml
#PRODUCT_COPY_FILES += \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/apns-conf_pt.xml:system/etc/apns-conf.xml

PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/sysctl.conf:system/etc/sysctl.conf

PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/vold.conf:system/etc/vold.conf
	
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Init
#device/$(MANUFACTURER)/$(DEVICE)/ramdisk/init.u8510.usb.rc:root/init.u8510.usb.rc \
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/ramdisk/init.huawei.rc:root/init.huawei.rc \
    device/$(MANUFACTURER)/$(DEVICE)/ramdisk/init.rc:root/init.rc \
	device/$(MANUFACTURER)/$(DEVICE)/ramdisk/default.prop:root/default.prop \
    device/$(MANUFACTURER)/$(DEVICE)/ramdisk/ueventd.rc:root/ueventd.rc

# Audio
# write 0 in AutoVolumeControl.txt to disable AutoVolumeControl.txt
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt 

#Media profile
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/media_profiles.xml:system/etc/media_profiles.xml

# Wifi stuff
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/dhd.ko:system/wifi/dhd.ko \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/wifi/firmware.bin:system/wifi/firmware.bin \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/wifi/firmware_apsta.bin:system/wifi/firmware_apsta.bin \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/wifi/nvram.txt:system/wifi/nvram.txt \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/wifi/bcm_loadecho.sh:system/wifi/bcm_loadecho.sh \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/wifi/bcm_loadipf.sh:system/wifi/bcm_loadipf.sh \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/wifi/connectap.sh:system/wifi/connectap.sh \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/wifi/iwconfig:system/wifi/iwconfig \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/wifi/iwlist:system/wifi/iwlist \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/wifi/iwpriv:system/wifi/iwpriv \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/wifi/nvram.txt:system/wifi/nvram.txt \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/wifi/udp_server:system/wifi/udp_server

# Install the features available on this device.
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml	

	
# All the blobs necessary for u8510 devices
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so


PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libgsl.so:system/lib/libgsl.so \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

#PRODUCT_COPY_FILES += \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/qmuxd:system/bin/qmuxd \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/akmd8962:system/bin/akmd8962 \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/akmd8975:system/bin/akmd8975 \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/compassd:system/bin/compassd \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libdiag.so:system/lib/libdiag.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libcm.so:system/lib/libcm.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/liboncrpc.so:system/lib/liboncrpc.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libqmi.so:system/lib/libqmi.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libdsm.so:system/lib/libdsm.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libqueue.so:system/lib/libqueue.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libdll.so:system/lib/libdll.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libwms.so:system/lib/libwms.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libnv.so:system/lib/libnv.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libwmsts.so:system/lib/libwmsts.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libpbmlib.so:system/lib/libpbmlib.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libdss.so:system/lib/libdss.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libauth.so:system/lib/libauth.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/hw/gps.default.so:system/lib/hw/gps.default.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libaudioeq.so:system/lib/libaudioeq.so

# Camera
#PRODUCT_COPY_FILES += \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libcamera.so:system/lib/libcamera.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/liboemcamera.so:system/lib/liboemcamera.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/liboemcamera.so:obj/lib/liboemcamera.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libcameraservice.so:system/lib/libcameraservice.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libcamera_client.so:system/lib/libcamera_client.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libmmipl.so:system/lib/libmmipl.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so

# OMX
#PRODUCT_COPY_FILES += \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxAacDec.so:/system/lib/libOmxAacDec.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxWmvDec.so:/system/lib/libOmxWmvDec.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxAdpcmDec.so:/system/lib/libOmxAdpcmDec.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxH264Dec.so:/system/lib/libOmxH264Dec.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxAmrDec.so:/system/lib/libOmxAmrDec.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxMpeg4Dec.so:/system/lib/libOmxMpeg4Dec.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxAmrRtpDec.so:/system/lib/libOmxAmrRtpDec.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libOmxVidEnc.so:/system/lib/libOmxVidEnc.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so

# HW
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
	device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
	device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/hw/copybit.msm7k.so:system/lib/hw/copybit.msm7k.so

#	
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so
#    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/hw/lights.msm7k.so:system/lib/hw/lights.msm7k.so


# Vendor
#     device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/vold:system/bin/vold \
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/oem_rpc_svc:system/bin/oem_rpc_svc \
	device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/load_oemlogo:system/bin/load_oemlogo \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/modempre:system/bin/modempre \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/liboem_rapi.so:/system/lib/liboem_rapi.so \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libcommondefs.so:/system/lib/libcommondefs.so \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libloc_api-rpc-qc.so:/system/lib/libloc_api-rpc-qc.so \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libmmprocess.so:system/lib/libmmprocess.so\
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libhwrpc.so:system/lib/libhwrpc.so \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libhwrpc.so:obj/lib/libhwrpc.so

# wifi
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/wpa_supplicant:system/bin/wpa_supplicant \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/wl:system/bin/wl

# bluetooth
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/port-bridge:system/bin/port-bridge \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/etc/bluetooth/BCM4329.hcd:system/etc/bluetooth/BCM4329.hcd

# ril
PRODUCT_COPY_FILES += \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libreference-ril.so:/system/lib/libreference-ril.so \
    device/$(MANUFACTURER)/$(DEVICE)/prebuild/lib/libril.so:/system/lib/libril.so
	
	
#    LiveWallpapers \
#    MagicSmokeWallpapers \
#	VisualizationWallpapers \

PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni \
    Gallery3d \
    SpareParts \
    Term \
    libcamera \
    libOmxCore \
    libOmxVidEnc \
	libmm-omxcore \
    dexpreopt \
	FM \
    gps.u8510 \
	lights.u8510
	
#	gralloc.u8510 \
#	copybit.u8510 \
#  	
	
	
#PRODUCT_PROPERTY_OVERRIDES := \
#    wifi.interface=eth0 \
#    wifi.supplicant_scan_interval=120 \
#    ro.sf.lcd_density=160 \
#    ro.com.android.dataroaming=false


PRODUCT_PROPERTY_OVERRIDES := \
    ro.config.notification_sound=OnTheHunt.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg \
    ro.setupwizard.mode=OPTIONAL \
    net.bt.name=Android-U8510 \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    ro.config.hw_addsettingsdbex=1 \
    ro.config.fm_type=libbcmfm_if \
    ro.config.KeyPassToUser=true \
    ro.config.hwft_PinPukUnlockscr=true \
    keyguard.no_require_sim=true \
    ro.telephony.call_ring.multiple=false \
    ro.config.hw_power_saving=true \
    ro.config.hw_selectedLanguages=false \
    ro.config.smsCoding_National=3 \
    ro.config.hw_RemindWifiToPdp=false \
    ro.config.hw_proximitySensor=true \
    ro.config.xtra_support=true \
    ro.config.hw_quickpoweron=true \
    persist.sys.quickpoweron=normal \
    persist.sys.animationstart=false \
    ro.config.hw_poanimation=5000 \
    ro.config.hw_proximity=true \
    ro.config.hw_front_camera=true \
    ro.config.helix_enable=false \
    ro.config.do_sdcard_upgrade=true \
    ro.config.srs.equalizer=true \
    ro.config.srs.default.type=1 \
    ro.config.PopupTwink=true \
    ro.config.SetStatusbarText=true \
    ro.config.hw_isCustomize=true \
    ro.config.hw_customizeType=01 \
    ro.config.hw_virtualsdcard=true \
    ro.config.ringtone=Noises2.ogg \
    ro.config.hw_ascend_ringtone=false \
    ro.opengles.version=131072 \
    ro.config.ipcall=true \
    ro.config.hw_reject_message = true \
    ro.config.hw_toolbox=true \
    ro.config.hw_eapsim=true \
    hw_internal_sd=true \
    ro.poweroff_alarm=true \
    ro.config.hw_fast_dormancy=1 \
    ro.config.hw_camera_resize=true \
    ro.com.google.clientidbase=android-huawei \
    ro.com.google.clientidbase.yt=android-huawei \
    ro.com.google.clientidbase.am=android-huawei \
    ro.com.google.clientidbase.gmm=android-huawei \
    ro.com.google.clientidbase.ms=android-huawei \
    ro.config.hw_menu_unlockscreen=false \
    hw.sms.dellong.interval.time=172800000 \
    ro.config.hw_GSensorOptimize=true \
    ro.config.front_camera_zoom=true \
    ro.hw_oom_app=com.android.mms \
    ro.config.hw_uaprof=http://wap1.huawei.com/uaprof/HuaweiU8510WCDMA-NORMAL.xml \
    ro.config.hw_use_browser_ua=true \
    ro.config.hw_browser_ua3g=http://wap1.huawei.com/uaprof/HuaweiU8510WCDMA-NORMAL.xml \
    ro.config.hw_browser_ua2g=http://wap1.huawei.com/uaprof/HuaweiU8510GPRS-NORMAL.xml \
    ro.config.hw_set_default_home=true \
    ro.config.AM_PM_STYLE=1 \
	persist.sys.use_dithering=0 \
	persist.sys.use_16bpp_alpha=1 \
	ro.ril.disable.power.collapse=0 \
	pm.sleep_mode=1 \
	windowsmgr.max_events_per_sec=240 \
	debug.sf.hw=1 \
	debug.performance.tuning=1 \
	video.accelerate.hw=1 \
	debug.composition.type=gpu \
	persist.sys.composition.type=gpu \
	persist.sys.ui.hw=true \
	ro.HOME_APP_ADJ=1 \
	ro.config.hw_opta=02 \
	ro.config.hw_optb=620

# this is essential for USB tethering
PRODUCT_PROPERTY_OVERRIDES += \
    ro.tethering.kb_disconnect=1

#    persist.sys.powerup_reason=
#    persist.sys.user_set_airplane=

# Perfomance tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
	ro.kernel.android.checkjni=0


