ARCHS = armv7 armv7s arm64
SDKVERSION = 8.0

include theos/makefiles/common.mk

BUNDLE_NAME = Grayscale
Grayscale_FILES = Switch.xm
Grayscale_LIBRARIES = Accessibility flipswitch
Grayscale_INSTALL_PATH = /Library/Switches

include $(THEOS_MAKE_PATH)/bundle.mk
