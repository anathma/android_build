#
# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_POLICY := android.policy_phone
PRODUCT_PROPERTY_OVERRIDES :=

PRODUCT_PACKAGES := \
	Calculator \
	Camera \
	DeskClock \
	Development \
	Email \
	Exchange \
	Gallery \
	Music \
	Mms \
	Phone \
	SoftKeyboard \
	SystemUI \
	Launcher2 \
	DrmProvider \
	Fallback \
	Settings \
	SdkSetup \
	CustomLocale \
	sqlite3 \
	LatinIME \
	CertInstaller \
	LiveWallpapersPicker \
	ApiDemos \
	GestureBuilder \
	QuickSearchBox \
	WidgetPreview \
	monkeyrunner \
	guavalib \
	jsr305lib \
	jython \
	jsilver \
	librs_jni \
	ConnectivityTest \
	GpsLocationTest \
	CalendarProvider \
	Calendar


# Host tools that are parts of the SDK.
# See development/build/sdk.atree
PRODUCT_PACKAGES += \
	adb \
	dmtracedump \
	etc1tool \
	hprof-conv \
	mksdcard \
	emulator \
	bios.bin \
	vgabios-cirrus.bin \
	ddms \
	hierarchyviewer \
	draw9patch \
	layoutopt \
	traceview \
	android \
	dexdump \
	lint \
	monkeyrunner

# Native host Java libraries that are parts of the SDK.
# See development/build/sdk.atree
PRODUCT_PACKAGES += \
	androidprefs \
	sdkstats \
	archquery \
	ddms \
	ddmlib \
	ddmuilib \
	draw9patch \
	hierarchyviewer \
	layoutopt \
	uix \
	traceview \
	anttasks \
	sdklib \
	sdkuilib \
	sdkmanager \
	swtmenubar \
	swing-worker-1.1 \
	groovy-all-1.7.0 \
	commons-compress-1.0 \
	emmalib \
	jcommon-1.0.12 \
	jfreechart-1.0.9 \
	jfreechart-1.0.9-swt \
	org.eclipse.core.commands_3.4.0.I20080509-2000 \
	org.eclipse.equinox.common_3.4.0.v20080421-2006 \
	org.eclipse.jface_3.4.2.M20090107-0800 \
	osgi \
	layoutlib \
	lint \
	monkeyrunner \
	guavalib \
	jsr305lib \
	jython \
	ddmlib-tests \
	ninepatch-tests \
	common-tests \
	sdklib-tests \
	sdkuilib-tests \
	layoutlib-tests

# audio libraries.
PRODUCT_PACKAGES += \
	audio.primary.goldfish \
	audio_policy.default

PRODUCT_PACKAGE_OVERLAYS := development/sdk_overlay

PRODUCT_COPY_FILES := \
	system/core/rootdir/etc/vold.fstab:system/etc/vold.fstab \
	frameworks/base/data/sounds/effects/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
	frameworks/base/data/sounds/effects/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
	frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml

$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/keyboards/keyboards.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)

# Overrides
PRODUCT_BRAND := generic
PRODUCT_NAME := sdk
PRODUCT_DEVICE := generic

# locale + densities. en_US is both first and in alphabetical order to
# ensure this is the default locale.
PRODUCT_LOCALES = \
	en_US \
	mdpi \

# include available languages for TTS in the system image
-include external/svox/pico/lang/PicoLangEnUsInSystem.mk
