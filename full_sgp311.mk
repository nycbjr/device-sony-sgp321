# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/sony/sgp311/device.mk)
$(call inherit-product-if-exists, vendor/sony/sgp311/device-vendor.mk)
