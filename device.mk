LOCAL_PATH := device/samsung/gts210wifi

###########################################################
### FLAT DEVICE TREE
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dtb.img:dt.img

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

