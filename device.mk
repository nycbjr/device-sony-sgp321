# Copyright (C) 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/sony/lagan/device_tablet.mk)
$(call inherit-product, vendor/sony/sgp311/sgp311-vendor.mk)

PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

#TARGET_PREBUILT_KERNEL ?= kernel
#PRODUCT_COPY_FILES += $(LOCAL_PATH)/$(TARGET_PREBUILT_KERNEL):kernel

# Prebuilt kernel location
ifeq ($(TARGET_PREBUILT_KERNEL),)
        LOCAL_KERNEL := device/sony/sgp311/kernel
else
        LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/rootdir/logo.rle:root/logo.rle \
    $(LOCAL_PATH)/rootdir/system/etc/flashled_calc_parameters.cfg:system/etc/flashled_calc_parameters.cfg \
    $(LOCAL_PATH)/rootdir/system/etc/sensors.conf:system/etc/sensors.conf \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    fw.max_users=8 \

PRODUCT_PACKAGE_OVERLAYS += device/sony/sgp311/overlay

SOMC_CFG_SENSORS_LIGHT_LM3533 := yes
SOMC_CFG_SENSORS_LIGHT_MAXRANGE := 1000
SOMC_CFG_SENSORS_LIGHT_LM3533_PATH := /sys/bus/i2c/devices/0-0036

SOMC_CFG_SENSORS_PROXIMITY_APDS9702 := yes

SOMC_CFG_SENSORS_ACCEL_BMA250_INPUT := yes

# Device specific part for two-stage boot
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/bootrec-device:recovery/bootrec-device

$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/sony/pollux/pollux-vendor.mk)

$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

PRODUCT_NAME := full_sgp311
PRODUCT_DEVICE := sgp311
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia Tablet Z
PRODUCT_MANUFACTURER := Sony
