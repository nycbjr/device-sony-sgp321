PRODUCT_NAME := full_sgp311
PRODUCT_DEVICE := sgp311
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Full Android on sgp311
PRODUCT_MANUFACTURER := Sony

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/sony/sgp311/device.mk)
$(call inherit-product-if-exists, vendor/sony/sgp311/device-vendor.mk)
