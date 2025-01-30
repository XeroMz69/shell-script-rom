#!/bin/bash

# Clean up old manifests and repos
rm -rf .repo/local_manifests
rm -rf frameworks/base
rm -rf device/lineage/sepolicy
rm -rf vendor/lineage
rm -rf packages/overlays/Lineage
rm -rf packages/apps/Launcher3

# Initialize repo
repo init -u https://github.com/Miku-UI/manifesto -b Vampire_v2
git clone https://github.com/XeroMz69/manifest-lokal.git -b vampire .repo/local_manifests

# Sync repos
/opt/crave/resync.sh

# Export environment variables
export TARGET_RELEASE=ap3a
export BUILD_USERNAME=Xero
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export KBUILD_USERNAME=Xero
export KBUILD_HOSTNAME=crave
export TZ=Asia/Jakarta

# Set up the build environment
source build/envsetup.sh

# Lunch
lunch miku_earth-ap3a-userdebug

# Clean and build
make installclean
make diva
