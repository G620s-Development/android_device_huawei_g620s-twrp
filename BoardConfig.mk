# Bootloader
TARGET_NO_BOOTLOADER         := true
TARGET_BOOTLOADER_BOARD_NAME := msm8916

# Platform
TARGET_BOARD_PLATFORM     := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Architecture
TARGET_ARCH                         := arm
TARGET_ARCH_VARIANT                 := armv7-a-neon
TARGET_CPU_ABI                      := armeabi-v7a
TARGET_CPU_ABI2                     := armeabi
TARGET_CPU_SMP                      := true
TARGET_CPU_VARIANT                  := cortex-a7
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER          := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# init
TARGET_PLATFORM_DEVICE_BASE   := /devices/soc.0/

# Kernel
TARGET_PREBUILT_KERNEL       := device/huawei/g620s/kernel
TARGET_CUSTOM_KERNEL_HEADERS := device/huawei/g620s/include
BOARD_KERNEL_CMDLINE         := androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
BOARD_KERNEL_BASE            := 0x80000000
BOARD_KERNEL_PAGESIZE        := 2048
BOARD_KERNEL_SEPARATED_DT    := true
BOARD_MKBOOTIMG_ARGS         := --dt device/huawei/g620s/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file

# Recovery
TARGET_USERIMAGES_USE_EXT4     := true
BOARD_HAS_LARGE_FILESYSTEM     := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT   := "BGRA_8888"

# TWRP-Specific
TARGET_RECOVERY_FSTAB            := device/huawei/g620s/recovery/etc/recovery.fstab
TARGET_RECOVERY_QCOM_RTC_FIX     := true
DEVICE_RESOLUTION                := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA          := true
BOARD_SUPPRESS_SECURE_ERASE      := true
TW_TARGET_USES_QCOM_BSP          := true
TW_INTERNAL_STORAGE_PATH         := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT  := "data"
TW_EXTERNAL_STORAGE_PATH         := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT  := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE      := true
TW_INCLUDE_CRYPTO                := true
TW_BRIGHTNESS_PATH               := /sys/class/leds/lcd-backlight/brightness
