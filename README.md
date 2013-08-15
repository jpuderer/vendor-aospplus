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
sudo chown -R ${USER}. system.factory
rmdir system.mnt
rm -r system.full.img
```


*NOTE: We don't need to preserve permission or ownership, since the AOSP build system has its own rules for setting the permissions and ownership of the files we add to the build.*

### 4. Deodex the APK and framework files

An odexed file is basically an APK that has been preoptimized for fast loading.  The .dex file that normally exists inside the APK or JAR file (which are really just a zip files) is removed from the APK, optimized, and is placed next to the .apk as an .odex file.

The Android build system can be configured to preoptimize the files on APK files in /system/app, and this is exactly what's happened to the factory images.

The documentation for dexopt details the optimizations:
https://github.com/android/platform_dalvik/blob/master/docs/dexopt.html

Unfortunately for us (and themers in general), the optimized .odex file has dependencies on the classes in bootstrap class path, which for Android is everything under /system/framework.  If we change the framework files, the .odex files will not work.

So we need to "deodex" the the .odex files, and package them back into the APK and JAR files.

To do that, we need to use some tools to recompile the odex files back into odex files.

The original deodex tools can be found [here](https://code.google.com/p/smali), but I've included copies in this project.


```bash
cd $ANDROID_BUILD_TOP/vendor/aospplus/
cp -r $MY_SCRATCH_DIR/system.factory mako/proprietary/system
utils/deodex.py mako/proprietary/system
```

Feel free to do some cleanup of the system directory if you wish, since not all files are needed.

```bash
cd mako/proprietary/system
rm -Rf bin build.prop fonts lost+found xbin
```

### 5. Build your target at you would normally.

Assuming you have already sourced build/envsetup.sh and selected you target using the 'lunch' command:

```bash
cd $ANDROID_BUILD_TOP
make clobber & make -j8
```


---

### More information...

Additional information on adapting these templates for new devices is available in my slides:
http://www.slideshare.net/jpuderer/aosp-22819480
