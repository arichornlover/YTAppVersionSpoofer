TARGET = iphone:clang:16.2:14.0
ARCHS = arm64
MODULES = jailed
FINALPACKAGE = 1
CODESIGN_IPA = 0

TWEAK_NAME = VersionSpoofer
DISPLAY_NAME = YouTube
BUNDLE_ID = com.google.ios.youtube
INSTALL_TARGET_PROCESSES = YouTube

VersionSpoofer_FILES = Tweak.xm
VersionSpoofer_IPA = tmp/Payload/YouTube.app
VersionSpoofer_CFLAGS = -fobjc-arc -Wno-deprecated-declarations
VersionSpoofer_FRAMEWORKS = UIKit Security

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
