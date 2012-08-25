## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mid08

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/manta/mid08/device_mid08.mk)
# Inherit some common CM9 stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

TARGET_BOOTANIMATION_NAME := vertical-480x800

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mid08
PRODUCT_NAME := cm_mid08
PRODUCT_BRAND := Manta
PRODUCT_MODEL := MID08
PRODUCT_MANUFACTURER := Manta

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=${PRODUCT_MODEL}_${PRODUCT_SFX} \
    TARGET_DEVICE=mid08 \
    BUILD_FINGERPRINT=Manta_Multimedia/nuclear_p76v/nuclear-p76v:4.0.3/IML74K/20120602:eng/test-keys \
    PRIVATE_BUILD_DESC="nuclear_p76v-eng 4.1.1 IML74K 20120602 test-keys" \
    BUILD_NUMBER=${DATE} \
    BUILD_VERSION_TAGS=release-keys \
    TARGET_BUILD_TYPE=eng