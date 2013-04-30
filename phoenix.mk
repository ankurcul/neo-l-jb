# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/phoenix/phoenix-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/phoenix/overlay

$(call inherit-product, device/semc/phoenix-common/phoenix.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_AAPT_CONFIG := normal hdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    device/semc/phoenix/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/phoenix/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_H.rle:root/logo.rle \
    device/semc/phoenix/prebuilt/bootrec-device:root/sbin/bootrec-device \
    device/semc/phoenix/recovery.fstab:root/recovery.fstab

# Device specific configs
PRODUCT_COPY_FILES += \
    device/semc/phoenix/config/cy8ctma300_touch.idc:system/usr/idc/cy8ctma300_touch.idc \
    device/semc/phoenix/config/synaptics_touchpad.idc:system/usr/idc/synaptics_touchpad.idc \
    device/semc/phoenix/config/atdaemon.kl:system/usr/keylayout/atdaemon.kl \
    device/semc/phoenix/config/keypad-phone-phoenix.kl:system/usr/keylayout/keypad-phone-phoenix.kl \
    device/semc/phoenix/config/keypad-phoenix.kl:system/usr/keylayout/keypad-phoenix.kl \
    device/semc/phoenix/config/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
    device/semc/phoenix/config/keypad-phoenix.kcm:system/usr/keychars/keypad-phoenix.kcm \
    device/semc/phoenix/config/sensors.conf:system/etc/sensors.conf

$(call inherit-product, device/semc/msm7x30-common/prebuilt/resources-hdpi.mk)

#LCD DENSITY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.telephony.ril_class=SemcRIL \
    com.qc.hdmi_out=false
