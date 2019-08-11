#!/usr/bin/env bash

# Example: Change bundle name of an iOS app for non-production
if [ "$APPCENTER_BRANCH" != "master" ];
then
    plutil -replace CFBundleName -string "\$(PRODUCT_NAME) Beta" $APPCENTER_SOURCE_DIRECTORY/ios/HelloAppcenter/Info.plist
fi

echo "Changing ios bundle identifier" plutil -replace CFBundleIdentifier -string "com.smartapptech.helloappcenter" $APPCENTER_SOURCE_DIRECTORY/ios/HelloAppcenter/Info.plist