# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from gtowifi device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_DEVICE := gtowifi
BOARD_VENDOR := samsung
# PRODUCT_BRAND := samsung
# PRODUCT_MANUFACTURER := samsung
# PRODUCT_NAME := lineage_gtowifi
# PRODUCT_MODEL := SM-T290

# PRODUCT_GMS_CLIENTID_BASE := android-samsung
# TARGET_VENDOR := samsung
# TARGET_VENDOR_PRODUCT_NAME := gtowifi
# PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="gtowifi-userdebug 9 PPR1.180610.011 T290UES3ATF2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
ifneq ($(SIGN_BUILD), true)
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT=samsung/gtowifi/gtowifi:10/QP1A.190711.020/T290XXU3BTI2:user/release-keys
	PRIVATE_BUILD_DESC="gtowifi-userdebug 10 QP1A.190711.020 T290XXU3BTI2 release-keys"
endif
