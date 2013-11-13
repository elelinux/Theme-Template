LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PACKAGE_NAME := template

LOCAL_AAPT_FLAGS := -c mdpi,hdpi,xhdpi,xxhdpi -x 10

LOCAL_CERTIFICATE := releasekey

include $(BUILD_PACKAGE)
