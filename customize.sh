ui_print "______________________________"
ui_print " "
ui_print "Installing Active Edge Module"

DEVICE=`getprop ro.product.device`
RELEASE=`getprop ro.build.version.release`
CODENAME=`getprop ro.build.version.codename`
SECURITY_PATCH_VERSION=`getprop ro.build.version.security_patch`
ui_print " "


ui_print "Device: "$DEVICE
ui_print "Android version: "$RELEASE
ui_print "Android codename: "$CODENAME
ui_print "Security patch version: "$SECURITY_PATCH_VERSION
ui_print " "

if [ $DEVICE != "walleye" ] && [ $DEVICE != "taimen" ] && [ $DEVICE != "crosshatch" ] && [ $DEVICE != "blueline" ] && [ $DEVICE != "bonito" ] && [ $DEVICE != "sargo" ] && [ $DEVICE != "coral" ] && [ $DEVICE != "flame" ]; then
  abort " => Device '"$DEVICE"' is not supported"
fi

if [ $RELEASE != "9" ] && [ $RELEASE != "Q" ] && [ $RELEASE != "10" ]; then
  abort "   => Android version '"$RELEASE"' is not supported"
fi

if [ $CODENAME == "R" ]; then
  abort "Under construction!"
fi

RELEASEFOLDER=$RELEASE

if [ $RELEASE != "8.1.0" ]; then
  RELEASEFOLDER=$RELEASE/$SECURITY_PATCH_VERSION
fi

chmod 0755 $MODPATH/curl

APK_PATH=$RELEASEFOLDER/$DEVICE/priv-app/SystemUIGoogle/SystemUIGoogle.apk

TARGETPATH=$MODPATH/system/priv-app/SystemUIGoogle

if [ $RELEASE == "Q" ] || [ $RELEASE == "10" ]; then
  TARGETPATH=$MODPATH/system/product/priv-app/SystemUIGoogle
fi

if [ $CODENAME == "R" ]; then
  TARGETPATH=$MODPATH/system/system_ext/priv-app/SystemUIGoogle
  APK_PATH=$CODENAME/$SECURITY_PATCH_VERSION/$DEVICE/priv-app/SystemUIGoogle/SystemUIGoogle.apk
fi

URL=https://github.com/Magisk-Modules-Repo/active_edge_system_mod/raw/Files/$APK_PATH
ui_print "Downloading SystemUIGoogle.apk for your device..."

mkdir -p $TARGETPATH

$MODPATH/curl -k -L $URL -o $TARGETPATH/SystemUIGoogle.apk

if [ ! -f $TARGETPATH/SystemUIGoogle.apk ]; then
  ui_print "Download FAILED: "$URL
  ui_print ""
  ui_print "Possible reasons:"
  ui_print " => Github servers are sometimes unreliable. Check the changelog if the current security patch is supported. If that is the case try to install the module again till the download succeeds"
  abort " => The update with security patch version '"$SECURITY_PATCH_VERSION"' is not supported yet. In that case please wait for the module to be updated."
fi	

$MODPATH/curl -k -L $URL.md5 -o $TMPDIR/SystemUIGoogle.apk.md5
read -r RMD5 < $TMPDIR/SystemUIGoogle.apk.md5

LMD5="$(md5sum "$TARGETPATH/SystemUIGoogle.apk" | cut -d ' ' -f 1)"

ui_print "Local MD5: "$LMD5
ui_print "REMOTE MD5: "$RMD5

if [ ! "$LMD5" == "$RMD5" ]; then
  abort "MD5 of downloaded file does not match the remote file! Please try to flash the module again. Aborting."
fi

sed -i "s/INSTALLVAR/$(getprop ro.build.version.security_patch | tr -d "-")/" $MODPATH/post-fs-data.sh
ui_print " "
ui_print "SUCCESSFULLY INSTALLED."
ui_print " "