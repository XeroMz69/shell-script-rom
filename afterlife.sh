#!/bin/bash
rm -rf .repo/local_manifests
rm -rf frameworks/base
rm -rf device/lineage/sepolicy
rm -rf vendor/lineage
repo init --depth=1 -u https://github.com/AfterlifeOS/android_manifest.git -b 14 --git-lfs
git clone https://github.com/XeroMz69/manifest-lokal.git -b afterlife .repo/local_manifests
/opt/crave/resync.sh
#git clone https://github.com/LineageOS/android_prebuilts_clang_kernel_linux-x86_clang-r416183b.git prebuilts/prebuilts/clang/host/linux-x86/clang-los
# rm -rf hardware/qcom hardware/qcom-caf vendor/qcom
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export KBUILD_USERNAME=Xero
export KBUILD_HOSTNAME=crave
export TZ=Asia/Jakarta
source build/envsetup.sh
. build/envsetup.sh
goafterlife earth
