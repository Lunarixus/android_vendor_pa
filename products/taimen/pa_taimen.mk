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

ifeq (pa_taimen,$(TARGET_PRODUCT))

# We have our own power HAL
TARGET_USES_DEVICE_SPECIFIC_POWERHAL := true

# Use the AOSP stack
TARGET_USES_AOSP := true

$(call inherit-product, device/google/taimen/aosp_taimen.mk)

# Generic CAF packages
include device/qcom/common/common.mk

# Get the defaults going.
TARGET_BOOT_ANIMATION_RES := 1440

# Override AOSP defaults that we want changed.
PRODUCT_NAME := pa_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_MANUFACTURER := LG
PRODUCT_RESTRICT_VENDOR_FILES := false
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:9/PQ2A.190205.002/5164942:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 9 PQ2A.190205.002 5164942 release-keys"

# Paranoid Android platform
include vendor/pa/main.mk

endif
