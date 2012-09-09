# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http:/www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# /system/bin
PRODUCT_COPY_FILES += \
	device/allwinner/a13/prebuilt/bin/fsck.exfat:system/bin/fsck.exfat \
	device/allwinner/a13/prebuilt/bin/mkfs.exfat:system/bin/mkfs.exfat \
	device/allwinner/a13/prebuilt/bin/mount.exfat:system/bin/mount.exfat \
	device/allwinner/a13/prebuilt/bin/ntfs-3g:system/bin/ntfs-3g \
	device/allwinner/a13/prebuilt/bin/ntfs-3g.probe:system/bin/ntfs-3g.probe \
	device/allwinner/a13/prebuilt/bin/mkntfs:system/bin/mkntfs \
	device/allwinner/a13/prebuilt/bin/reboot-recovery.sh:system/bin/reboot-recovery.sh \
	device/allwinner/a13/prebuilt/bin/usb_modeswitch:system/bin/usb_modeswitch

# /system/etc
PRODUCT_COPY_FILES += \
	device/allwinner/a13/prebuilt/etc/ppp/ip-down:system/etc/ppp/ip-down \
	device/allwinner/a13/prebuilt/etc/ppp/ip-up:system/etc/ppp/ip-up \
	device/allwinner/a13/prebuilt/etc/ppp/call-pppd:system/etc/ppp/call-pppd \
	device/allwinner/a13/prebuilt/etc/3g_dongle.cfg:system/etc/3g_dongle.cfg \
	device/allwinner/a13/prebuilt/etc/camera.cfg:system/etc/camera.cfg \
	device/allwinner/a13/prebuilt/etc/gps.conf:system/etc/gps.conf \
	device/allwinner/a13/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
	device/allwinner/a13/prebuilt/etc/usb_modeswitch.sh:system/etc/usb_modeswitch.sh \
	device/allwinner/a13/prebuilt/etc/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/allwinner/a13/prebuilt/etc/init.d,system/etc/init.d)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/allwinner/a13/prebuilt/etc/usb_modeswitch.d,system/etc/usb_modeswitch.d)

# /system/lib
PRODUCT_COPY_FILES += \device/allwinner/a13/prebuilt/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
	device/allwinner/a13/prebuilt/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
	device/allwinner/a13/prebuilt/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
	device/allwinner/a13/prebuilt/lib/liballwinner-ril.so:system/lib/liballwinner-ril.so \
	device/allwinner/a13/prebuilt/lib/hw/camera.a13.so:system/lib/hw/camera.a13.so \
	device/allwinner/a13/prebuilt/lib/hw/sensors.a13.so:system/lib/hw/sensors.a13.so \
	device/allwinner/a13/prebuilt/lib/libMali.so:system/lib/libMali.so \
	device/allwinner/a13/prebuilt/lib/libUMP.so:system/lib/libUMP.so \
	device/allwinner/a13/prebuilt/lib/libMali.so:obj/lib/libMali.so \
	device/allwinner/a13/prebuilt/lib/libUMP.so:obj/lib/libUMP.so \
	device/allwinner/a13/prebuilt/lib/libicui18n_ics.so:system/lib/libicui18n_ics.so \
	device/allwinner/a13/prebuilt/lib/libicui18n_ics.so:obj/lib/libicui18n_ics.so \
	device/allwinner/a13/prebuilt/lib/libicuuc_ics.so:system/lib/libicuuc_ics.so \
	device/allwinner/a13/prebuilt/lib/libicuuc_ics.so:obj/lib/libicuuc_ics.so
	
# /system/lib/modules
PRODUCT_COPY_FILES += \device/allwinner/a13/prebuilt/lib/modules/8192cu.ko:system/lib/modules/8192cu.ko \
			device/allwinner/a13/prebuilt/lib/modules/Module.symvers:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/RT2870STA.dat:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/RT2870STACard.dat:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/asix.ko:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/bcm4330.bin:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/bcm4330.hc:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/bcm4330.ko:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/bcm4330_nvram.txt:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/bma250.ko:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/cedarx.ko:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/cypress_cy7c63.ko:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/example.ko:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/ft5x_ts.ko:system/lib/modules/ \
			device/allwinner/a13/prebuilt/lib/modules/gc0307.ko:system/lib/modules/
			device/allwinner/a13/prebuilt/lib/modules/gc0308.ko:system/lib/modules/
			device/allwinner/a13/prebuilt/lib/modules/gc0309.ko
			device/allwinner/a13/prebuilt/lib/modules/gc0329.ko
			device/allwinner/a13/prebuilt/lib/modules/gc2015.ko
			device/allwinner/a13/prebuilt/lib/modules/goodix_touch.ko
			device/allwinner/a13/prebuilt/lib/modules/gt2005.ko
			device/allwinner/a13/prebuilt/lib/modules/gt818_ts.ko
			device/allwinner/a13/prebuilt/lib/modules/hi253.ko
			device/allwinner/a13/prebuilt/lib/modules/hi704.ko
			device/allwinner/a13/prebuilt/lib/modules/hv2605.ko
			device/allwinner/a13/prebuilt/lib/modules/mali.ko
			device/allwinner/a13/prebuilt/lib/modules/mcs7830.ko
			device/allwinner/a13/prebuilt/lib/modules/mecs.ko
			device/allwinner/a13/prebuilt/lib/modules/mma7660.ko
			device/allwinner/a13/prebuilt/lib/modules/mt9d112.ko
			device/allwinner/a13/prebuilt/lib/modules/mt9m112.ko
			device/allwinner/a13/prebuilt/lib/modules/mt9m113.ko
			device/allwinner/a13/prebuilt/lib/modules/mxc622x.ko
			device/allwinner/a13/prebuilt/lib/modules/ov2643.ko
			device/allwinner/a13/prebuilt/lib/modules/ov2655.ko
			device/allwinner/a13/prebuilt/lib/modules/ov5640.ko
			device/allwinner/a13/prebuilt/lib/modules/ov7670.ko
			device/allwinner/a13/prebuilt/lib/modules/pktgen.ko
			device/allwinner/a13/prebuilt/lib/modules/qf9700.ko
			device/allwinner/a13/prebuilt/lib/modules/rt5370sta.ko
			device/allwinner/a13/prebuilt/lib/modules/rtl8150.ko
			device/allwinner/a13/prebuilt/lib/modules/scsi_wait_scan.ko
			device/allwinner/a13/prebuilt/lib/modules/sndi2s.ko
			device/allwinner/a13/prebuilt/lib/modules/sndspdif.ko
			device/allwinner/a13/prebuilt/lib/modules/sp0838.ko
			device/allwinner/a13/prebuilt/lib/modules/sun4i-keyboard.ko
			device/allwinner/a13/prebuilt/lib/modules/sun4i-keypad.ko
			device/allwinner/a13/prebuilt/lib/modules/sun4i-ts.ko
			device/allwinner/a13/prebuilt/lib/modules/sun4i-vibrator.ko
			device/allwinner/a13/prebuilt/lib/modules/sun5i-i2s.ko
			device/allwinner/a13/prebuilt/lib/modules/sun5i-i2sdma.ko
			device/allwinner/a13/prebuilt/lib/modules/sun5i-ir.ko
			device/allwinner/a13/prebuilt/lib/modules/sun5i-sndi2s.ko
			device/allwinner/a13/prebuilt/lib/modules/sun5i_csi0.ko
			device/allwinner/a13/prebuilt/lib/modules/sun5i_sndspdif.ko
			device/allwinner/a13/prebuilt/lib/modules/sun5i_spdif.ko
			device/allwinner/a13/prebuilt/lib/modules/sun5i_spdma.ko
			device/allwinner/a13/prebuilt/lib/modules/sunxi-dbgreg.ko
			device/allwinner/a13/prebuilt/lib/modules/sw-keyboard.ko
			device/allwinner/a13/prebuilt/lib/modules/sw-ts.ko
			device/allwinner/a13/prebuilt/lib/modules/tea5761.ko
			device/allwinner/a13/prebuilt/lib/modules/ump.ko
			device/allwinner/a13/prebuilt/lib/modules/usbnet.ko
			device/allwinner/a13/prebuilt/lib/modules/usi4329_dhd.ko
			device/allwinner/a13/prebuilt/lib/modules/usi4329_fw.bin
			device/allwinner/a13/prebuilt/lib/modules/usi4329_nvram.txt
			device/allwinner/a13/prebuilt/lib/modules/videobuf-core.ko
			device/allwinner/a13/prebuilt/lib/modules/videobuf-dma-contig.ko
			device/allwinner/a13/prebuilt/lib/modules/zt8031.ko


# /system/usr
PRODUCT_COPY_FILES += \
	device/allwinner/a13/prebuilt/usr/idc/ft5x_ts.idc:system/usr/idc/ft5x_ts.idc \
	device/allwinner/a13/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
	device/allwinner/a13/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
	device/allwinner/a13/prebuilt/usr/icu/icudt46l.dat:system/usr/icu/icudt46l.dat \
	device/allwinner/a13/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/ft5x_ts.kl:system/usr/keylayout/ft5x_ts.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/allwinner/a13/prebuilt/usr/keylayout/sw-keyboard.kl:system/usr/keylayout/sw-keyboard.kl \


# temporary prebuilt wpa_supplicant
PRODUCT_COPY_FILES += \
	device/allwinner/a13/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# prebuilt kernel modules
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*,device/allwinner/a13/prebuilt/vendor/modules,system/vendor/modules)

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/allwinner/a13/prebuilt/lib/modules,system/lib/modules)

# HACK by turl: Create some intermediate files to link with libMali/libUMP
$(shell mkdir -p out/target/product/a13/obj/SHARED_LIBRARIES/libMali_intermediates)
$(shell mkdir -p out/target/product/a13/obj/SHARED_LIBRARIES/libUMP_intermediates)
$(shell touch out/target/product/a13/obj/SHARED_LIBRARIES/libMali_intermediates/export_includes)
$(shell touch out/target/product/a13/obj/SHARED_LIBRARIES/libUMP_intermediates/export_includes)
$(shell mkdir -p out/target/product/a13/obj/SHARED_LIBRARIES/libicuuc_ics_intermediates)
$(shell mkdir -p out/target/product/a13/obj/SHARED_LIBRARIES/libicui18n_ics_intermediates)
$(shell touch out/target/product/a13/obj/SHARED_LIBRARIES/libicuuc_ics_intermediates/export_includes)
$(shell touch out/target/product/a13/obj/SHARED_LIBRARIES/libicui18n_ics_intermediates/export_includes)

# OMX codec support
PRODUCT_COPY_FILES += device/allwinner/a13/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

# Audio policy
PRODUCT_COPY_FILES += device/allwinner/a13/libraries/audio/audio_policy.conf:system/etc/audio_policy.conf

#PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=GT-I9100 PRODUCT_BRAND=samsung BUILD_ID=IML74K BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/BGLP8:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K BGLP8 release-keys" BUILD_NUMBER=BGLP8
