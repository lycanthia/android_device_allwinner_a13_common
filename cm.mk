## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := a13

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Allwinner/a13/device_a13.mk)

TARGET_BOOTANIMATION_NAME := vertical-480x800

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a13
PRODUCT_NAME := cm_a13
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := A13
PRODUCT_MANUFACTURER := Allwinner
