$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/manta/mid08/mid08-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/manta/mid08/overlay

LOCAL_PATH := device/manta/mid08
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES := \
	device/manta/mid08/init.rc:root/init.rc \
	device/manta/mid08/initlogo.rle:root/initlogo.rle \
	device/manta/mid08/init.sun5i.rc:root/init.sun5i.rc \
	device/manta/mid08/init.sun5i.usb.rc:root/init.sun5i.usb.rc \
	device/manta/mid08/ueventd.sun5i.rc:root/ueventd.sun5i.rc    
	
PRODUCT_COPY_FILES := \
	device/manta/mid08/prebuilt/modules/sw-keyboard.ko:/root/lib/modules/sw-keyboard.ko \
	device/manta/mid08/prebuilt/modules/ft5x_ts.ko:/root/lib/modules/ft5x_ts.ko

	PRODUCT_CHARACTERISTICS := tablet

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version = 131072 \
	debug.egl.hw=1 \
	ro.display.switch=1 \
	ro.sf.lcd_density=160 \
	hwui.render_dirty_regions=false \
	wifi.interface = wlan0 \
	wifi.supplicant_scan_interval = 150 \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1 \
	persist.sys.usb.config=mass_storage,adb \
	dalvik.vm.verify-bytecode=false \
	dalvik.vm.dexopt-flags=v=n,o=v \
	dalvik.vm.execution-mode=int:jit \
	persist.sys.timezone=Europe/Rome \
	persist.sys.language=pl \
	persist.sys.country=PL \
	ro.com.google.locationfeatures=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.lockprof.threshold=500 \
	ro.kernel.android.checkjni=0 \
	dalvik.vm.checkjni=false \
	dalvik.vm.dexopt-data-only=1 \
	ro.vold.umsdirtyratio=20 \
	net.dns1=8.8.8.8 \
	net.dns2=8.8.4.4 \
	ro.media.enc.jpeg.quality=100 \
	debug.sf.hw=1 \
	video.accelerate.hw=1 \
	debug.performance.tuning=1 \
	ro.media.dec.jpeg.memcap=8000000 \
	ro.media.enc.hprof.vid.bps=800000 \
	persist.sys.use_dithering=0 \
	persist.sys.purgeable_assets=0 \
	windowsmgr.max_events_per_sec=240 \
	view.touch_slop=2 \
	view.minimum_fling_velocity=25 \
	updateme.disableinstalledapps=1 \
	updateme.disablescripts=1 \
	ro.additionalmounts=/storage/sdcard1 \
	ro.vold.switchablepair=/storage/sdcard0,/storage/sdcard1 \
	persist.sys.vold.switchexternal=0

DEVICE_PACKAGE_OVERLAYS := device/softwinner/907/overlay

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/base/data/etc/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Publish that we support the live wallpaper feature.
PRODUCT_PACKAGES += \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	HoloSpiralWallpaper 

PRODUCT_PACKAGES += \
	VisualizationWallpapers \
	librs_jni

# Hardware libs
PRODUCT_PACKAGES += \
	gralloc.sun4i \
	hwcomposer.exDroid \
	power.sun4i \
	lights.sun4i \
	display.sun4i \
        libcedarxbase \
        libcedarxosal \
        libcedarxsftdemux \
        libcedarv \
	libCedarA \
	libCedarX \
	libstagefright_soft_cedar_h264dec \
        libswdrm \
	audio.primary.exDroid \
	audio.a2dp.default \
	audio.usb.default \
	libaudioutils \
	chat \
	u3gmonitor \
	devlistener \
	LegacyCamera \
	libjni_legacymosaic

# CM9 apps
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# EXT4 Support
PRODUCT_PACKAGES += \
	make_ext4fs \
	e2fsck
	
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_mid08
PRODUCT_DEVICE := mid08
