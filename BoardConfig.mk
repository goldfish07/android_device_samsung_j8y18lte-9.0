USE_CAMERA_STUB := true
WITHOUT_CHECK_API := true
# inherit from the proprietary version
-include vendor/samsung/j8y18lte/BoardConfigVendor.mk
DEVICE_PATH := device/samsung/j8y18lte
# Architecture
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8953
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53

TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Kernel
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_BASE := 0x80000000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_TAGS_OFFSET := 0x01e00000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/j8y18lte
TARGET_KERNEL_CONFIG := j8y18lte_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.selinux=permissive

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

# Kernel toolchains
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE :=  33554432 #25
BOARD_RECOVERYIMAGE_PARTITION_SIZE :=  33554432 #26
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3397386240 #40
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57415790592 #43 57415806976 - 16384
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800 #43
BOARD_VENDORIMAGE_PARTITION_SIZE := 503316480 #41
BOARD_PERSISTIMAGE_PARTITION_SIZE := 1048576 #31
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_USES_MKE2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true

# filesystem
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_COMPATIBILITY_MATRIX_LEVEL_OVERRIDE := 27

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_GENERIC_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true
USE_XML_AUDIO_POLICY_CONF := 1
AUDIO_FEATURE_SAMSUNG_DUAL_SIM := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true

# Bluetooth
BOARD_HAS_QCA_BT_ROME := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true


# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_TS_MAKEUP := true

# GPS
USE_DEVICE_SPECIFIC_GPS := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# CNE / DPM
BOARD_USES_QCNE := true

# Cpusets
ENABLE_CPUSETS := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Dexpreopt
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
WITH_DEXPREOPT_BOOT_IMG_ONLY ?= true

# Display
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_OVERLAY := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
USE_OPENGL_RENDERER := true


# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/compatibility_matrix.xml



# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8953
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8953

# Samsung
BOARD_VENDOR := samsung

# charger
WITH_LINEAGE_CHARGER := false

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true


# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Power
TARGET_HAS_NO_WIFI_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
TARGET_USE_SDCLANG := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

#QCOM FM
AUDIO_FEATURE_ENABLED_FM := true
BOARD_HAVE_QCOM_FM := true

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_CLASS := $(DEVICE_PATH)/ril
TARGET_RIL_VARIANT := caf


# Shims
TARGET_LD_SHIM_LIBS := \
	/system/lib/libsec-ril.so|libshims_rild_socket.so \
 	/system/lib/libsec-ims.so|libsec-ims_shim.so

# Protobuf
PROTOBUF_SUPPORTED := true

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Vold
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 67
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# SELinux
include device/qcom/sepolicy/sepolicy.mk
include device/qcom/sepolicy/legacy-sepolicy.mk
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

#include
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Wi-Fi
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
