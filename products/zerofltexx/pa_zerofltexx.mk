# We have our own power HAL
TARGET_USES_DEVICE_SPECIFIC_POWERHAL := true

# Initialise device config
$(call inherit-product, device/samsung/zerofltexx/full_zerofltexx.mk)

# Generic CAF packages
include device/qcom/common/common.mk

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="zerofltexx" \
    TARGET_DEVICE="zeroflte"

PRODUCT_NAME := pa_zerofltexx
PRODUCT_DEVICE := zerofltexx

# Paranoid Android platform
include vendor/pa/main.mk
