#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
INSTALL_SECURITY_PATCH_VERSION=INSTALLVAR

SUPPORTED_PATCH_VERSION="20200805"
SECURITY_PATCH_VERSION=$(getprop ro.build.version.security_patch | tr -d "-")

rm -f $MODDIR/disable

if [ $SUPPORTED_PATCH_VERSION -lt $SECURITY_PATCH_VERSION ] || [ $INSTALL_SECURITY_PATCH_VERSION -lt $SECURITY_PATCH_VERSION ]; then
 touch $MODDIR/disable
fi