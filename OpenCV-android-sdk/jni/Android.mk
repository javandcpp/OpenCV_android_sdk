LOCAL_PATH:= $(call my-dir) 
include $(CLEAR_VARS) 
OPENCV_LIB_TYPE=STATIC
include ../sdk/native/jni/OpenCV.mk
LOCAL_MODULE    := opencv
LOCAL_CFLAGS    := -Werror 
#LOCAL_SRC_FILES := ar.cpp 
#LOCAL_LDLIBS    += -llog -landroid -lEGL -lGLESv1_CM 
LOCAL_LDLIBS    += -llog   
#build dynamic library 
include $(BUILD_SHARED_LIBRARY)