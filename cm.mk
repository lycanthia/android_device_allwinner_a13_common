## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mid08

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/manta/mid08/device_mid08.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mid08
PRODUCT_NAME := cm_mid08
PRODUCT_BRAND := manta
PRODUCT_MODEL := mid08
PRODUCT_MANUFACTURER := manta
