LOCAL_PATH := $(call my-dir)

X4DROID_DATADIR ?= /system/etc/xserver/

include $(CLEAR_VARS)
LOCAL_MODULE    := libxshmfence

LOCAL_CFLAGS    := -DHAVE_CONFIG_H -DX4DROID_DATADIR=\"$(X4DROID_DATADIR)\"

LOCAL_C_INCLUDES := 	\
	$(LOCAL_PATH)/src	\
	$(LOCAL_PATH)/X11	\
	external/xorgproto/include

LOCAL_SRC_FILES := \
    src/xshmfence_alloc.c  \
    src/xshmfence_pthread.c


LOCAL_STATIC_LIBRARIES :=
include $(BUILD_STATIC_LIBRARY)
