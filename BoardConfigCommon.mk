# HAX for now
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ENFORCE_SYSPROP_OWNER := true

BOARD_VENDOR := xiaomi

COMMON_PATH := device/xiaomi/msm8994-common

TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

# Platform
TARGET_NO_BOOTLOADER := true

# Properties
TARGET_SYSTEM_PROP += $(COMMON_PATH)/system.prop
TARGET_PRODUCT_PROP += $(COMMON_PATH)/product.prop

# Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53.a57

TARGET_CPU_SMP := true

# Graphics
BOARD_USES_ADRENO := true
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GRALLOC1_ADAPTER := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 2048
TARGET_USES_HWC2 := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

BOARD_USES_OPENSSL_SYMBOLS := true

BOARD_USE_LEGACY_UI := true

# Keymaster
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TARGET_PROVIDES_KEYMASTER := true

# GPS
USE_DEVICE_SPECIFIC_GPS := true
USE_DEVICE_SPECIFIC_LOC_API := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := false
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_HAS_QCA_BT_ROME := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true
WCNSS_FILTER_USES_SIBS := true

# EXFAT
TARGET_EXFAT_DRIVER := exfat

# Fonts
USE_REDUCED_CJK_FONT_WEIGHTS := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/leo
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 boot_cpus=0-5 loop.max_part=7 androidboot.selinux=permissive
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_CLANG_COMPILE := false

# Partition
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864 #64M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864 #64M
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184 #384M
BOARD_ROOT_EXTRA_FOLDERS := firmware bt_firmware persist
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
ifneq (,$(filter linux darwin, $(HOST_OS)))
TARGET_USERIMAGES_USE_F2FS := true
endif
BOARD_FLASH_BLOCK_SIZE := 131072 #262144 #(BOARD_KERNEL_PAGESIZE * 64)

TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
# Force camera module to be compiled only in 32-bit mode on 64-bit systems
# Once camera module can run in the native mode of the system (either
# 32-bit or 64-bit), the following line should be deleted
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /system/vendor/bin/mm-qcamera-daemon=22

# Dexpreopt
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    WITH_DEXPREOPT ?= true
  endif
endif
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY ?= true

# Added to indicate that protobuf-c is supported in this build
PROTOBUF_SUPPORTED := true

# Enable peripheral manager
TARGET_PER_MGR_ENABLED := true

# HIDL
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(COMMON_PATH)/compatibility_matrix.xml

# Filesystem
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# IPA
USE_DEVICE_SPECIFIC_DATA_IPA_CFG_MGR := true

# Legacy memfd
TARGET_HAS_MEMFD_BACKPORT := true

# Power
TARGET_USES_INTERACTION_BOOST := true

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Ril
FEATURE_QCRIL_UIM_SAP_SERVER_MODE := true
TARGET_RIL_VARIANT := caf
TARGET_USES_OLD_MNC_FORMAT := true

# Remove secdiscard command
TARGET_REMOVE_SECDISCARD_COMMAND := true

# Added to indicate that protobuf-c is supported in this build
PROTOBUF_SUPPORTED := true

# Vintf
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

# Wifi
BOARD_HAS_QCOM_WLAN             := true
BOARD_HAS_QCOM_WLAN_SDK         := true
BOARD_HOSTAPD_DRIVER            := NL80211
BOARD_HOSTAPD_PRIVATE_LIB       :=lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE               := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER :=  NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
TARGET_USES_WCNSS_CTRL          := true
WIFI_AVOID_IFACE_RESET_MAC_CHANGE := true
WIFI_DRIVER_MODULE_NAME         := "wlan"
WIFI_DRIVER_FW_PATH_AP          := "ap"
WIFI_DRIVER_FW_PATH_STA         := "sta"
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
TARGET_USES_QCOM_WCNSS_QMI      := true
WPA_SUPPLICANT_VERSION          := VER_0_8_X

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Releasetools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_msm8994
TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)

# SELinux
include device/qcom/sepolicy-legacy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy
SELINUX_IGNORE_NEVERALLOWS := true

# Shims
TARGET_LD_SHIM_LIBS += \
    /system/vendor/lib64/libril-qc-qmi-1.so|rild_socket.so \
    /system/vendor/lib/libmmcamera2_stats_algorithm.so|libshim_atomic.so \
    /system/vendor/lib64/libizat_core.so|libshims_get_process_name.so \
    /system/vendor/lib64/libril-qc-qmi-1.so|libaudioclient_shim.so \
    /system/vendor/lib64/libmm-abl.so|libshims_thermal.so \
    /system/vendor/lib64/libmm-qdcm-diag.so|libshims_thermal.so

# TWRP Support
ifeq ($(WITH_TWRP),true)
-include $(COMMON_PATH)/twrp/twrp.mk
endif

# Inherit from the proprietary version
-include vendor/xiaomi/msm8994-common/BoardConfigVendor.mk
