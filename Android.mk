
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libldacBT_enc

LOCAL_ARM_MODE := arm

LOCAL_C_INCLUDES := $(LOCAL_PATH)/inc

LOCAL_SRC_FILES:= \
	src/ldaclib.c \
	src/ldacBT.c

LOCAL_CFLAGS:= \
	-O2

ifeq ($(BUILD_LDAC_32BIT_FIXED_POINT_), TRUE)
LOCAL_CFLAGS+= \
	-D_32BIT_FIXED_POINT
endif

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

