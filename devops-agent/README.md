#### Download
```
sudo curl -O https://vstsagentpackage.azureedge.net/agent/3.234.0/vsts-agent-linux-x64-3.234.0.tar.gz
```
### Unpack
```
mkdir devopsagent
cd devopsagent
tar zxvf ../vsts-agent-linux-x64-3.234.0.tar.gz
```
#### Install
```
./config.sh --unattende --url https://dev.azure.com/ssgse --auth pat --token 7msuypoeawbuelzpihadh3agjpohf7kax3zru3vubef5xrmrer2q --pool vm-labb --agent vmdocker01 --acceptTeeEula --work _work


```
#### Remove
```
./config.cmd remove --auth "PAT" --token "XXXXsjqaej64k6txaskrxl37zujx75plrkvy52xq"
```
