#### Fastboot 

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
https://www.android-x86.org
