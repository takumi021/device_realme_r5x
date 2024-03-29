#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Awaken stuff
$(call inherit-product, vendor/awaken/config/common.mk)
USE_GAPPS := true
USE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Inherit from bearmonets device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := false

PRODUCT_BRAND := realme
PRODUCT_DEVICE := bearmonets
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := awaken_bearmonets
PRODUCT_MODEL := Realme 5 Series

PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := bearmonets
TARGET_VENDOR_DEVICE_NAME := bearmonets

# Build Info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="bearmonets" \
    PRIVATE_BUILD_DESC="trinket-user 10 QKQ1.200209.002 release-keys"
