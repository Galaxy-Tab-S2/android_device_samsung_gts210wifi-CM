LOCAL_PATH := device/samsung/gts28wifi

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
