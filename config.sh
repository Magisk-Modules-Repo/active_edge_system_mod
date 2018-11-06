##########################################################################################
#
# Magisk Module Template Config Script
# by topjohnwu
#
##########################################################################################
##########################################################################################
#
# Instructions:
#
# 1. Place your files into system folder (delete the placeholder file)
# 2. Fill in your module's info into module.prop
# 3. Configure the settings in this file (config.sh)
# 4. If you need boot scripts, add them into common/post-fs-data.sh or common/service.sh
# 5. Add your additional or modified system properties into common/system.prop
#
##########################################################################################

##########################################################################################
# Configs
##########################################################################################

# Set to true if you need to enable Magic Mount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=false

##########################################################################################
# Installation Message
##########################################################################################

# Set what you want to show when installing your mod

print_modname() {
  ui_print "*******************************"
  ui_print "    Active Edge System Mod     "
  ui_print "*******************************"
}

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# Check the documentations for more info about how Magic Mount works, and why you need this

# This is an example
REPLACE="
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  # Only some special files require specific permissions
  # The default permissions should be good enough for most cases

  # Here are some examples for the set_perm functions:

  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm_recursive  $MODPATH/system/lib       0       0       0755            0644

  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  $MODPATH/system/bin/app_process32   0       2000    0755         u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0       2000    0755         u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0       0       0644

  # The following is default permissions, DO NOT remove
  set_perm_recursive  $MODPATH  0  0  0755  0644
}

##########################################################################################
# Custom Functions
##########################################################################################

# This file (config.sh) will be sourced by the main flash script after util_functions.sh
# If you need custom logic, please add them here as functions, and call these functions in
# update-binary. Refrain from adding code directly into update-binary, as it will make it
# difficult for you to migrate your modules to newer template versions.
# Make update-binary as clean as possible, try to only do function calls in it.

install_module() {

	ui_print "______________________________"
	ui_print " "
	ui_print "Installing Active Edge Module"
	
	DEVICE=`getprop ro.product.device`
	RELEASE=`getprop ro.build.version.release`
	#PREVIEW_VERSION=`getprop ro.build.version.preview_sdk`
	#SECURITY_PATCH_VERSION=`getprop ro.build.version.security_patch`
	ui_print " "

	
	ui_print " Performing compatibility check"
	ui_print " "
	ui_print "  Device is: "$DEVICE
	ui_print "  Android version is: "$RELEASE
	ui_print " "
	
	if [ $DEVICE != "walleye" ] && [ $DEVICE != "taimen" ] && [ $DEVICE != "crosshatch" ] && [ $DEVICE != "blueline" ]; then
		abort "   => Device '"$DEVICE"' is not supported"
	fi
	
	if [ $RELEASE != "9" ]; then
		abort "   => Android version '"$RELEASE"' is not supported"
	fi
	
	ui_print "   => Your device is compatible. Continue with installation."
	ui_print " "

	
	#if [ $RELEASE == "P" ]; then
	#	RELEASE=$RELEASE/$PREVIEW_VERSION
	#fi
	
	#if [ $RELEASE == "9" ]; then
	# 	RELEASE=$RELEASE/$SECURITY_PATCH_VERSION
	#fi
	
	unzip -o "$ZIP" $RELEASE'/'$DEVICE'/*' -d $INSTALLER 2>/dev/null
	
	ui_print " "
	ui_print " Extracting module files for '"$DEVICE"' and Android Version '"$RELEASE"'"
	ui_print " "
	
	APK_PATH=$INSTALLER/$RELEASE/$DEVICE/priv-app/SystemUIGoogle/SystemUIGoogle.apk
	
	ui_print $APK_PATH
	
	mkdir -p $MODPATH/system/priv-app/SystemUIGoogle 2>/dev/null
	cp -af $APK_PATH $MODPATH/system/priv-app/SystemUIGoogle/SystemUIGoogle.apk

	
	

  
}

