LOCAL_PATH := device/samsung/gts210wifi

###########################################################
### FLAT DEVICE TREE
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dtb.img:dt.img

###########################################################
### DEVICE SPECIFIC AUDIO CONFIGS
###########################################################    

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

###########################################################
### DEVICE SPECIFIC MEDIA CONFIGS
###########################################################    

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles

###########################################################
### DEVICE SPECIFIC GPS CONFIGS
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml

###########################################################
### RAMDISK
###########################################################

PRODUCT_PACKAGES += \
    init.modem.rc

PRODUCT_NAME := full_gts210wifi
PRODUCT_DEVICE := gts210wifi

# Call common device configs
$(call inherit-product, device/samsung/gts2-common/device-common.mk)

# Proprietary files
$(call inherit-product-if-exists, vendor/samsung/gts28wifi/gts210wifi-vendor.mk)

