#!/bin/bash

CLANG_DLINK="https://github.com/XeroMz69/Clang/releases/download/Xero-Clang-20.0.0git-20250113/Xero-Clang-20.0.0git-20250113.tar.gz"
WORKDIR="$(pwd)"

# Clean up old manifests and repos
rm -rf .repo/local_manifests
rm -rf frameworks/base
rm -rf packages/apps/Launcher3

# Initialize repo
repo init -u https://github.com/XeroMz69/manifesto -b Vampire_v2
git clone https://github.com/XeroMz69/manifest-lokal.git -b vampire .repo/local_manifests

# Sync repos
/opt/crave/resync.sh

# Some fixes
mkdir -p $WORKDIR/prebuilts/prebuilts/clang/host/linux-x86/clang-los
wget $CLANG_DLINK
tar -C $WORKDIR/prebuilts/clang/host/linux-x86/clang-los/ -zxvf Xero-Clang-20.0.0git-20250113.tar.gz
rm -rf Xero-Clang-20.0.0git-20250113.tar.gz

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
