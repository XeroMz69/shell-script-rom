#!/bin/bash
rm -rf .repo/local_manifests/
rm -rf device/lineage/sepolicy
git clone https://github.com/XeroMz69/manifest-lokal.git -b derpfest .repo/local_manifests
/opt/crave/resync.sh
export BUILD_USERNAME=Xero
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export KBUILD_USERNAME=Xero
export KBUILD_HOSTNAME=crave
export TZ=Asia/Jakarta
source build/envsetup.sh
. build/envsetup.sh
lunch derp_earth-user
make installclean
mka derp