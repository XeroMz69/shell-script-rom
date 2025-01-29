#!/bin/bash

WORKDIR="$(pwd)"

# Clean up old manifests and repos
rm -rf .repo/local_manifests
rm -rf frameworks/base

# Initialize repo
repo init --depth=1 -u https://github.com/ProjectBlaze/manifest -b 15
git clone https://github.com/XeroMz69/manifest-lokal.git -b pb-a14 .repo/local_manifests

# Sync repos
/opt/crave/resync.sh

# Some fixes
rm -rf $WORKDIR/vendor/xiaomi
git clone https://github.com/mt6768-dev/proprietary_vendor_xiaomi_earth.git $WORKDIR/vendor/xiaomi/earth --depth 1

# Export environment variables
export BUILD_USERNAME=Xero
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export KBUILD_USERNAME=Xero
export KBUILD_HOSTNAME=crave
export TZ=Asia/Jakarta

# Set up the build environment
source build/envsetup.sh
lunch blaze_earth-ap3a-userdebug

# Clean and build
make installclean
make bacon
