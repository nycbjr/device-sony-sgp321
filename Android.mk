LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),sgp311)
    include $(call first-makefiles-under,$(LOCAL_PATH))
endif
