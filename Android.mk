LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),sgp311,SGP311,pollux_windy)
    include $(call first-makefiles-under,$(LOCAL_PATH))
endif
