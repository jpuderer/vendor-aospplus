vendor-aospplus
===============

This project contains templates for adding components of Android factory images
to AOSP builds.

The idea is to be able to create AOSP builds that include all of the same functionality
available in the device factory images.

Support currently exists for Nexus 4, Nexus 7, and Galaxy Nexus devices on Android 4.2.2
(Jellybean).

Prequisites
-----------

* Working AOSP build for target device
    * You'll need some of the host tools created by the AOSP build to apply the templates.  
    * It is very helpful to have a known good build, before adding additional components
    * Instructions can be found [here](http://source.android.com/source/index.html)
    * You must include any of the proprietary drivers available for your device (see [build for your device](http://source.android.com/source/building-devices.html))

Adding to your build
--------------------

### 1. Checkout the project into your $ANDROID_BUILD_TOP/vendor directory.

```bash
cd $ANDROID_BUILD_TOP
cd vendor
git clone git://githib.com/jpuderer/vendor-aospplus.git aospplus
```

### 2. Add the vendor/aospplus directory to the device build.

In order for the aospplus components to be added to the build, we need to make sure they get included by the target's build.

In the case of building for mako (Nexus 4), you would need to make the following changes in $ANDROID_BUILD_TOP/vendor/lge/mako/:
```
--- BoardConfigVendor.mk.orig  2013-05-03 17:11:09.705229512 -0400
+++ BoardConfigVendor.mk	2013-05-03 17:14:37.085224121 -0400
@@ -17,3 +17,4 @@
 -include vendor/broadcom/$(LOCAL_STEM)
 -include vendor/lge/$(LOCAL_STEM)
 -include vendor/qcom/$(LOCAL_STEM)
+-include vendor/aospplus/$(LOCAL_STEM)
```

```
--- device-vendor.mk.orig	2013-05-03 17:10:30.393230534 -0400
+++ device-vendor.mk	2013-05-03 17:09:51.393231548 -0400
@@ -17,3 +17,4 @@
 $(call inherit-product-if-exists, vendor/broadcom/$(LOCAL_STEM))
 $(call inherit-product-if-exists, vendor/lge/$(LOCAL_STEM))
 $(call inherit-product-if-exists, vendor/qcom/$(LOCAL_STEM))
+$(call inherit-product-if-exists, vendor/aospplus/$(LOCAL_STEM))
```

Other devices require similar changes.

### 3. Extract system files from factory image

Download the factory image for your target device.  These can be found here for Nexus devices:
https://developers.google.com/android/nexus/images


The factory image will contain a zip file, which will contain a system.img file.  This file contains the compressed ext4 filesystem for the device's /system directory.


Expand the system.img file as follows:
```bash
cp $ANDROID_BUILD_TOP/out/host/linux-x86/bin/simg2img ~/bin
simg2img system.img system.full.img
mkdir system.mnt
mkdir system.factory
sudo mount -n -o loop system.full.img system.mnt
sudo cp -r system.mnt/* system.factory
sudo umount -n system.mnt
sudo chown -R ${USER}. system.factory  1
rmdir system.mnt
$ rm -r system.full.img
```
