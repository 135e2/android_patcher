#!/bin/bash

ROOT_DIR=$(pwd)
GIT_BASEURL="https://github.com/berkeley-pie"

echo "Applying patches..."

# android_system_sepolicy
echo -e "\n=> android_system_sepolicy"
cd $ROOT_DIR/system/sepolicy
git reset --hard HEAD
git fetch $GIT_BASEURL/android_system_sepolicy
git cherry-pick b4e2e94db86bb135cd06253ace2664db3f5a85ef --strategy-option theirs

# android_frameworks_base 
echo -e "\n=> android_frameworks_base"
cd $ROOT_DIR/frameworks/base
git reset --hard HEAD
git fetch $GIT_BASEURL/android_frameworks_base
git cherry-pick a461f8aa40fb4f51a59eb2f96f22050dd2f976a9 --strategy-option theirs

# android_frameworks_av 
echo -e "\n=> android_frameworks_av"
cd $ROOT_DIR/frameworks/av
git reset --hard HEAD
git fetch $GIT_BASEURL/android_frameworks_av
git cherry-pick 5f1d2ff95839fdf527b4c7308e8cfc26d442b6b8 --strategy-option theirs

# android_frameworks_native 
echo -e "\n=> android_frameworks_native"
cd $ROOT_DIR/frameworks/native 
git reset --hard HEAD
git fetch $GIT_BASEURL/android_frameworks_native
git cherry-pick cab63cf62a7464185a2ef2ca5b7a5fbeb4a4faf5 --strategy-option theirs
git cherry-pick 211613227afc4796dfc80ace060f7fe66ef97549 --strategy-option theirs
git cherry-pick 54713f5c76d9cef734462e72f5e4724b4bcb57ec --strategy-option theirs
git cherry-pick 796958dc5f390e09bf18f7d10860e214982b899f --strategy-option theirs
git cherry-pick abd86859d2a06f919e82685f2a3e1eb59ca56614 --strategy-option theirs

# android_frameworks_opt_telephony 
echo -e "\n=> android_frameworks_opt_telephony"
cd $ROOT_DIR/frameworks/opt/telephony
git reset --hard HEAD
git fetch $GIT_BASEURL/android_frameworks_opt_telephony
git cherry-pick b3b335f7e4b4e86ff9013235f1d6c2b39c06162f --strategy-option theirs
git cherry-pick 3c2c67b56b7001899edc3ab42b570231d83380e7 --strategy-option theirs
git cherry-pick bd78ff945ad8bde9177e0dc6d2a9d47b59e96568 --strategy-option theirs
git cherry-pick 58f5ad577b98b560fe6c84d882604ccc346c61e1 --strategy-option theirs

# android_packages_services_Telephony
echo -e "\n=> android_packages_services_Telephony"
cd $ROOT_DIR/packages/services/Telephony
git reset --hard HEAD
git fetch $GIT_BASEURL/android_packages_services_Telephony
git cherry-pick 241038b61b65d2b7a531a8417786585063528056 --strategy-option theirs

cd $ROOT_DIR
echo -e "\nDone!"
