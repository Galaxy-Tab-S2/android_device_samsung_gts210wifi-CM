# Include common configurations
include device/samsung/gts2-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gts210wifi

# Kernel
# TODO : Unify kernel
TARGET_KERNEL_CONFIG := cm_exynos5433-gts210wifi_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/gts210wifi

# Extracted with libbootimg
BOARD_MKBOOTIMG_ARGS += --dt device/samsung/gts210wifi/dtb.img

# Recovery
TARGET_OTA_ASSERT_DEVICE := gts210wifi,gts210wifixx
