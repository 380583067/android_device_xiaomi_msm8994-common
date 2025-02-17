$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/xiaomi/msm8994-common/msm8994-common-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles_V1_0.xml:system/vendor/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/vendor/etc/media_codecs.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:system/vendor/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info_i2s.xml:system/vendor/etc/audio_platform_info_i2s.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml  \
    $(LOCAL_PATH)/audio/mixer_paths_i2s.xml:system/vendor/etc/mixer_paths_i2s.xml \
    $(LOCAL_PATH)/audio/surround_sound_3mic/surround_sound_rec_AZ.cfg:system/vendor/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/aanc_tuning_mixer.txt:system/vendor/etc/aanc_tuning_mixer.txt \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:system/vendor/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:system/vendor/etc/sound_trigger_platform_info.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:system/vendor/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/vendor/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/vendor/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/vendor/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/vendor/etc/usb_audio_policy_configuration.xml

# keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/msm8994-tomtom-snd-card_Button_Jack.kl:system/vendor/usr/keylayout/msm8994-tomtom-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/vendor/usr/keylayout/gpio-keys.kl

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/vendor/etc/media_codecs_google_video.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/vendor/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/vendor/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/vendor/etc/permissions/android.hardware.camera.full.xml\
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/vendor/etc/permissions/android.hardware.camera.raw.xml\
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/vendor/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/vendor/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/vendor/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/vendor/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/vendor/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:system/vendor/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/vendor/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:system/vendor/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/vendor/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/vendor/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/vendor/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/vendor/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/vendor/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:system/vendor/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/vendor/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/vendor/etc/permissions/android.hardware.vulkan.version.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/vendor/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/vendor/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/vendor/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/vendor/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/vendor/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/vendor/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/vendor/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/vendor/etc/permissions/android.hardware.sensor.stepdetector.xml

#FEATURE_OPENGLES_EXTENSION_PACK support string config file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml

# APEX
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ld.config.txt:system/etc/swcodec/ld.config.txt

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.soundtrigger@2.2-impl \
    audio.primary.$(BOARD_PLATFORM) \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

# Bluetooth
PRODUCT_PACKAGES += \
    bdaddr_xiaomi \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl \
    audio.bluetooth.default \
    android.hardware.bluetooth.audio@2.1-impl

# Connectivity Engine support (CNE)
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# Dummy hidl lib for oreo blobs
PRODUCT_PACKAGES += \
    libhidltransport \
    libhwbinder

# Display Device Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/displayconfig/display_id_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_0.xml

# GPS
PRODUCT_PACKAGES += \
    gps.$(BOARD_PLATFORM) \
    flp.conf \
    gps.conf \
    izat.conf \
    lowi.conf \
    sap.conf \
    xtwifi.conf
    
# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl

# GNSS HAL
PRODUCT_PACKAGES += \
    libshims_get_process_name \
    android.hardware.gnss@1.0-impl

# Graphics
PRODUCT_PACKAGES += \
    copybit.$(BOARD_PLATFORM) \
    gralloc.$(BOARD_PLATFORM) \
    hwcomposer.$(BOARD_PLATFORM) \
    memtrack.$(BOARD_PLATFORM) \
    liboverlay \
    libtinyxml \
    android.hardware.configstore@1.1-service \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.graphics.composer@2.1-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Camera
PRODUCT_PACKAGES += \
    camera.$(BOARD_PLATFORM) \
    camera.device@1.0-impl \
    android.hardware.camera.provider@2.4-impl \
    libshim_atomic \
    libshim_camera

# Keystore
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1-service

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/vendor/etc/sec_config

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.xiaomi_msm8994

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-legacymm

# OMX
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.4-service.clearkey \
    libc2dcolorconvert \
    libdrmclearkeyplugin \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Privapp Whitelist
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_msm8994

# RIL
PRODUCT_PACKAGES += \
    libaudioclient_shim \
    librmnetctl \
    rild_socket \
    libxml2

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensor_diag.cfg:system/etc/sensor_diag.cfg

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# TimeKeep
PRODUCT_PACKAGES += \
    timekeep \
    TimeKeep

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# VNDK
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-core/libprotobuf-cpp-lite.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-cpp-lite-v29.so \
    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-core/libprotobuf-cpp-full.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libprotobuf-cpp-full-v29.so

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    ipacm \
    IPACM_cfg.xml \
    libqsap_sdk \
    libwpa_client \
    hostapd \
    readmac \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/vendor/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf

# Screen density
PRODUCT_AAPT_CONFIG := normal

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    ueventd.qcom.rc \
    init.qcom.post_boot.sh
    
# Shim for S
PRODUCT_PACKAGES += \
    libshims_thermal
    
# Vendor HIDL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0 \
    android.hardware.neuralnetworks@1.3
