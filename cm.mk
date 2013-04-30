# Inherit device configuration
$(call inherit-product, device/semc/phoenix/full_phoenix.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MT25i BUILD_FINGERPRINT="SEMC/MT25i_1265-0716/MT25i:4.0.4/4.1.B.0.587/tL1_3w:user/release-keys" PRIVATE_BUILD_DESC="MT25i-user 4.0.4 4.1.B.0.587 tL1_3w test-keys"

# Boot Animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_phoenix
PRODUCT_DEVICE := phoenix
