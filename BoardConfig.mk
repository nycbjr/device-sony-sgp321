# Copyright 2013 The Android Open Source Project
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

include device/sony/lagan/BoardConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := SGP311

# Assert
TARGET_OTA_ASSERT_DEVICE := SGP311,Pollux,pollux

TARGET_SPECIFIC_HEADER_PATH += device/sony/sgp311/include

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/sgp311/bluetooth

# Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/sony/sgp311
TARGET_KERNEL_CONFIG := bjr_fusion3_pollux_windy_defconfig
# Prebuilt Kernel Fallback
#TARGET_PREBUILT_KERNEL := device/sony/sgp311/kernel

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 26

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12425608704
BOARD_CACHEIMAGE_PARTITION_SIZE := 576716800

DEVICE_RESOLUTION := 1920x1200
SOMC_CFG_SENSORS_PROXIMITY_APDS9702 := false

# inherit from the proprietary version
-include vendor/sony/sgp311/BoardConfigVendor.mk
