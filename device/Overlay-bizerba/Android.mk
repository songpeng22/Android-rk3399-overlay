$(warning build Overlay-bizerba......... )

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

# Include res dir
res_dir := res

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src) 
LOCAL_SRC_FILES := $(call all-java-files-under, src/com/example/helloandroid/) 

LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/, $(res_dir))

# Use assets dir from UnifiedEmail
# (the default package target doesn't seem to deal with multiple asset dirs)
LOCAL_ASSET_DIR := $(LOCAL_PATH)/assets

LOCAL_STATIC_JAVA_LIBRARIES := android-common com.android.javamodule
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v4
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-appcompat
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-gridlayout
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v13
LOCAL_STATIC_JAVA_LIBRARIES += android-opt-bitmap
LOCAL_STATIC_JAVA_LIBRARIES += android-opt-datetimepicker
LOCAL_STATIC_JAVA_LIBRARIES += owasp-html-sanitizer

#LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_PACKAGE_NAME := Overlay-bizerba

LOCAL_OVERRIDES_PACKAGES += \
   Browser \
   Browser2 \
   BrowserTests \
   Calculator \
   ExactCalculator \
   ExactCalculatorTests \
   Calendar \
   CalendarProvider \
   Camera \
   Clock \
   AlarmClock \
   DeskClock \
   Contacts \
   Email \
   EmailTests \
   GoogleEmail \
   UnifiedEmailTests \
   Explorer \
   Gallerry \
   Music \
   MusicFX \
   RandomMusicPlayer \
   RkMusic \
   Lightning \
   Video 

PACKAGES.$(LOCAL_MODULE).OVERRIDES := \
	RkVideoPlayer \
	Rk3grExplorer \
	RKVRExplorer \
	RkExplorer

LOCAL_SDK_VERSION := current

include $(BUILD_PACKAGE)

# Use the folloing include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
