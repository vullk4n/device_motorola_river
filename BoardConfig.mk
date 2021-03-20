#
# Copyright (C) 2019 The LineageOS Project
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
#

# Inherit from motorola sdm632-common
-include device/motorola/sdm632-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/river

# Assertions
TARGET_BOARD_INFO_FILE := device/motorola/river/board-info.txt
TARGET_OTA_ASSERT_DEVICE := river

# Display
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := river_defconfig

# NFC
BOARD_NFC_CHIPSET := pn553

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432        #    32768 * 1024 mmcblk0p41-42
BOARD_MOTO_DYNAMIC_PARTITIONS_SIZE := 4123000832
BOARD_SUPER_PARTITION_SIZE := 4127195136
BOARD_SUPER_PARTITION_ODM_DEVICE_SIZE := 285212672
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 2952790016
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 889192448

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# inherit from the proprietary version
include vendor/motorola/river/BoardConfigVendor.mk
