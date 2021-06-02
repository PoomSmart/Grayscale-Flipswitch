PACKAGE_VERSION = 1.0.0
TARGET = iphone:clang:latest:11.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = GrayscaleFS
GrayscaleFS_FILES = Switch.xm
GrayscaleFS_LIBRARIES = Accessibility flipswitch
GrayscaleFS_INSTALL_PATH = /Library/Switches

include $(THEOS_MAKE_PATH)/bundle.mk
