#### Fastboot 

##### Drivers:
https://www.getdroidtips.com/android-usb-drivers-for-windows-and-mac/#Download-Android-USB-Drivers-for-Windows-and-Mac

check which architecture your device has
```
adb shell getprop ro.product.cpu.abi
```
```
adb reboot bootloader
fastboot devices
fastboot flash vbmeta vbmeta.img
fastboot erase system
fastboot flash system system.img
fastboot reboot

```
