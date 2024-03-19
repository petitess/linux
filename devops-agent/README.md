#### Download
```
sudo curl -O https://vstsagentpackage.azureedge.net/agent/3.234.0/vsts-agent-linux-x64-3.234.0.tar.gz
```
#### Unpack
```
sudo mkdir devopsagent
cd devopsagent
tar zxvf ../vsts-agent-linux-x64-3.234.0.tar.gz
```
#### Install
```
./config.sh --unattende --url https://dev.azure.com/ssgse --auth pat --token 7msuypoeawbuelzpihadh3a --pool vm-labb --agent vmdocker01 --acceptTeeEula --work _work
./run.sh
sudo ./svc.sh install
sudo ./svc.sh start
```

#### Remove
```
./config.sh remove --unattende --url https://dev.azure.com/ssgse --auth pat --token 7msuypoeawbuelz
```
