#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-18 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/land

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/xiaomi/land/land-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8937

# Keylayouts
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/ist30xx_ts_input.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ist30xx_ts_input.kl \
    $(DEVICE_PATH)/keylayout/msm8952-sku1-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/msm8952-sku1-snd-card_Button_Jack.kl

# Libshim
PRODUCT_PACKAGES += \
    libshims_camera

# Properties
-include $(DEVICE_PATH)/vendor_prop.mk

# Inherit from msm8937-common
$(call inherit-product, device/xiaomi/msm8937-common/msm8937.mk)
