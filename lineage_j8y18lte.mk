# Release name
PRODUCT_RELEASE_NAME := j8y18lte

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/j8y18lte/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j8y18lte
PRODUCT_NAME := lineage_j8y18lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := j8y18lte
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="j8y18ltedd-user 8.0.0 R16NW J810GDDU2ASB1 release-keys"
#BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/j8y18ltedd/j8y18lte:8.0.0/R16NW/J810GDDU2ASB1:user/release-keys


