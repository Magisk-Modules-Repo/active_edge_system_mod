# Active Edge Mod for Pixel devices

![Edge Sense Plus](https://img.xda-cdn.com/MES6opinXpBdhGjoqHaaP6YuOow=/http%3A%2F%2Fi.imgur.com%2FZscjQRD.png)

Replaces the SystemUIGoogle.apk that hosts the Elmyra (Active Edge) service with a modified version.
It hooks into the squeeze events and forwards it to the app Edge Sense Plus which provides tons of different actions to choose.
You will also have a long squeeze and a double squeeze gesture, as well as seperate squeeze gestures based on what position the device is,
like flat on the table or in landscape mode.
<br/>
<br/>

### Requirements

A pixel device with a squeeze sensor in the frame, so all pixel devices starting with the Pixel 2. The original Pixel is not supported.
After installing the Magisk Module you need to install the Edge Sense Plus app from the playstore.

<br/>
<br/>

### More information and place for questions and support in the appropriate xda threads:

#### [XDA Pixel 2 thread](https://forum.xda-developers.com/pixel-2/themes/root-custom-active-edge-actions-edge-t3732368)
#### [XDA Pixel 2 XL thread](https://forum.xda-developers.com/pixel-2-xl/themes/root-custom-active-edge-actions-edge-t3732383)
#### [XDA Pixel 3 thread](https://forum.xda-developers.com/pixel-3/themes/app-21st-oct-edge-sense-plus-1-10-0-t3856787)
#### [XDA Pixel 3 XL thread](https://forum.xda-developers.com/pixel-3-xl/themes/app-21st-oct-edge-sense-plus-1-10-0-t3856788)
#### [XDA Pixel 3a thread](https://forum.xda-developers.com/pixel-3a/themes/tweet-app-edge-sense-plus-customize-t3928923)
#### [XDA Pixel 3a XL thread](https://forum.xda-developers.com/pixel-3a-xl/themes/app-edge-sense-plus-customize-active-t3928921)
#### [XDA Pixel 4 thread](https://forum.xda-developers.com/pixel-4/themes/app-edge-sense-plus-customize-active-t3996259)
#### [XDA Pixel 4 XL thread](https://forum.xda-developers.com/pixel-4-xl/themes/app-edge-sense-plus-customize-active-t3996257)
<br/>

### Edge Sense Sense Plus
#### Google suspended the app from the playstore, no idea if it will come back. So for now it will be hosted on my GitHub.

#### [![Edge Sense Plus via GithHub]([img]https://i.imgur.com/C6S6AJ1.png[/img])](https://github.com/Magisk-Modules-Repo/active_edge_system_mod/raw/Files/EdgeSensePlus.apk)

### Changelog
* __v63__
 *  April Patch Level compatibility
* __v62__
 *  Fixed Pixel 2/XL
* __v61__
 *  March Patch Level compatibility
* __v60__
 * Fixed bonito and blueline
* __v59__
 * February Patch Level compatibility
* __v58__
 * Fixd another bug
* __v57__
 * January Patch Level compatibility
 * Fixed regression from during the template update
* __v56__
  * Updated to the new Magisk module template
* __v55_
  * December Patch Level compatibility
* __v54_
  * Added MD5 Sum check to prevent corrupted files from bad downloads to be flashed
* __v53_
  * November Patch Level compatibility
* __v52_
  * Pixel 4 support added
* __v51_
  * Moved files from master and download correct SystemUIGoogle.apk (device, release and path version) from the Files branch.
  * Credits to Zackptg5 for the curl lib and Skittles for the idea and updated script.
* __v50_
  * October Patch Level compatibility
* __v50_
  * Android 10 support
* __v41__
  * Fixed Pixel 3a XL (bonito)
* __v40__
  * July Patch Level compatibility
* __v39__
  * June Patch Level compatibility
* __v37__
  * Added Pixel 3a compatibility (sargo and bonito)
* __v36__
  * May Patch Level compatibility
* __v35__
  * Magisk module will now always just support the last five security patch levels. Compatible versions for older patch levels can be flashed from [GitHub](https://github.com/Magisk-Modules-Repo/active_edge_system_mod/releases)