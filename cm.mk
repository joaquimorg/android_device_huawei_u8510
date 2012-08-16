# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := U8510

# Inherit some common CM stuff. 
# Changed to not get the proprietary stuff
$(call inherit-product, device/huawei/u8510/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/u8510/full_u8510.mk)

#Animation
PRODUCT_COPY_FILES += \
        device/huawei/u8510/bootanimation.zip:system/media/bootanimation.zip


## Device identifier. This must come after all inclusions
# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := u8510
PRODUCT_NAME := cm_u8510
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Huawei Ideos X3
PRODUCT_MANUFACTURER := Huawei
