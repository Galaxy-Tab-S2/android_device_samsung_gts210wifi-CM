# Copyright (C) 2014 The CyanogenMod Project
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

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit device configuration
$(call inherit-product, device/samsung/gts210wifi/device.mk)
$(call inherit-product, device/samsung/gts210wifi/device-common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gts210wifi
PRODUCT_NAME := full_gts210wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T810
PRODUCT_MANUFACTURER := samsung
