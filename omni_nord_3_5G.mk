#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from nord_3_5G device
$(call inherit-product, device/oneplus/nord_3_5G/device.mk)

PRODUCT_DEVICE := nord_3_5G
PRODUCT_NAME := omni_nord_3_5G
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := nord_3_5G
PRODUCT_MANUFACTURER := oneplus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_k6983v1_64-user 12 SP1A.210812.016 1691647704255 release-keys"

BUILD_FINGERPRINT := oplus/ossi/ossi:12/SP1A.210812.016/1691647704255:user/release-keys
