#!/bin/bash

#Export timezone
export TZ=Asia/Jakarta

#Export Configuration
export romcuy="Miku-UI"
export dcdnm="earth"
export botuname="XeroMz_Bot"
export id_ch="-1002180155741"
export id_owner="5360718339"
export btoken="7423727351:AAGecG0HFRNhwiLt1Cul1Mri-AIJ-exqkp8"
export lmfests="https://github.com/XeroMz69/manifest-lokal.git"
export blmfests="miku"
export admfests="https://github.com/Miku-UI/manifesto"
export badmfests="Udon_v2"
export jembod="make diva"

#Notify with Telegram Function
stm(){
    local message="$1"
    local cid="$2"
    curl -s -X POST https://api.telegram.org/bot$btoken/sendMessage -d chat_id=$cid -d text="$message" -d disable_web_page_preview="True" -d parse_mode="MarkdownV2"
}

#Send Log with Telegram
stf(){
    local caption="$1"
    local cid="$2"
    curl -s -L -F document=@"$(pwd)/hiya.txt" -F parse_mode="MarkdownV2" -F caption="$caption" -X POST https://api.telegram.org/bot$btoken/sendDocument -F chat_id=$cid
}

#TG Start
echo "================= Start ================="
stm "*_\=\=\=\=\=\= Crave Build Initiated \=\=\=\=\=_*%0A**>*Date: _$(date "+%A, %d %B %Y")_*%0A>*Time: _$(date "+%H:%M:%S %Z")_*%0A>*ROM: _$(echo $romcuy)_*%0A>*Device: _$(echo $dcdnm)_*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A>*See Progress [Here]($(echo $botuname).t.me) \(_Only Owner_\)*%0A%0A*_Script By @ZxhCarkecor_*%0A*_Don't Forget to [Donate](https://saweria.co/zxhcarkecor)_*" "$id_owner" > /dev/null
stm "*_\=\=\=\=\=\= Crave Build Initiated \=\=\=\=\=_*%0A**>*Date: _$(date "+%A, %d %B %Y")_*%0A>*Time: _$(date "+%H:%M:%S %Z")_*%0A>*ROM: _$(echo $romcuy)_*%0A>*Device: _$(echo $dcdnm)_*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A>*See Progress [Here]($(echo $botuname).t.me) \(_Only Owner_\)*%0A%0A*_Script By @ZxhCarkecor_*%0A*_Don't Forget to [Donate](https://saweria.co/zxhcarkecor)_*" "$id_ch" > /dev/null

# Remove some stuffs
stm "*_\=\=\=\=\=\= Crave Build Running \=\=\=\=\=_*%0A**>*Date: _$(date "+%A, %d %B %Y")_*%0A>*Time: _$(date "+%H:%M:%S %Z")_*%0A>*ROM: _$(echo $romcuy)_*%0A>*Device: _$(echo $dcdnm)_*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A**>*\=\=\=\=\=\=\=\= Progress \=\=\=\=\=\=\=\=%0A>▣ Script Executed%0A>◈ Removing Stuffs%0A>▢ Clone local\_manifests%0A>▢ Initializing Repo%0A>▢ Syncing Repositories%0A>▢ Adding Exports%0A>▢ Setup Build Environment%0A>▢ Building ROM \| Done*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A>_Log Will Send After Build Finished_%0A%0A*_Script By @ZxhCarkecor_*%0A*_Don't Forget to [Donate](https://saweria.co/zxhcarkecor)_*" "$id_owner" > /dev/null
rm -rf .repo/local_manifests
rm -rf  vendor/xiaomi
rm -rf  kernel/xiaomi
rm -rf  device/xiaomi
rm -rf  device/mediatek
rm -rf  hardware/mediatek
echo "===================================="
echo "Removing stuffs done"
echo "===================================="

# Clone local_manifests repository
stm "*_\=\=\=\=\=\= Crave Build Running \=\=\=\=\=_*%0A**>*Date: _$(date "+%A, %d %B %Y")_*%0A>*Time: _$(date "+%H:%M:%S %Z")_*%0A>*ROM: _$(echo $romcuy)_*%0A>*Device: _$(echo $dcdnm)_*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A**>*\=\=\=\=\=\=\=\= Progress \=\=\=\=\=\=\=\=%0A>▣ Script Executed%0A>▣ Removing Stuffs%0A>◈ Clone local\_manifests%0A>▢ Initializing Repo%0A>▢ Syncing Repositories%0A>▢ Adding Exports%0A>▢ Setup Build Environment%0A>▢ Building ROM \| Done*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A>_Log Will Send After Build Finished_%0A%0A*_Script By @ZxhCarkecor_*%0A*_Don't Forget to [Donate](https://saweria.co/zxhcarkecor)_*" "$id_owner" > /dev/null
git clone https://github.com/XeroMz69/manifest-lokal.git -b miku .repo/local_manifests
echo "===================================="
echo "Cloning local_manifests done"
echo "===================================="

# Initialize repo
stm "*_\=\=\=\=\=\= Crave Build Running \=\=\=\=\=_*%0A**>*Date: _$(date "+%A, %d %B %Y")_*%0A>*Time: _$(date "+%H:%M:%S %Z")_*%0A>*ROM: _$(echo $romcuy)_*%0A>*Device: _$(echo $dcdnm)_*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A**>*\=\=\=\=\=\=\=\= Progress \=\=\=\=\=\=\=\=%0A>▣ Script Executed%0A>▣ Removing Stuffs%0A>▣ Clone local\_manifests%0A>◈ Initializing Repo%0A>▢ Syncing Repositories%0A>▢ Adding Exports%0A>▢ Setup Build Environment%0A>▢ Building ROM \| Done*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A>_Log Will Send After Build Finished_%0A%0A*_Script By @ZxhCarkecor_*%0A*_Don't Forget to [Donate](https://saweria.co/zxhcarkecor)_*" "$id_owner" > /dev/null
repo init -u https://github.com/Miku-UI/manifesto -b Udon_v2
echo "===================================="
echo "Initializing repo done"
echo "===================================="

# Sync the repositories
stm "*_\=\=\=\=\=\= Crave Build Running \=\=\=\=\=_*%0A**>*Date: _$(date "+%A, %d %B %Y")_*%0A>*Time: _$(date "+%H:%M:%S %Z")_*%0A>*ROM: _$(echo $romcuy)_*%0A>*Device: _$(echo $dcdnm)_*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A**>*\=\=\=\=\=\=\=\= Progress \=\=\=\=\=\=\=\=%0A>▣ Script Executed%0A>▣ Removing Stuffs%0A>▣ Clone local\_manifests%0A>▣ Initializing Repo%0A>◈ Syncing Repositories%0A>▢ Adding Exports%0A>▢ Setup Build Environment%0A>▢ Building ROM \| Done*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A>_Log Will Send After Build Finished_%0A%0A*_Script By @ZxhCarkecor_*%0A*_Don't Forget to [Donate](https://saweria.co/zxhcarkecor)_*" "$id_owner" > /dev/null
/opt/crave/resync.sh || repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
echo "===================================="
echo "Syncing the repositories done"
echo "===================================="

# Exports
stm "*_\=\=\=\=\=\= Crave Build Running \=\=\=\=\=_*%0A**>*Date: _$(date "+%A, %d %B %Y")_*%0A>*Time: _$(date "+%H:%M:%S %Z")_*%0A>*ROM: _$(echo $romcuy)_*%0A>*Device: _$(echo $dcdnm)_*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A**>*\=\=\=\=\=\=\=\= Progress \=\=\=\=\=\=\=\=%0A>▣ Script Executed%0A>▣ Removing Stuffs%0A>▣ Clone local\_manifests%0A>▣ Initializing Repo%0A>▣ Syncing Repositories%0A>◈ Adding Exports%0A>▢ Setup Build Environment%0A>▢ Building ROM \| Done*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A>_Log Will Send After Build Finished_%0A%0A*_Script By @ZxhCarkecor_*%0A*_Don't Forget to [Donate](https://saweria.co/zxhcarkecor)_*" "$id_owner" > /dev/null
export BUILD_USERNAME=Xero
export BUILD_HOSTNAME=crave
echo "===================================="
echo "Adding exports done"
echo "===================================="

# Set up build environment
stm "*_\=\=\=\=\=\= Crave Build Running \=\=\=\=\=_*%0A**>*Date: _$(date "+%A, %d %B %Y")_*%0A>*Time: _$(date "+%H:%M:%S %Z")_*%0A>*ROM: _$(echo $romcuy)_*%0A>*Device: _$(echo $dcdnm)_*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A**>*\=\=\=\=\=\=\=\= Progress \=\=\=\=\=\=\=\=%0A>▣ Script Executed%0A>▣ Removing Stuffs%0A>▣ Clone local\_manifests%0A>▣ Initializing Repo%0A>▣ Syncing Repositories%0A>▣ Adding Exports%0A>◈ Setup Build Environment%0A>▢ Building ROM \| Done*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A>_Log Will Send After Build Finished_%0A%0A*_Script By @ZxhCarkecor_*%0A*_Don't Forget to [Donate](https://saweria.co/zxhcarkecor)_*" "$id_owner" > /dev/null
source build/envsetup.sh
echo "===================================="
echo "Setting up build environment done"
echo "===================================="

#Building Rom
stm "*_\=\=\=\=\=\= Crave Build Running \=\=\=\=\=_*%0A**>*Date: _$(date "+%A, %d %B %Y")_*%0A>*Time: _$(date "+%H:%M:%S %Z")_*%0A>*ROM: _$(echo $romcuy)_*%0A>*Device: _$(echo $dcdnm)_*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A**>*\=\=\=\=\=\=\=\= Progress \=\=\=\=\=\=\=\=%0A>▣ Script Executed%0A>▣ Removing Stuffs%0A>▣ Clone local\_manifests%0A>▣ Initializing Repo%0A>▣ Syncing Repositories%0A>▣ Adding Exports%0A>▣ Setup Build Environment%0A>◈ Building ROM \| Done*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A>_Log Will Send After Build Finished_%0A%0A*_Script By @ZxhCarkecor_*%0A*_Don't Forget to [Donate](https://saweria.co/zxhcarkecor)_*" "$id_owner" > /dev/null
echo "===================================="
echo "Building Rom..."
echo "===================================="
# brunch $(echo $dcdnm)-userdebug || brunch $(echo $dcdnm) || breakfast $(echo $dcdnm)-userdebug || lunch afterlife_$(echo $dcdnm)-ap2a-userdebug && mka bacon || breakfast $(echo $dcdnm)
lunch miku_earth-userdebug-UNOFFICIAL
$(echo $jembod)
stm "*_\=\=\=\=\= Crave Build Finished \=\=\=\=\=_*%0A**>*Date: _$(date "+%A, %d %B %Y")_*%0A>*Time: _$(date "+%H:%M:%S %Z")_*%0A>*ROM: _$(echo $romcuy)_*%0A>*Device: _$(echo $dcdnm)_*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A**>*\=\=\=\=\=\=\=\= Progress \=\=\=\=\=\=\=\=%0A>▣ Script Executed%0A>▣ Removing Stuffs%0A>▣ Clone local\_manifests%0A>▣ Initializing Repo%0A>▣ Syncing Repositories%0A>▣ Adding Exports%0A>▣ Setup Build Environment%0A>▣ Building ROM*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A>_Log Will Send After Build Finished_%0A%0A*_Script By @ZxhCarkecor_*%0A*_Don't Forget to [Donate](https://saweria.co/zxhcarkecor)_*" "$id_owner" > /dev/null
stm "*_\=\=\=\=\= Crave Build Finished \=\=\=\=\=_*%0A**>*Date: _$(date "+%A, %d %B %Y")_*%0A>*Time: _$(date "+%H:%M:%S %Z")_*%0A>*ROM: _$(echo $romcuy)_*%0A>*Device: _$(echo $dcdnm)_*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A**>*\=\=\=\=\=\=\=\= Progress \=\=\=\=\=\=\=\=%0A>▣ Script Executed%0A>▣ Removing Stuffs%0A>▣ Clone local\_manifests%0A>▣ Initializing Repo%0A>▣ Syncing Repositories%0A>▣ Adding Exports%0A>▣ Setup Build Environment%0A>▣ Building ROM*||%0A*_\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=\=_*%0A>*See Log [Here]($(echo $botuname).t.me) \(_Only Owner_\)*%0A%0A*_Script By @ZxhCarkecor_*%0A*_Don't Forget to [Donate](https://saweria.co/zxhcarkecor)_*" "$id_ch" > /dev/null

#Send Log
echo "================= Done ================="
stf "*Mana Log nya\?
Ini Log nya\!

Where The Log\?
Here NIGGA\!*" "$id_owner" > /dev/null
