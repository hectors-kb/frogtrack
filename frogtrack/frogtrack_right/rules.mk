MOUSEKEY_ENABLE      = yes     # Mouse keys
AUTO_SHIFT_ENABLE    = yes
DYNAMIC_MACRO_ENABLE = yes
EXTRAKEY_ENABLE      = yes

OLED_DRIVER_ENABLE  = no
RGBLIGHT_ENABLE     = yes       # Enable WS2812 RGB underlight.
RGB_MATRIX_ENABLE   = no		# Needs some additional tinkering to work with the split transport.
VIA_ENABLE          = no        # Enable VIA
LTO_ENABLE          = yes

SPLIT_KEYBOARD = yes
SPLIT_TRANSPORT = mirror

PIMORONI_TRACKBALL_ENABLE = no

ifeq ($(strip $(PIMORONI_TRACKBALL_ENABLE)), yes)
    SRC += pimoroni_trackball.c
    OPT_DEFS += -DPIMORONI_TRACKBALL_ENABLE
    POINTING_DEVICE_ENABLE := yes
endif

VPATH  +=  keyboards/gboards/
COMBO_ENABLE = yes

