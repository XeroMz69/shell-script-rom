#!/bin/bash

# Clean up old manifests and repos
rm -rf .repo/local_manifests
rm -rf frameworks/base
rm -rf packages/apps/Launcher3

# Initialize repo
repo init -u https://github.com/XeroMz69/manifesto -b Vampire_v2
git clone https://github.com/XeroMz69/manifest-lokal.git -b vampire .repo/local_manifests
git clone https://github.com/LineageOS/android_prebuilts_clang_kernel_linux-x86_clang-r416183b prebuilts/clang/host/linux-x86/clang-los --depth 1

# Sync repos
/opt/crave/resync.sh

# Export environment variables
export TARGET_RELEASE=ap4a
export BUILD_USERNAME=Xero
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export KBUILD_USERNAME=Xero
export KBUILD_HOSTNAME=crave
export TZ=Asia/Jakarta

# Set up the build environment
source build/envsetup.sh

# Lunch
lunch miku_earth-ap4a-userdebug

# Clean and build
make installclean
make diva
