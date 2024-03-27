#### Download (get the latest version from devops portal)
```
sudo curl -O https://vstsagentpackage.azureedge.net/agent/3.234.0/vsts-agent-linux-x64-3.234.0.tar.gz
```
#### Unpack
```
sudo mkdir devopsagent
sudo chown -R azadmin devopsagent
sudo chmod -R u+rX devopsagent
cd devopsagent
sudo tar zxvf ../vsts-agent-linux-x64-3.234.0.tar.gz
```
#### Install
```
./config.sh --unattended --url https://dev.azure.com/ssgse --auth pat --token 7msuypoeawbuelzpihadh3a --pool vm-labb --agent vmdocker01 --acceptTeeEula --work _work
sudo ./svc.sh install
sudo ./svc.sh start
```
#### Only run once
```
./run.sh
```
#### Remove
```
./config.sh remove --unattended --url https://dev.azure.com/ssgse --auth pat --token 7msuypoeawbuelz
```
