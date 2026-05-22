#### Edit files
```bash
ssh azadmin@1.1.1.1 
cd /usr/lib/zabbix/alertscripts
sudo touch grafana_irm.sh
sudo nano grafana_irm.sh
sudo cat grafana_irm.sh
```
#### HTTP request
```
curl localhost -usebasicparsing
```
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
#### Type '<!DOCTYPE' is not known on line 1 in source list /etc/apt/sources.list.d/microsoft-prod.list
```
sudo rm -r /etc/apt/sources.list.d/microsoft-prod.list
ls /etc/apt/sources.list.d
```
