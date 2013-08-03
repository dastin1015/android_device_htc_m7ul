# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

# Inherit gsm config
$(call inherit-product, vendor/ev/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m7ul/full_m7ul.mk)

# Device naming
PRODUCT_DEVICE := m7ul
PRODUCT_NAME := ev_m7ul
PRODUCT_BRAND := htc
PRODUCT_MODEL := One
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 BUILD_ID=JWR66V.H10 BUILD_FINGERPRINT="htc/m7_google/m7:4.3/JWR66V.H10/230993:user/release-keys" PRIVATE_BUILD_DESC="3.06.1700.10 CL230993 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Hostis
PRODUCT_VERSION_DEVICE_SPECIFIC := p1

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your HTC One!\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Release name
PRODUCT_RELEASE_NAME := m7ul

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/1080p/media/bootanimation.zip:system/media/bootanimation.zip

# 720p overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/720p

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/hot_reboot

