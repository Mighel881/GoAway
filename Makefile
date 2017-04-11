ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = GoAway
GoAway_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += GoAwayprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
