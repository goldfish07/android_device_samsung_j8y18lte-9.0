# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n.mk)

$(call inherit-product-if-exists, vendor/samsung/j8y18lte/j8y18lte-vendor.mk)


DEVICE_PATH := device/samsung/j8y18lte

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay-lineage

# Display density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Resolution
TARGET_SCREEN_HEIGHT := 1480
TARGET_SCREEN_WIDTH := 720


# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.carrier.rc \
    init.msm.usb.configfs.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.test.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc \
    init.rilchip

# Keylayouts
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/ft5x06_ts.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ft5x06_ts.kl \
    $(DEVICE_PATH)/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(DEVICE_PATH)/keylayout/synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl \
    $(DEVICE_PATH)/keylayout/synaptics_dsxv26.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsxv26.kl \
    $(DEVICE_PATH)/keylayout/synaptics_rmi4_i2c.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_rmi4_i2c.kl


# IRQ
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/irq/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config \
    $(DEVICE_PATH)/configs/sec_config_oem:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config_oem

# Thermal
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/thermal/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf


# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.print.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Wifi 
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(DEVICE_PATH)/configs/wifi/fstman.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/fstman.ini \
    $(DEVICE_PATH)/configs/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/wifi/prima/WCNSS_cfg.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_cfg.dat \
    $(DEVICE_PATH)/configs/wifi/prima/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(DEVICE_PATH)/configs/wifi/prima/WCNSS_qcom_wlan_nv.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(DEVICE_PATH)/configs/wifi/prima/grippower.info:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/grippower.info

# Audio configuration
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
	$(DEVICE_PATH)/audio/audio_effects_common.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_common.conf \
	$(DEVICE_PATH)/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
	$(DEVICE_PATH)/audio/audio_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy.conf \
	$(DEVICE_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
	$(DEVICE_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
	$(DEVICE_PATH)/audio/audio_policy_configuration_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_sec.xml \
    $(DEVICE_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(DEVICE_PATH)/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \


# Audio Mixer configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/mixer/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_qrd_sku3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku3.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_qrd_skuh.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skuh.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_qrd_skuhf.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skuhf.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_qrd_skui.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skui.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_qrd_skum.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skum.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_qrd_skun.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skun.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_skuk.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_skuk.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_wcd9306.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9306.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_wcd9326.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9326.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9330.xml \
    $(DEVICE_PATH)/audio/mixer/mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9335.xml

# XML Audio configuration files
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml


# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(DEVICE_PATH)/configs/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(DEVICE_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(DEVICE_PATH)/configs/media/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml \
    $(DEVICE_PATH)/configs/media/playback_record_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/playback_record_audio_policy_configuration.xml 


PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/media/8953/media_codecs_8953.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_8953.xml \
    $(DEVICE_PATH)/configs/media/8953/media_codecs_8953_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_8953_v1.xml \
    $(DEVICE_PATH)/configs/media/8953/media_codecs_performance_8953.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_8953.xml \
    $(DEVICE_PATH)/configs/media/8953/media_codecs_performance_8953_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_8953_v1.xml \
    $(DEVICE_PATH)/configs/media/8953/media_profiles_8953_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_8953_v1.xml 


PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/media/sound_trigger/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(DEVICE_PATH)/configs/media/sound_trigger/sound_trigger_mixer_paths_wcd9306.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(DEVICE_PATH)/configs/media/sound_trigger/sound_trigger_mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9330.xml \
    $(DEVICE_PATH)/configs/media/sound_trigger/sound_trigger_mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9335.xml \
    $(DEVICE_PATH)/configs/media/sound_trigger/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml 

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml


PRODUCT_PACKAGES += \
    libextmedia_jni \
    libdashplayer \
    libdivxdrmdecrypt \
    libdrmclearkeyplugin \
    libstagefrighthw

# OpenMAX
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxSwVencMpeg4 \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libOmxVidEnc \
    libOmxVdpp

PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-service

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/seccomp_policy/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(DEVICE_PATH)/seccomp_policy/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl \
    audio.a2dp.default \
    audio.primary.msm8953 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcompostprocbundle \
    tinymix \
    libaudioroute

# ANT
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libcnefeatureconfig \
    libril


# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl-qti \
    javax.btobex \
    libbt-vendor


# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    camera.device@3.2-impl \
    camera.msm8953 \
    libmm-qcamera \
    vendor.qti.hardware.camera.device@1.0 \
    vendor.qti.hardware.camera.device@1.0_vendor \
    Snap 


# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-service


# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    gralloc.default \
    gralloc.msm8953 \
    hwcomposer.msm8953 \
    memtrack.msm8953 \
    libdisplayconfig \
    liboverlay \
    libqdMetaData.system \
    libgenlock \
    libtinyxml \
    vendor.display.config@1.0 \
    vendor.display.config@1.0_vendor


# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.0-service.widevine


# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc


# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service


# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    libcurl \
    libgnss \
    libgnsspps

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(DEVICE_PATH)/configs/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(DEVICE_PATH)/configs/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(DEVICE_PATH)/configs/gps/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(DEVICE_PATH)/configs/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
    $(DEVICE_PATH)/configs/gps/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf


###
# Radio
###
# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    android.hardware.broadcastradio@1.0-impl

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Misc
PRODUCT_PACKAGES += \
    curl \
    libbson \
    libcurl \
    librmnetctl \
    rmnetcli \
    libxml2 \
    libtinyxml

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# Samsung
PRODUCT_PACKAGES += \
    libsecnativefeature \
    libsecril-client

# Shim
PRODUCT_PACKAGES += \
    libsec-ims_shim


# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service \
    android.hardware.power@1.0-impl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# LiveDisplay native
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@1.0-service-sdm


# Netutils
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0 \
    android.system.net.netd@1.0 \
    libandroid_net


# Thermal
PRODUCT_PACKAGES += \
    thermal.msm8953

PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service


# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service \
    vibrator.default

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@1.0-impl \
    android.hardware.health@1.0-service

PRODUCT_PACKAGES += \
    libnl_2 \
    charger_res_images \
    libion

# Lights
PRODUCT_PACKAGES += \
	android.hardware.light@2.0-impl \
	android.hardware.light@2.0-service \
    lights.msm8953.so

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    hostapd \
    libwcnss_qmi \
    libwifi-hal-qcom \
    dhcpcd.conf \
    macloader \
    wcnss_service \
    wificond \
    wifilogd \
    wpa_supplicant \
    wpa_supplicant.conf


# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service32



# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

PRODUCT_ENFORCE_RRO_TARGETS := \
    Bluetooth \
    Settings \
    SettingsProvider \
    SystemUI \
    framework-res \


# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# sdcardfs
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.sdcardfs=false

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# For userdebug builds
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.debuggable=1 \
	persist.sys.root_access=1 \
	persist.service.adb.enable=1

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp,adb

# VNDK
PRODUCT_PACKAGES += \
    vndk-sp


# GC Tweaks 
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_j8y18lte
PRODUCT_DEVICE := j8y18lte
