# inherit from common gts2
-include device/samsung/gts2-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gts210wifi

#Kernel
#TARGET_KERNEL_SOURCE := kernel/samsung/gts210wifi
TARGET_KERNEL_CONFIG := cm_exynos5433-gts210wifi_defconfig

# Extracted with libbootimg
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/gts210wifi/dtb.img --board SYSMAGIC000K

#Partitions
#same on gts28wifi and gts210 wifi, kept untill sure that lte versions have same table
#BOARD_BOOTIMAGE_PARTITION_SIZE :=     0x105c0000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00D00000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1887436800
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 13514047488
#BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_OTA_ASSERT_DEVICE := gts210wifi,gts210wifixx

# inherit from the proprietary version
-include vendor/samsung/gts210wifi/BoardConfigVendor.mk
