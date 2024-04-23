#### Download (get the latest version from devops portal)
```sql
sudo curl -O https://vstsagentpackage.azureedge.net/agent/3.234.0/vsts-agent-linux-x64-3.234.0.tar.gz
```
#### Unpack
```sql
sudo mkdir devopsagent
sudo chown -R azadmin devopsagent
sudo chmod -R u+rX devopsagent
cd devopsagent
sudo tar zxvf ../vsts-agent-linux-x64-3.234.0.tar.gz
```
#### Install
```sql
./config.sh --unattended --url https://dev.azure.com/ssgse --auth pat --token 7msuypoeawbuelzpihadh3a --pool vm-labb --agent vmdocker01 --acceptTeeEula --work _work
sudo ./svc.sh install
sudo ./svc.sh start
```
#### Only run once
```sql
./run.sh
```
#### Remove
```sql
./config.sh remove --unattended --url https://dev.azure.com/ssgse --auth pat --token 7msuypoeawbuelz
```
# Summery
PIM: Owner & Application Admin
```powershell
cd .\Documents\
git clone https://github.com/actions/runner-images.git
cd .\runner-images\
Import-Module .\helpers\GenerateResourcesAndImage.ps1

.\helpers\GenerateResourcesAndImage.ps1; GenerateResourcesAndImage `
-SubscriptionId 'd7909d2e-2a55-4c2f-b005-d700d0bc3e66' `
-ResourceGroupName 'rg-infra-image-prod-01' `
-AzureLocation 'westeurope' `
-ImageType 'Ubuntu2204' `
-ManagedImageName ("image-agent-linux-$(Get-Date -Format "yyyy-MM-dd")").ToLower()
```
