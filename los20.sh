#!/bin/bash

CLANG_DLINK="https://github.com/XeroMz69/Clang/releases/download/Xero-Clang-20250526.1/Xero-Clang-21.0.0git-20250526.tar.gz"
WORKDIR="$(pwd)"

# Remove some old shit
rm -rf .repo/local_manifests/
rm -rf device/xiaomi/earth

# Syncing the Lineage repo
repo init -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs
git clone https://github.com/XeroMz69/manifest-lokal.git -b lineage-20 .repo/local_manifests
/opt/crave/resync.sh

# Some fixes
rm -rf $WORKDIR/vendor/xiaomi
git clone https://github.com/mt6768-dev/proprietary_vendor_xiaomi_earth.git -b lineage-21 $WORKDIR/vendor/xiaomi/earth --depth 1
cd $WORKDIR
# rm -rf $WORKDIR/prebuilts/clang/host/linux-x86/clang-xero
# mkdir -p $WORKDIR/prebuilts/clang/host/linux-x86/clang-xero
# wget $CLANG_DLINK
# tar -C $WORKDIR/prebuilts/clang/host/linux-x86/clang-los/ -zxvf Xero-Clang-21.0.0git-20250526.tar.gz
# rm -rf Xero-Clang-21.0.0git-20250526.tar.gz
# rm -rf $WORKDIR/packages/apps/FMRadio
# git clone https://github.com/LineageOS/android_packages_apps_FMRadio.git $WORKDIR/packages/apps/FMRadio

# Some flags
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export BUILD_USERNAME=Xero
export KBUILD_USERNAME=Xero
export BUILD_HOSTNAME=crave
export KBUILD_HOSTNAME=crave
export TZ=Asia/Jakarta

# Setup the environment
. build/envsetup.sh

# LineageOS 20
# make installclean
brunch earth
