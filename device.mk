#
# Copyright (C) 2021-2023 The LineageOS Project
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

TARGET_BOARD_PLATFORM := universal9825_r

# Inherit from the common tree
$(call inherit-product, device/samsung/exynos9820-common/common.mk)

# Inherit proprietary files
$(call inherit-product, vendor/samsung/f62/f62-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Camera
PRODUCT_PACKAGES += \
    libexynosgraphicbuffer

# Fingerprint Gestures
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/uinput-sec-fp.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-sec-fp.kl

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/init.f62.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.f62.rc

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayF62 \
    LatinIMEOverlayF62 \
    SettingsOverlayF62 \
    SettingsProviderOverlayF62 \
    SettingsProviderOverlayM62 \
    SystemUIOverlayF62
