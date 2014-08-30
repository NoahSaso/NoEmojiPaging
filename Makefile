ARCHS = arm64 armv7 armv7s

include theos/makefiles/common.mk

TWEAK_NAME = NoEmojiPaging
NoEmojiPaging_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
