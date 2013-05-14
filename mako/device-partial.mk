# JellyBean 4.2.2

# Nexus Boot animation
PRODUCT_COPY_FILES += \
    vendor/aospplus/mako/proprietary/system/media/bootanimation.zip:system/media/bootanimation.zip:google

# GApps
PRODUCT_PACKAGES += \
    Books \
    BrowserProviderProxy \
    CalendarGoogle \
    CellBroadcastReceiver \
    Chrome \
    ConfigUpdater \
    Currents \
    DeskClockGoogle \
    EmailGoogle \
    Exchange2Google \
    FaceLock \
    GalleryGoogle \
    Gmail2 \
    GoogleBackupTransport \
    GoogleContactsSyncAdapter \
    GoogleEars \
    GoogleEarth \
    GoogleFeedback \
    GoogleLoginService \
    GooglePartnerSetup \
    GoogleServicesFramework \
    GoogleTTS \
    iWnnIME \
    iWnnIME_Kbd_White \
    KoreanIME \
    LatinImeDictionaryPack \
    LatinImeGoogle \
    Magazines \
    Maps \
    MediaUploader \
    Music2 \
    NetworkLocation \
    OccamQuickOffice \
    OneTimeInitializer \
    PartnerBookmarksProvider \
    Phonesky \
    PlusOne \
    PrebuiltGmsCore \
    SetupWizard \
    Stk \
    Street \
    TagGoogle \
    Talk \
    talkback \
    Velvet \
    VideoEditorGoogle \
    Videos \
    VoiceSearchStub \
    Wallet \
    YouTube \
    uiautomator

# GLibs
PRODUCT_COPY_FILES += \
    vendor/aospplus/mako/proprietary/system/lib/libchromeview.so:system/lib/libchromeview.so:google \
    vendor/aospplus/mako/proprietary/system/lib/lib_dic_en_USUK.conf.so:system/lib/lib_dic_en_USUK.conf.so:google \
    vendor/aospplus/mako/proprietary/system/lib/lib_dic_en_xlarge_USUK.conf.so:system/lib/lib_dic_en_xlarge_USUK.conf.so:google \
    vendor/aospplus/mako/proprietary/system/lib/lib_dic_ja_JP.conf.so:system/lib/lib_dic_ja_JP.conf.so:google \
    vendor/aospplus/mako/proprietary/system/lib/lib_dic_ja_xlarge_JP.conf.so:system/lib/lib_dic_ja_xlarge_JP.conf.so:google \
    vendor/aospplus/mako/proprietary/system/lib/lib_dic_morphem_ja_JP.conf.so:system/lib/lib_dic_morphem_ja_JP.conf.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libEnjemailuri.so:system/lib/libEnjemailuri.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libennjcon.so:system/lib/libennjcon.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libennjubase1gb.so:system/lib/libennjubase1gb.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libennjubase1.so:system/lib/libennjubase1.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libennjubase1us.so:system/lib/libennjubase1us.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libennjubase2.so:system/lib/libennjubase2.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libennjubase3.so:system/lib/libennjubase3.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libennjyomi.so:system/lib/libennjyomi.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libcamera_client.so:system/lib/libcamera_client.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libcamera_metadata.so:system/lib/libcamera_metadata.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libcameraservice.so:system/lib/libcameraservice.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libearthmobile.so:system/lib/libearthmobile.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libfacelock_jni.so:system/lib/libfacelock_jni.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libfrsdk.so:system/lib/libfrsdk.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libgoggles_clientvision.so:system/lib/libgoggles_clientvision.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libiwnn.so:system/lib/libiwnn.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libjni_googlepinyinime_5.so:system/lib/libjni_googlepinyinime_5.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libjni_googlepinyinime_latinime_5.so:system/lib/libjni_googlepinyinime_latinime_5.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libjni_koreanime.so:system/lib/libjni_koreanime.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libkaomoji_kihon.so:system/lib/libkaomoji_kihon.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libkaomoji_tyukyu.so:system/lib/libkaomoji_tyukyu.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libkeystore_client.so:system/lib/libkeystore_client.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so:google \
    vendor/aospplus/mako/proprietary/system/lib/liblightcycle.so:system/lib/liblightcycle.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libnjaddress.so:system/lib/libnjaddress.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libnjcon.so:system/lib/libnjcon.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libnjemoji.so:system/lib/libnjemoji.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libnjexyomi.so:system/lib/libnjexyomi.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libnjfzk.so:system/lib/libnjfzk.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libnjname.so:system/lib/libnjname.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libnjtan.so:system/lib/libnjtan.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libnjubase1.so:system/lib/libnjubase1.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libnjubase2.so:system/lib/libnjubase2.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libnjubaseidx1.so:system/lib/libnjubaseidx1.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libnjubaseidx2.so:system/lib/libnjubaseidx2.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so:google \
    vendor/aospplus/mako/proprietary/system/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so:google \
    vendor/aospplus/mako/proprietary/system/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so:google \
    vendor/aospplus/mako/proprietary/system/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so:google \
    vendor/aospplus/mako/proprietary/system/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so:google \
    vendor/aospplus/mako/proprietary/system/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so:google

#GPermissions
PRODUCT_COPY_FILES += \
    vendor/aospplus/mako/proprietary/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml:google \
    vendor/aospplus/mako/proprietary/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml:google \
    vendor/aospplus/mako/proprietary/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml:google \
    vendor/aospplus/mako/proprietary/system/etc/permissions/features.xml:system/etc/permissions/features.xml:google

#GPrefs
PRODUCT_COPY_FILES += \
    vendor/aospplus/mako/proprietary/system/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml:google

#GCmdUpdates
PRODUCT_COPY_FILES += \
    vendor/aospplus/mako/proprietary/system/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt:google

#GFrameworks
PRODUCT_COPY_FILES += \
    vendor/aospplus/mako/proprietary/system/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar:google \
    vendor/aospplus/mako/proprietary/system/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar:google \
    vendor/aospplus/mako/proprietary/system/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar:google

#GSoundRecord
PRODUCT_COPY_FILES += \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/acoustic_model:system/usr/srec/en-US/acoustic_model:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/c_fst:system/usr/srec/en-US/c_fst:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/clg:system/usr/srec/en-US/clg:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/compile_grammar.config:system/usr/srec/en-US/compile_grammar.config:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/contacts.abnf:system/usr/srec/en-US/contacts.abnf:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/dict:system/usr/srec/en-US/dict:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/dictation.config:system/usr/srec/en-US/dictation.config:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/embed_phone_nn_model:system/usr/srec/en-US/embed_phone_nn_model:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/embed_phone_nn_state_sym:system/usr/srec/en-US/embed_phone_nn_state_sym:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/endpointer_dictation.config:system/usr/srec/en-US/endpointer_dictation.config:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/endpointer_voicesearch.config:system/usr/srec/en-US/endpointer_voicesearch.config:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/ep_acoustic_model:system/usr/srec/en-US/ep_acoustic_model:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/g2p_fst:system/usr/srec/en-US/g2p_fst:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/google_hotword.config:system/usr/srec/en-US/google_hotword.config:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/google_hotword_clg:system/usr/srec/en-US/google_hotword_clg:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/google_hotword_logistic:system/usr/srec/en-US/google_hotword_logistic:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/grammar.config:system/usr/srec/en-US/grammar.config:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/hmmsyms:system/usr/srec/en-US/hmmsyms:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/hotword_symbols:system/usr/srec/en-US/hotword_symbols:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/lintrans_model:system/usr/srec/en-US/lintrans_model:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/metadata:system/usr/srec/en-US/metadata:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/norm_fst:system/usr/srec/en-US/norm_fst:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/normalizer:system/usr/srec/en-US/normalizer:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/offensive_word_normalizer:system/usr/srec/en-US/offensive_word_normalizer:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/phonelist:system/usr/srec/en-US/phonelist:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/rescoring_lm:system/usr/srec/en-US/rescoring_lm:google \
    vendor/aospplus/mako/proprietary/system/usr/srec/en-US/symbols:system/usr/srec/en-US/symbols:google

#GVendorFaceLock
PRODUCT_COPY_FILES += \
    vendor/aospplus/mako/proprietary/system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32/full_model.bin:google \
    vendor/aospplus/mako/proprietary/system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32/full_model.bin:google \
    vendor/aospplus/mako/proprietary/system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-2/full_model.bin:google \
    vendor/aospplus/mako/proprietary/system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-r0-ri30.4a-v24/full_model.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-r0-ri30.4a-v24/full_model.bin:google \
    vendor/aospplus/mako/proprietary/system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rn30-ri30.5-v24/full_model.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rn30-ri30.5-v24/full_model.bin:google \
    vendor/aospplus/mako/proprietary/system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rp30-ri30.5-v24/full_model.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rp30-ri30.5-v24/full_model.bin:google \
    vendor/aospplus/mako/proprietary/system/vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N/full_model.bin:system/vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N/full_model.bin:google

# ICU library configuration (Unicode and Globalization)
PRODUCT_COPY_FILES += \
    vendor/aospplus/mako/proprietary/system/usr/icu/icudt48l.dat:system/usr/icu/icudt48l.dat:google

# Timezone info
PRODUCT_COPY_FILES += \
    vendor/aospplus/mako/proprietary/system/usr/share/zoneinfo/zoneinfo.dat:system/usr/share/zoneinfo/zoneinfo.dat:google \
    vendor/aospplus/mako/proprietary/system/usr/share/zoneinfo/zoneinfo.idx:system/usr/share/zoneinfo/zoneinfo.idx:google \
    vendor/aospplus/mako/proprietary/system/usr/share/zoneinfo/zoneinfo.version:system/usr/share/zoneinfo/zoneinfo.version:google

# Media files
PRODUCT_COPY_FILES += \
    vendor/aospplus/mako/proprietary/system/media/audio/ringtones/RobotsforEveryone.ogg:system/media/audio/ringtones/RobotsforEveryone.ogg:google \
    vendor/aospplus/mako/proprietary/system/media/audio/ringtones/SpagnolaOrchestration.ogg:system/media/audio/ringtones/SpagnolaOrchestration.ogg:google \
    vendor/aospplus/mako/proprietary/system/media/LMprec_508.emd:system/media/LMprec_508.emd:google \
    vendor/aospplus/mako/proprietary/system/media/PFFprec_600.emd:system/media/PFFprec_600.emd:google \
    vendor/aospplus/mako/proprietary/system/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4:google \
    vendor/aospplus/mako/proprietary/system/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4:google \
    vendor/aospplus/mako/proprietary/system/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4:google \
    vendor/aospplus/mako/proprietary/system/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4:google

# FaceLock build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.facelock.black_timeout=1250 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=1000 \
    ro.facelock.use_intro_anim=true
