# Copyright (C) 2016-2017 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifeq (pa_platina,$(TARGET_PRODUCT))

# We have our own power HAL
TARGET_USES_DEVICE_SPECIFIC_POWERHAL := true

# Use the AOSP stack
TARGET_USES_AOSP := false

# Inherit platina config
$(call inherit-product, device/xiaomi/platina/device.mk)

# Generic CAF packages
include device/qcom/common/common.mk

# Get the defaults going.
TARGET_BOOT_ANIMATION_RES := 1080

# Override AOSP defaults that we want changed.
PRODUCT_NAME := pa_platina
PRODUCT_DEVICE := platina
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Mi 8 Lite
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_RESTRICT_VENDOR_FILES := false
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="platina" \
    PRODUCT_NAME="platina" \
    BUILD_FINGERPRINT="Xiaomi/platina/platina:9/PKQ1.181007.001/9.1.24:user/release-keys" \
    PRIVATE_BUILD_DESC="platina-user 9 PKQ1.181007.001 9.1.24 release-keys"

# Paranoid Android platform
include vendor/pa/main.mk

endif
