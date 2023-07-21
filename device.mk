#
# Copyright (C) 2022 The LineageOS Project
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

# Inherit from the common tree
$(call inherit-product, device/samsung/universal2100-common/common.mk)

# Inherit proprietary files
$(call inherit-product, vendor/samsung/o1s/o1s-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Recovery/vendor_boot firmware
PRODUCT_COPY_FILES += \
    vendor/samsung/o1s/proprietary/vendor/firmware/y792_o1.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/y792_o1.bin \
    vendor/samsung/o1s/proprietary/vendor/firmware/y792_o1.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/y792_o1.bin
