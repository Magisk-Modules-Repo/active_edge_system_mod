# Pixel 2/XL and Pixel 3/XL - Active Edge Magisk Module for Edge Sense Plus

![Edge Sense Plus](https://img.xda-cdn.com/MES6opinXpBdhGjoqHaaP6YuOow=/http%3A%2F%2Fi.imgur.com%2FZscjQRD.png)

Replaces the SystemUIGoogle.apk that hosts the Elmyra (Active Edge) service with a modified version.
It hooks into the squeeze events and forwards it to the app Edge Sense Plus which provides tons of different actions to choose.
You will also have a long squeeze and a double squeeze gesture, as well as seperate squeeze gestures based on what position the device is,
like flat on the table or in landscape mode.
<br/>
<br/>

### Requirements

Android Oreo 8.1 or Android P
	
### Attention

Ensure have a current TWRP backup ready.
The module replaces the SystemUIGoogle.apk that could lead to a non booting device.
You can always also just run the MagiskUninstaller and flash Magisk again afterwards to get out of a bootloop.
<br/>
<br/>

### More information and place for questions and support in the appropriate xda threads:

#### [XDA Pixel 2 thread](https://forum.xda-developers.com/pixel-2/themes/root-custom-active-edge-actions-edge-t3732368)
#### [XDA Pixel 2 XL thread](https://forum.xda-developers.com/pixel-2-xl/themes/root-custom-active-edge-actions-edge-t3732383)
<br/>

### Edge Sense Sense Plus
#### [![Edge Sense Plus on Google Play](https://img.xda-cdn.com/Quid2yAsEr-W-fb5sfKfE66Ag_w=/http%3A%2F%2Fi.imgur.com%2F9WHaPVR.png)](https://play.google.com/store/apps/details?id=eu.duong.edgesenseplus&hl=en)


### Changelog
* __v20__
  * Added back Oreo compatibility.
*
* __v19__
  * Pixel November Update compatibility
  * Removed compatibility for Oreo and Pie Preview to shrink module size - You can download older releases from [here](https://github.com/Magisk-Modules-Repo/active_edge_system_mod/releases)
* __v18__
  * Pixel 3/XL compatibility
* __v17__
  * Fixed an issue where no short squeeze was possible after a long squeeze
  * Fixed freezing squeeze animation
  * Fixed 2nd haptic feedback not happening on a long squeeze
* __v15__
  * Long Squeeze is back on Android Pie!
  * Decreased Squeeze cooldown time to improve double squeeze experience
* __v14__
  * Android Pie support
* __v13__
  * Android P DP4 support
* __v12__
  * Decreased native squeeze cooldown time to improve double squeeze behavior
* __v11__
  * Android P DP3 support
* __v10__
  * Android P DP2 support
* __v9__
  * Magisk 16.3 compatibility
* __v8/P__
  * Android P support
* __v9__
  * Magisk 16.3 compatibility
* __v8/P__
  * Android P support
* __v8__
  * Fixed unnecessary wakelocks
* __v7__
  * Fixed long squeeze triggering again after a long squeeze
* __v6__
  * Fixed long squeeze gesture not respecting squeeze sensitivity
* __v5__
  *  Fixed broken long squeeze
* __v4__
  * Override Active Edge setting to allow squeeze gestures while screen is off.
* __v3__
  * Added long squeeze interval
* __v2__
  * Fixed Google Assistant not working when screen is off and locked
* __v1__
  * Initial release
