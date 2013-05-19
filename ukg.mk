# Inherit AOSP device configuration for d2spr
$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Inherit common product files.
$(call inherit-product, vendor/ukg/config/common.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/ukg/config/cdma.mk)

# d2spr Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/ukg/overlay/toro

# Setup device specific product configuration.
PRODUCT_NAME := ukg_d2spr
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2spr
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2spr TARGET_DEVICE=d2spr BUILD_FINGERPRINT="d2spr-user 4.1.2 JZO54K release-keys" PRIVATE_BUILD_DESC="samsung/d2spr/d2spr:4.1.2/JZO54K/:user/release-keys"

# Copy mako specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ukg/prebuilt/hybrid_xhdpi_no_nav.conf:system/etc/beerbong/properties.conf \
    vendor/ukg/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip \
    vendor/ukg/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/ukg/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd 
