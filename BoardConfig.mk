USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/manta/mid08/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := Manta


USE_CAMERA_STUB := false
BOARD_USES_GENERIC_AUDIO := false
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/manta/mid08/libraries/vibrator.c

#CPU stuff
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true
TARGET_BOOTLOADER_BOARD_NAME := mid08

#EGL 
BOARD_EGL_CFG := device/allwinner/a10/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USE_SKIA_LCDTEXT := true
COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true
ENABLE_WEBGL := true

#Kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=8
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_PREBUILT_KERNEL := device/manta/mid08/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/manta/mid08/recovery/recovery-kernel

TARGET_PROVIDES_INIT_RC := true
TARGET_BOOTANIMATION_PRELOAD := true

#EMMC/NAND Memory
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 4096

#Include
TARGET_HARDWARE_INCLUDE := $(TOP)/device/manta/mid08/include


#Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/manta/mid08/recovery/recovery_keys.c
TARGET_RECOVERY_PRE_COMMAND := "echo -n boot-recovery | busybox dd of=/dev/block/nandf count=1 conv=sync; sync"
TARGET_RECOVERY_INITRC := device/manta/mid08/recovery/recovery_init.rc
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
#BOARD_TOUCH_RECOVERY := true
#Memory
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_USE_CUSTOM_LUN_FILE_PATH = "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 20

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true


BOARD_USE_LEGACY_TOUCHSCREEN := true

# Wifi stuff
BOARD_WIFI_VENDOR                := realtek
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
BOARD_HOSTAPD_DRIVER             := WEXT
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_rtl
BOARD_WLAN_DEVICE                := rtl8192cu
WIFI_DRIVER_MODULE_NAME          := 8192cu
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/8192cu.ko"
TARGET_CUSTOM_WIFI := ../../hardware/realtek/wlan/wifi_realtek.c

COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB #temporary